package com.asus.contacts.yellowpage.provider;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/yellowpage/provider/b.class */
public class b extends SQLiteOpenHelper {

    /* renamed from: a  reason: collision with root package name */
    public static final String f2864a = b.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private final Context f2865b;

    public b(Context context) {
        super(context, "asus_yellowpage.db", (SQLiteDatabase.CursorFactory) null, 1003);
        this.f2865b = context;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        try {
            sQLiteDatabase.execSQL("CREATE TABLE asuscategory (_id INTEGER PRIMARY KEY AUTOINCREMENT,category_name TEXT,subcategory_name TEXT,tag_name TEXT, code TEXT, source TEXT);");
            sQLiteDatabase.execSQL("CREATE TABLE request_cache ( _id INTEGER PRIMARY KEY AUTOINCREMENT, url TEXT, cache_time INTEGER, is_expired INTEGER NOT NULL DEFAULT 0 );");
            sQLiteDatabase.execSQL("CREATE TABLE data_cache ( _id INTEGER PRIMARY KEY AUTOINCREMENT, request_cache_id TEXT, id TEXT, company_name TEXT, branch_name TEXT,  tel TEXT, country TEXT, city TEXT, district TEXT, address TEXT, zipcode TEXT, big_class TEXT, mid_class TEXT, sml_class TEXT, url TEXT, longitude TEXT, latitude TEXT, biz_time TEXT, source TEXT, ipeen_rating TEXT, asus_rating TEXT, geohash TEXT, cache_time INTEGER );");
        } catch (Exception e) {
            Log.d(f2864a, "failed to create DB ...");
            e.printStackTrace();
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        Log.i(f2864a, "Upgrading from version " + i + " to " + i2);
        int i3 = i;
        if (i < 1002) {
            try {
                sQLiteDatabase.execSQL("CREATE TABLE request_cache ( _id INTEGER PRIMARY KEY AUTOINCREMENT, url TEXT, cache_time INTEGER, is_expired INTEGER NOT NULL DEFAULT 0 );");
                sQLiteDatabase.execSQL("CREATE TABLE data_cache ( _id INTEGER PRIMARY KEY AUTOINCREMENT, request_cache_id TEXT, id TEXT, company_name TEXT, branch_name TEXT,  tel TEXT, country TEXT, city TEXT, district TEXT, address TEXT, zipcode TEXT, big_class TEXT, mid_class TEXT, sml_class TEXT, url TEXT, longitude TEXT, latitude TEXT, biz_time TEXT, source TEXT, ipeen_rating TEXT, asus_rating TEXT, geohash TEXT, cache_time INTEGER );");
                i3 = 1002;
            } catch (Exception e) {
                Log.e(f2864a, "Failed to create table.");
                Log.e(f2864a, "SQL command : CREATE TABLE request_cache ( _id INTEGER PRIMARY KEY AUTOINCREMENT, url TEXT, cache_time INTEGER, is_expired INTEGER NOT NULL DEFAULT 0 );");
                Log.e(f2864a, "SQL command : CREATE TABLE data_cache ( _id INTEGER PRIMARY KEY AUTOINCREMENT, request_cache_id TEXT, id TEXT, company_name TEXT, branch_name TEXT,  tel TEXT, country TEXT, city TEXT, district TEXT, address TEXT, zipcode TEXT, big_class TEXT, mid_class TEXT, sml_class TEXT, url TEXT, longitude TEXT, latitude TEXT, biz_time TEXT, source TEXT, ipeen_rating TEXT, asus_rating TEXT, geohash TEXT, cache_time INTEGER );");
                e.printStackTrace();
                i3 = i;
            }
        }
        if (i3 < 1003) {
            try {
                sQLiteDatabase.execSQL("ALTER TABLE data_cache ADD url TEXT ;");
                ContentValues contentValues = new ContentValues();
                contentValues.put("is_expired", (Integer) 1);
                Log.d(f2864a, "Updated number of rows = " + sQLiteDatabase.update("request_cache", contentValues, null, null));
            } catch (Exception e2) {
                Log.e(f2864a, "Failed to alter table and update columns");
                Log.e(f2864a, "SQL command : ALTER TABLE data_cache ADD url TEXT ;");
                e2.printStackTrace();
            }
        }
    }
}
