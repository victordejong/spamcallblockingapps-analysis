package com.appnext.base.p006a;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.appnext.base.C0472a;
import com.appnext.base.moments.a.b.b;
/* renamed from: com.appnext.base.a.a */
/* loaded from: classes-dex2jar.jar:com/appnext/base/a/a.class */
public class C0473a extends SQLiteOpenHelper {

    /* renamed from: bQ */
    private static volatile C0473a f1661bQ;

    private C0473a(Context context) {
        super(context, "appnext_dbs472", (SQLiteDatabase.CursorFactory) null, 12);
    }

    /* renamed from: a */
    public static C0473a m42576a(Context context) {
        if (f1661bQ == null) {
            synchronized (C0473a.class) {
                try {
                    if (f1661bQ == null) {
                        f1661bQ = new C0473a(context.getApplicationContext());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f1661bQ;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        try {
            sQLiteDatabase.execSQL("create table ct ( p text, c integer)");
            sQLiteDatabase.execSQL(b.ah());
            sQLiteDatabase.execSQL("create table config_table ( key text primary key, status text not null default 'off', sample text not null default '1', sample_type text not null default '',cycle text not null default '1', cycle_type text not null default 'once', service_key text not null default '', data text not null default '')");
        } catch (Throwable th) {
            C0472a.m42577a("DatabaseSqlHelper$onCreate", th);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        try {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS ct");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS collected_data_table");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS config_table");
            onCreate(sQLiteDatabase);
        } catch (Throwable th) {
            C0472a.m42577a("DatabaseSqlHelper$dropTables", th);
        }
    }
}
