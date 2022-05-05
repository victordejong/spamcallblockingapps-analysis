package com.mixpanel.android.mpmetrics;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import com.apptentive.android.sdk.util.Constants;
import com.mixpanel.android.util.MPLog;
import com.privacystar.core.data.sqlite.p008db.DatabaseHelperConstants;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/mpmetrics/MPDbAdapter.class */
class MPDbAdapter {
    private static final String DATABASE_NAME = "mixpanel";
    private static final int DATABASE_VERSION = 5;
    public static final int DB_OUT_OF_MEMORY_ERROR = -2;
    public static final int DB_UNDEFINED_CODE = -3;
    public static final int DB_UPDATE_ERROR = -1;
    private static final String EVENTS_TIME_INDEX;
    public static final String KEY_CREATED_AT = "created_at";
    public static final String KEY_DATA = "data";
    public static final String KEY_TOKEN = "token";
    private static final String LOGTAG = "MixpanelAPI.Database";
    private final MPDatabaseHelper mDb;
    private static final Map<Context, MPDbAdapter> sInstances = new HashMap();
    public static final String KEY_AUTOMATIC_DATA = "automatic_data";
    private static final String CREATE_EVENTS_TABLE = DatabaseHelperConstants.CREATE_TABLE + Table.EVENTS.getName() + " (_id INTEGER PRIMARY KEY AUTOINCREMENT, data STRING NOT NULL, created_at INTEGER NOT NULL, " + KEY_AUTOMATIC_DATA + " INTEGER DEFAULT 0, token STRING NOT NULL DEFAULT '')";
    private static final String CREATE_PEOPLE_TABLE = DatabaseHelperConstants.CREATE_TABLE + Table.PEOPLE.getName() + " (_id INTEGER PRIMARY KEY AUTOINCREMENT, data STRING NOT NULL, created_at INTEGER NOT NULL, " + KEY_AUTOMATIC_DATA + " INTEGER DEFAULT 0, token STRING NOT NULL DEFAULT '')";
    private static final String PEOPLE_TIME_INDEX = "CREATE INDEX IF NOT EXISTS time_idx ON " + Table.PEOPLE.getName() + " (created_at);";

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/mpmetrics/MPDbAdapter$MPDatabaseHelper.class */
    public static class MPDatabaseHelper extends SQLiteOpenHelper {
        private final MPConfig mConfig;
        private final File mDatabaseFile;

        MPDatabaseHelper(Context context, String str) {
            super(context, str, (SQLiteDatabase.CursorFactory) null, 5);
            this.mDatabaseFile = context.getDatabasePath(str);
            this.mConfig = MPConfig.getInstance(context);
        }

        private void migrateTableFrom4To5(SQLiteDatabase sQLiteDatabase) {
            int i;
            String string;
            int i2;
            String string2;
            sQLiteDatabase.execSQL("ALTER TABLE " + Table.EVENTS.getName() + " ADD COLUMN " + MPDbAdapter.KEY_AUTOMATIC_DATA + " INTEGER DEFAULT 0");
            sQLiteDatabase.execSQL("ALTER TABLE " + Table.PEOPLE.getName() + " ADD COLUMN " + MPDbAdapter.KEY_AUTOMATIC_DATA + " INTEGER DEFAULT 0");
            sQLiteDatabase.execSQL("ALTER TABLE " + Table.EVENTS.getName() + " ADD COLUMN token STRING NOT NULL DEFAULT ''");
            sQLiteDatabase.execSQL("ALTER TABLE " + Table.PEOPLE.getName() + " ADD COLUMN token STRING NOT NULL DEFAULT ''");
            StringBuilder sb = new StringBuilder();
            sb.append("SELECT * FROM ");
            sb.append(Table.EVENTS.getName());
            Cursor rawQuery = sQLiteDatabase.rawQuery(sb.toString(), null);
            while (rawQuery.moveToNext()) {
                try {
                    string2 = new JSONObject(rawQuery.getString(rawQuery.getColumnIndex("data"))).getJSONObject("properties").getString("token");
                    i2 = rawQuery.getInt(rawQuery.getColumnIndex("_id"));
                } catch (JSONException e) {
                    i2 = 0;
                }
                try {
                    sQLiteDatabase.execSQL("UPDATE " + Table.EVENTS.getName() + " SET token = '" + string2 + "' WHERE _id = " + i2);
                } catch (JSONException e2) {
                    String name = Table.EVENTS.getName();
                    sQLiteDatabase.delete(name, "_id = " + i2, null);
                }
            }
            Cursor rawQuery2 = sQLiteDatabase.rawQuery("SELECT * FROM " + Table.PEOPLE.getName(), null);
            while (rawQuery2.moveToNext()) {
                try {
                    string = new JSONObject(rawQuery2.getString(rawQuery2.getColumnIndex("data"))).getString("$token");
                    i = rawQuery2.getInt(rawQuery2.getColumnIndex("_id"));
                } catch (JSONException e3) {
                    i = 0;
                }
                try {
                    sQLiteDatabase.execSQL("UPDATE " + Table.PEOPLE.getName() + " SET token = '" + string + "' WHERE _id = " + i);
                } catch (JSONException e4) {
                    String name2 = Table.PEOPLE.getName();
                    sQLiteDatabase.delete(name2, "_id = " + i, null);
                }
            }
        }

        public boolean belowMemThreshold() {
            boolean z = true;
            if (!this.mDatabaseFile.exists()) {
                return true;
            }
            if (Math.max(this.mDatabaseFile.getUsableSpace(), this.mConfig.getMinimumDatabaseLimit()) < this.mDatabaseFile.length()) {
                z = false;
            }
            return z;
        }

        public void deleteDatabase() {
            close();
            this.mDatabaseFile.delete();
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            MPLog.m307v(MPDbAdapter.LOGTAG, "Creating a new Mixpanel events DB");
            sQLiteDatabase.execSQL(MPDbAdapter.CREATE_EVENTS_TABLE);
            sQLiteDatabase.execSQL(MPDbAdapter.CREATE_PEOPLE_TABLE);
            sQLiteDatabase.execSQL(MPDbAdapter.EVENTS_TIME_INDEX);
            sQLiteDatabase.execSQL(MPDbAdapter.PEOPLE_TIME_INDEX);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            MPLog.m307v(MPDbAdapter.LOGTAG, "Upgrading app, replacing Mixpanel events DB");
            if (i2 == 5) {
                migrateTableFrom4To5(sQLiteDatabase);
                return;
            }
            sQLiteDatabase.execSQL(DatabaseHelperConstants.DROP_TABLE_EXISTS + Table.EVENTS.getName());
            sQLiteDatabase.execSQL(DatabaseHelperConstants.DROP_TABLE_EXISTS + Table.PEOPLE.getName());
            sQLiteDatabase.execSQL(MPDbAdapter.CREATE_EVENTS_TABLE);
            sQLiteDatabase.execSQL(MPDbAdapter.CREATE_PEOPLE_TABLE);
            sQLiteDatabase.execSQL(MPDbAdapter.EVENTS_TIME_INDEX);
            sQLiteDatabase.execSQL(MPDbAdapter.PEOPLE_TIME_INDEX);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/mpmetrics/MPDbAdapter$Table.class */
    public enum Table {
        EVENTS(Constants.PREF_KEY_RATING_EVENTS),
        PEOPLE("people");
        
        private final String mTableName;

        Table(String str) {
            this.mTableName = str;
        }

        public String getName() {
            return this.mTableName;
        }
    }

    static {
        StringBuilder sb = new StringBuilder();
        sb.append("CREATE INDEX IF NOT EXISTS time_idx ON ");
        sb.append(Table.EVENTS.getName());
        sb.append(" (");
        sb.append("created_at");
        sb.append(");");
        EVENTS_TIME_INDEX = sb.toString();
    }

    public MPDbAdapter(Context context) {
        this(context, DATABASE_NAME);
    }

    public MPDbAdapter(Context context, String str) {
        this.mDb = new MPDatabaseHelper(context, str);
    }

    private void cleanupAutomaticEvents(Table table, String str) {
        String name = table.getName();
        try {
            try {
                SQLiteDatabase writableDatabase = this.mDb.getWritableDatabase();
                writableDatabase.delete(name, "automatic_data = 1 AND token = '" + str + "'", null);
            } catch (SQLiteException e) {
                MPLog.m310e(LOGTAG, "Could not clean automatic Mixpanel records from " + name + ". Re-initializing database.", e);
                this.mDb.deleteDatabase();
            }
        } finally {
            this.mDb.close();
        }
    }

    public static MPDbAdapter getInstance(Context context) {
        MPDbAdapter mPDbAdapter;
        synchronized (sInstances) {
            Context applicationContext = context.getApplicationContext();
            if (!sInstances.containsKey(applicationContext)) {
                mPDbAdapter = new MPDbAdapter(applicationContext);
                sInstances.put(applicationContext, mPDbAdapter);
            } else {
                mPDbAdapter = sInstances.get(applicationContext);
            }
        }
        return mPDbAdapter;
    }

    /* JADX WARN: Removed duplicated region for block: B:76:0x0171  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int addJSON(org.json.JSONObject r6, java.lang.String r7, com.mixpanel.android.mpmetrics.MPDbAdapter.Table r8, boolean r9) {
        /*
            Method dump skipped, instructions count: 384
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mixpanel.android.mpmetrics.MPDbAdapter.addJSON(org.json.JSONObject, java.lang.String, com.mixpanel.android.mpmetrics.MPDbAdapter$Table, boolean):int");
    }

    protected boolean belowMemThreshold() {
        return this.mDb.belowMemThreshold();
    }

    public void cleanupAutomaticEvents(String str) {
        synchronized (this) {
            cleanupAutomaticEvents(Table.EVENTS, str);
            cleanupAutomaticEvents(Table.PEOPLE, str);
        }
    }

    public void cleanupEvents(long j, Table table) {
        String name = table.getName();
        try {
            try {
                SQLiteDatabase writableDatabase = this.mDb.getWritableDatabase();
                writableDatabase.delete(name, "created_at <= " + j, null);
            } catch (SQLiteException e) {
                MPLog.m310e(LOGTAG, "Could not clean timed-out Mixpanel records from " + name + ". Re-initializing database.", e);
                this.mDb.deleteDatabase();
            }
        } finally {
            this.mDb.close();
        }
    }

    public void cleanupEvents(String str, Table table, String str2, boolean z) {
        String name = table.getName();
        try {
            try {
                SQLiteDatabase writableDatabase = this.mDb.getWritableDatabase();
                StringBuffer stringBuffer = new StringBuffer("_id <= " + str + " AND token = '" + str2 + "'");
                if (!z) {
                    stringBuffer.append(" AND automatic_data=0");
                }
                writableDatabase.delete(name, stringBuffer.toString(), null);
            } catch (SQLiteException e) {
                MPLog.m310e(LOGTAG, "Could not clean sent Mixpanel records from " + name + ". Re-initializing database.", e);
                this.mDb.deleteDatabase();
            }
        } finally {
            this.mDb.close();
        }
    }

    public void deleteDB() {
        this.mDb.deleteDatabase();
    }

    /* JADX WARN: Removed duplicated region for block: B:80:0x02f7  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0301  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String[] generateDataString(com.mixpanel.android.mpmetrics.MPDbAdapter.Table r6, java.lang.String r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 783
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mixpanel.android.mpmetrics.MPDbAdapter.generateDataString(com.mixpanel.android.mpmetrics.MPDbAdapter$Table, java.lang.String, boolean):java.lang.String[]");
    }

    public File getDatabaseFile() {
        return this.mDb.mDatabaseFile;
    }
}
