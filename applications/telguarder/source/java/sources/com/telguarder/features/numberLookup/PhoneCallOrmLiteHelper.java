package com.telguarder.features.numberLookup;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import com.j256.ormlite.android.apptools.OrmLiteSqliteOpenHelper;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.table.TableUtils;
import com.telguarder.helpers.log.Logger;
import java.sql.SQLException;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/numberLookup/PhoneCallOrmLiteHelper.class */
public class PhoneCallOrmLiteHelper extends OrmLiteSqliteOpenHelper {
    public static final String DATABASE_NAME = "phone_calls.sqlite";
    private static final int DATABASE_VERSION = 9;
    public static final String FIELD_ACTOR_ADDRESS = "address";
    public static final String FIELD_ACTOR_BIRTH_DATE = "birthDate";
    public static final String FIELD_ACTOR_EMAIL = "email";
    public static final String FIELD_ACTOR_ID = "actorId";
    public static final String FIELD_ACTOR_LOGO_URL = "logoUrl";
    public static final String FIELD_ACTOR_NAME = "name";
    public static final String FIELD_ACTOR_PHONE_NUMBER = "actorPhoneNumber";
    public static final String FIELD_ACTOR_TYPE = "actorType";
    public static final String FIELD_ACTOR_WEBSITE = "website";
    public static final String FIELD_CALLED_PHONE_NUMBER = "calledPhoneNumber";
    public static final String FIELD_DATE_TIME = "dateTimeInMillis";
    public static final String FIELD_INFO_PAGE_URL = "infoPageUrl";
    public static final String FIELD_LAST_UPDATE_DATE_TIME = "lastUpdateDateTimeInMillis";
    public static final String FIELD_PHONEBOOK_NUMBER = "phonebookNumber";
    public static final String FIELD_REGION_CODE = "regionCode";
    public static final String FIELD_SECURITY_LEVEL = "securityLevel";
    public static final String FIELD_SPAM_TYPE = "spamType";

    public PhoneCallOrmLiteHelper(Context context) {
        super(context, DATABASE_NAME, null, 9);
    }

    public Dao<PhoneEvent, Integer> getCallDao() throws SQLException {
        return getDao(PhoneEvent.class);
    }

    @Override // com.j256.ormlite.android.apptools.OrmLiteSqliteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase, ConnectionSource connectionSource) {
        try {
            TableUtils.createTable(connectionSource, PhoneEvent.class);
        } catch (SQLException e) {
            Logger.error(e.getMessage());
        }
    }

    @Override // com.j256.ormlite.android.apptools.OrmLiteSqliteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, ConnectionSource connectionSource, int i, int i2) {
        try {
            TableUtils.dropTable(connectionSource, PhoneEvent.class, true);
            onCreate(sQLiteDatabase, connectionSource);
        } catch (SQLException e) {
            Logger.error(e.getMessage());
        }
    }
}
