package org.xutils.config;

import org.xutils.DbManager;
import org.xutils.common.util.LogUtil;
import org.xutils.p344ex.DbException;
/* loaded from: classes2-dex2jar.jar:org/xutils/config/DbConfigs.class */
public enum DbConfigs {
    HTTP(new DbManager.DaoConfig().setDbName("xUtils_http_cache.db").setDbVersion(2).setDbOpenListener(new DbManager.DbOpenListener() { // from class: org.xutils.config.DbConfigs.b
        @Override // org.xutils.DbManager.DbOpenListener
        public void onDbOpened(DbManager dbManager) {
            dbManager.getDatabase().enableWriteAheadLogging();
        }
    }).setDbUpgradeListener(new DbManager.DbUpgradeListener() { // from class: org.xutils.config.DbConfigs.a
        @Override // org.xutils.DbManager.DbUpgradeListener
        public void onUpgrade(DbManager dbManager, int i, int i2) {
            try {
                dbManager.dropDb();
            } catch (DbException e) {
                LogUtil.m258e(e.getMessage(), e);
            }
        }
    })),
    COOKIE(new DbManager.DaoConfig().setDbName("xUtils_http_cookie.db").setDbVersion(1).setDbOpenListener(new DbManager.DbOpenListener() { // from class: org.xutils.config.DbConfigs.d
        @Override // org.xutils.DbManager.DbOpenListener
        public void onDbOpened(DbManager dbManager) {
            dbManager.getDatabase().enableWriteAheadLogging();
        }
    }).setDbUpgradeListener(new DbManager.DbUpgradeListener() { // from class: org.xutils.config.DbConfigs.c
        @Override // org.xutils.DbManager.DbUpgradeListener
        public void onUpgrade(DbManager dbManager, int i, int i2) {
            try {
                dbManager.dropDb();
            } catch (DbException e) {
                LogUtil.m258e(e.getMessage(), e);
            }
        }
    }));
    
    private DbManager.DaoConfig config;

    DbConfigs(DbManager.DaoConfig daoConfig) {
        this.config = daoConfig;
    }

    public DbManager.DaoConfig getConfig() {
        return this.config;
    }
}
