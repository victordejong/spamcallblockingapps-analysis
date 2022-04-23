package com.privacystar.core.data.sqlite;

import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.google.gson.Gson;
import com.google.gson.stream.JsonReader;
import com.privacystar.core.PSApplication;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/sqlite/SQLiteMigration.class */
public class SQLiteMigration {
    public static final String DATABASE_NAME = "PrivacyStarDatabase";
    public static final int SCHEMA_VERSION = 13;
    private static volatile SQLiteMigration instance;
    private static final Object lock = new Object();
    private DatabaseHelper databaseHelper;
    private LegacyDatabaseHelper legacyDatabaseHelper;
    private int legacyVersionNumber = 0;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/sqlite/SQLiteMigration$DatabaseHelper.class */
    public class DatabaseHelper extends SQLiteOpenHelper {
        public DatabaseHelper(Context context) {
            super(context, SQLiteMigration.DATABASE_NAME, (SQLiteDatabase.CursorFactory) null, 14);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onConfigure(SQLiteDatabase sQLiteDatabase) {
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            SQLiteMigration.this.onCreate(sQLiteDatabase);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            Timber.m37d("SQLite legacy database upgrading from version %d to %d.", Integer.valueOf(SQLiteMigration.this.legacyVersionNumber), Integer.valueOf(i2));
            SQLiteMigration.this.onUpgrade(sQLiteDatabase, SQLiteMigration.this.legacyVersionNumber, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/sqlite/SQLiteMigration$LegacyDatabaseHelper.class */
    public class LegacyDatabaseHelper extends SQLiteOpenHelper {
        public LegacyDatabaseHelper(Context context) {
            super(context, SQLiteMigration.DATABASE_NAME, (SQLiteDatabase.CursorFactory) null, 14);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        }
    }

    private SQLiteMigration() {
    }

    private void cacheLegacyVersionNumber() {
        this.legacyVersionNumber = getDatabaseVersion();
        Timber.m37d("Caching legacy database version number: [%d].", Integer.valueOf(this.legacyVersionNumber));
    }

    public static boolean doesSQLiteDatabaseExist(Context context) {
        return doesSQLiteDatabaseExistImpl(context, DATABASE_NAME);
    }

    private static boolean doesSQLiteDatabaseExistImpl(Context context, String str) {
        return context.getDatabasePath(str).exists();
    }

    private void executeSQL(Context context, String str) {
        synchronized (this) {
            executeSQL(str, getDatabase(context));
        }
    }

    private void executeSQL(String str, SQLiteDatabase sQLiteDatabase) {
        synchronized (this) {
            sQLiteDatabase.beginTransaction();
            try {
                sQLiteDatabase.execSQL(str);
                sQLiteDatabase.setTransactionSuccessful();
            } catch (SQLException e) {
                Timber.m32e(e, "Error executing SQL.", new Object[0]);
            }
            sQLiteDatabase.endTransaction();
        }
    }

    public static SQLiteMigration from() {
        SQLiteMigration sQLiteMigration = instance;
        SQLiteMigration sQLiteMigration2 = sQLiteMigration;
        if (sQLiteMigration == null) {
            synchronized (lock) {
                SQLiteMigration sQLiteMigration3 = instance;
                sQLiteMigration2 = sQLiteMigration3;
                if (sQLiteMigration3 == null) {
                    sQLiteMigration2 = new SQLiteMigration();
                    instance = sQLiteMigration2;
                }
            }
        }
        return sQLiteMigration2;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(8:2|(6:90|3|4|91|5|6)|(9:94|7|8|9|(4:11|12|13|(1:15))|16|(3:18|(1:20)|21)|22|(1:24))|88|68|71|72|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x008d, code lost:
        if (r10.isClosed() == false) goto L_0x0090;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0173, code lost:
        r10 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0174, code lost:
        timber.log.Timber.m29i(r10, "Couldn't parse int out of version number [%s].", r12);
        r14 = 0;
     */
    /* JADX WARN: Not initialized variable reg: 12, insn: 0x018e: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r12 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:74:0x018a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int getDatabaseVersion() {
        /*
            Method dump skipped, instructions count: 453
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.data.sqlite.SQLiteMigration.getDatabaseVersion():int");
    }

    private JSONObject queryToJSON(Cursor cursor) throws JSONException {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            String[] columnNames = cursor.getColumnNames();
            cursor.moveToFirst();
            if (cursor.getCount() > 0) {
                do {
                    JSONObject jSONObject2 = new JSONObject();
                    for (String str : columnNames) {
                        jSONObject2.put(str, cursor.getString(cursor.getColumnIndex(str)));
                    }
                    jSONArray.put(jSONObject2);
                } while (cursor.moveToNext());
                cursor.close();
                jSONObject.put("results", jSONArray);
            } else {
                cursor.close();
                jSONObject.put("results", jSONArray);
            }
        }
        return jSONObject;
    }

    private boolean tableExistsImpl(Context context, String str) {
        Throwable th;
        Exception e;
        synchronized (this) {
            Cursor cursor = null;
            Cursor cursor2 = null;
            try {
                try {
                    cursor = getDatabase(context).rawQuery("select DISTINCT tbl_name from sqlite_master where tbl_name = ?;", new String[]{str});
                    boolean z = false;
                    if (cursor != null) {
                        try {
                            z = false;
                            if (cursor.getCount() > 0) {
                                z = true;
                            }
                        } catch (Exception e2) {
                            e = e2;
                            cursor2 = cursor;
                            Timber.m32e(e, "", new Object[0]);
                            if (cursor != null) {
                                cursor.close();
                            }
                            return true;
                        } catch (Throwable th2) {
                            th = th2;
                            cursor2 = cursor;
                            if (cursor2 != null) {
                                cursor2.close();
                            }
                            throw th;
                        }
                    }
                    if (cursor != null) {
                        cursor.close();
                    }
                    return z;
                } catch (Exception e3) {
                    e = e3;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    public void deleteDatabase(Context context) {
        getDatabaseHelper(context).close();
        Timber.m37d("Database was%s deleted.", context.deleteDatabase(DATABASE_NAME) ? "" : " not");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SQLiteDatabase getDatabase(Context context) {
        return getDatabaseHelper(context).getWritableDatabase();
    }

    public DatabaseHelper getDatabaseHelper(Context context) {
        DatabaseHelper databaseHelper;
        synchronized (this) {
            if (this.databaseHelper == null) {
                cacheLegacyVersionNumber();
                setDatabaseHelper(new DatabaseHelper(context));
            }
            databaseHelper = this.databaseHelper;
        }
        return databaseHelper;
    }

    protected SQLiteDatabase getLegacyDatabase(Context context) {
        return getLegacyDatabaseHelper(context).getWritableDatabase();
    }

    public LegacyDatabaseHelper getLegacyDatabaseHelper(Context context) {
        LegacyDatabaseHelper legacyDatabaseHelper;
        synchronized (this) {
            if (this.legacyDatabaseHelper == null) {
                setLegacyDatabaseHelper(new LegacyDatabaseHelper(context));
            }
            legacyDatabaseHelper = this.legacyDatabaseHelper;
        }
        return legacyDatabaseHelper;
    }

    protected void onCreate(SQLiteDatabase sQLiteDatabase) {
    }

    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        Timber.m37d("Upgrading SQLite from %d to %d.", Integer.valueOf(i), Integer.valueOf(i2));
        PSApplication pSApplication = (PSApplication) PSApplication.context();
        SQLiteDatabase sQLiteDatabase2 = sQLiteDatabase;
        if (sQLiteDatabase == null) {
            sQLiteDatabase2 = getDatabase(pSApplication);
        }
        try {
            Gson gson = new Gson();
            for (int i3 = i; i3 <= i2; i3++) {
                JsonReader jsonReader = new JsonReader(new InputStreamReader(pSApplication.getAssets().open(String.format(Locale.US, "sqlite/version_%05d.json", Integer.valueOf(i3))), "UTF-8"));
                ArrayList<MigrationStatement> arrayList = new ArrayList();
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    arrayList.add(gson.fromJson(jsonReader, MigrationStatement.class));
                }
                for (MigrationStatement migrationStatement : arrayList) {
                    Timber.m28v("Executing migration statement %s:%n%s", migrationStatement.getTransactionId(), migrationStatement.getSqlStatement());
                    executeSQL(migrationStatement.getSqlStatement(), sQLiteDatabase2);
                }
            }
        } catch (IOException e) {
            Timber.m32e(e, "Error while updating legacy SQLite database from version %d to %d.", Integer.valueOf(i), Integer.valueOf(i2));
        }
    }

    public void setDatabaseHelper(DatabaseHelper databaseHelper) {
        this.databaseHelper = databaseHelper;
    }

    public void setLegacyDatabaseHelper(LegacyDatabaseHelper legacyDatabaseHelper) {
        this.legacyDatabaseHelper = legacyDatabaseHelper;
    }

    public boolean tableExists(Context context, String str) {
        boolean tableExistsImpl;
        synchronized (this) {
            tableExistsImpl = tableExistsImpl(context, str);
        }
        return tableExistsImpl;
    }

    public void testFullUpgrade(Context context) {
        Timber.m37d("Testing full SQLite Migration.", new Object[0]);
        deleteDatabase(context);
        onUpgrade(getDatabase(context), 1, 13);
    }
}
