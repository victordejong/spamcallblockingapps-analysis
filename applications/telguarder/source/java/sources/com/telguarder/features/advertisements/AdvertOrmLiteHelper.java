package com.telguarder.features.advertisements;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import com.j256.ormlite.android.apptools.OrmLiteSqliteOpenHelper;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.table.TableUtils;
import com.telguarder.helpers.log.Logger;
import java.sql.SQLException;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/advertisements/AdvertOrmLiteHelper.class */
public class AdvertOrmLiteHelper extends OrmLiteSqliteOpenHelper {
    public static final String DATABASE_NAME = "adverts.sqlite";
    private static final int DATABASE_VERSION = 7;
    public static final String FIELD_ADVERT_BACKUP_NETWORK1 = "adBackup1";
    public static final String FIELD_ADVERT_BACKUP_NETWORK2 = "adBackup2";
    public static final String FIELD_ADVERT_BACKUP_NETWORK3 = "adBackup3";
    public static final String FIELD_ADVERT_BACKUP_NETWORK4 = "adBackup4";
    public static final String FIELD_ADVERT_BACKUP_NETWORK5 = "adBackup5";
    public static final String FIELD_ADVERT_BACKUP_NETWORK6 = "adBackup6";
    public static final String FIELD_ADVERT_BACKUP_NETWORK7 = "adBackup7";
    public static final String FIELD_ADVERT_BACKUP_NETWORK8 = "adBackup8";
    public static final String FIELD_ADVERT_BACKUP_NETWORK9 = "adBackup9";
    public static final String FIELD_ADVERT_DESCRIPTION = "description";
    public static final String FIELD_ADVERT_NETWORK = "advertNetwork";
    public static final String FIELD_ADVERT_NETWORK_NAME = "name";
    public static final String FIELD_ADVERT_PLACE = "place";
    public static final String FIELD_ADVERT_PLACEMENT_ID = "placementId";
    public static final String FIELD_CREATED_AT = "createdAt";

    public AdvertOrmLiteHelper(Context context) {
        super(context, DATABASE_NAME, null, 7);
    }

    public Dao<Advert, Integer> getAdvertDao() throws SQLException {
        return getDao(Advert.class);
    }

    @Override // com.j256.ormlite.android.apptools.OrmLiteSqliteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase, ConnectionSource connectionSource) {
        try {
            TableUtils.createTable(connectionSource, AdvertNetwork.class);
            TableUtils.createTable(connectionSource, Advert.class);
        } catch (SQLException e) {
            Logger.error(e.getMessage());
        }
    }

    @Override // com.j256.ormlite.android.apptools.OrmLiteSqliteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, ConnectionSource connectionSource, int i, int i2) {
        try {
            TableUtils.dropTable(connectionSource, AdvertNetwork.class, true);
            TableUtils.dropTable(connectionSource, Advert.class, true);
            onCreate(sQLiteDatabase, connectionSource);
        } catch (SQLException e) {
            Logger.error(e.getMessage());
        }
    }
}
