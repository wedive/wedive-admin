PROD_SYNC_FOLDER = wedive-admin-sync

# Deploy npm dependence
deploy-npm:
	npm update;

# Deploy bower dependence
deploy-bower: deploy-npm
	./node_modules/.bin/bower update --allow-root;
	rm -rf app/bower_components;
	mv bower_components app;

# Sync prod 
sync-prod:
	 rsync -avh ./ ../${PROD_SYNC_FOLDER}/ --delete

# TODO deploy tag

# Start develop workspace
dev-start:
	./node_modules/.bin/gulp serve;

