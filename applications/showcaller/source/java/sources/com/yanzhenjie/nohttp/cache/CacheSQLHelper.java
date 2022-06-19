package com.yanzhenjie.nohttp.cache;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import com.yanzhenjie.nohttp.p320db.BasicSQLHelper;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/cache/CacheSQLHelper.class */
class CacheSQLHelper extends BasicSQLHelper {
    static final String DATA = "data";
    private static final String DB_CACHE_NAME = "_nohttp_cache_db.db";
    private static final int DB_CACHE_VERSION = 3;
    static final String HEAD = "head";
    static final String KEY = "key";
    static final String LOCAL_EXPIRES = "local_expires";
    private static final String SQL_CREATE_TABLE = "CREATE TABLE cache_table(_id INTEGER PRIMARY KEY AUTOINCREMENT, key TEXT, head TEXT, data text, local_expires text)";
    private static final String SQL_CREATE_UNIQUE_INDEX = "CREATE UNIQUE INDEX cache_unique_index ON cache_table(\"key\")";
    private static final String SQL_DELETE_TABLE = "DROP TABLE IF EXISTS cache_table";
    static final String TABLE_NAME = "cache_table";

    public CacheSQLHelper(Context context) {
        super(context, DB_CACHE_NAME, null, 3);
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
