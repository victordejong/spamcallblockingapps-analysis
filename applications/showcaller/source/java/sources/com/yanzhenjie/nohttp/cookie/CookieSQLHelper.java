package com.yanzhenjie.nohttp.cookie;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import com.yanzhenjie.nohttp.p320db.BasicSQLHelper;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/cookie/CookieSQLHelper.class */
class CookieSQLHelper extends BasicSQLHelper {
    static final String COMMENT = "comment";
    static final String COMMENT_URL = "comment_url";
    private static final String DB_COOKIE_NAME = "_nohttp_cookies_db.db";
    private static final int DB_COOKIE_VERSION = 2;
    static final String DISCARD = "discard";
    static final String DOMAIN = "domain";
    static final String EXPIRY = "expiry";
    static final String NAME = "name";
    static final String PATH = "path";
    static final String PORT_LIST = "port_list";
    static final String SECURE = "secure";
    private static final String SQL_CREATE_TABLE = "CREATE TABLE cookies_table(_id INTEGER PRIMARY KEY AUTOINCREMENT, uri TEXT, name TEXT, value TEXT, comment TEXT, comment_url TEXT, discard TEXT, domain TEXT, expiry INTEGER, path TEXT, port_list TEXT, secure TEXT, version INTEGER)";
    private static final String SQL_CREATE_UNIQUE_INDEX = "CREATE UNIQUE INDEX cookie_unique_index ON cookies_table(\"name\", \"domain\", \"path\")";
    private static final String SQL_DELETE_TABLE = "DROP TABLE  IF EXISTS cookies_table";
    static final String TABLE_NAME = "cookies_table";
    static final String URI = "uri";
    static final String VALUE = "value";
    static final String VERSION = "version";

    public CookieSQLHelper(Context context) {
        super(context, DB_COOKIE_NAME, null, 2);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.beginTransaction();
        try {
            sQLiteDatabase.execSQL(SQL_CREATE_TABLE);
            sQLiteDatabase.execSQL(SQL_CREATE_UNIQUE_INDEX);
            sQLiteDatabase.setTransactionSuccessful();
        } finally {
            sQLiteDatabase.endTransaction();
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        onUpgrade(sQLiteDatabase, i, i2);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        if (i2 != i) {
            sQLiteDatabase.beginTransaction();
            try {
                sQLiteDatabase.execSQL(SQL_DELETE_TABLE);
                sQLiteDatabase.execSQL(SQL_CREATE_TABLE);
                sQLiteDatabase.execSQL(SQL_CREATE_UNIQUE_INDEX);
                sQLiteDatabase.setTransactionSuccessful();
            } finally {
                sQLiteDatabase.endTransaction();
            }
        }
    }
}
