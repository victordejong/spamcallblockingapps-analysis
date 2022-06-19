package com.facebook.biddingkit.p293d;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
/* renamed from: com.facebook.biddingkit.d.d */
/* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/d/d.class */
final class C10125d extends SQLiteOpenHelper {
    public C10125d(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i) {
        super(context, str, cursorFactory, i);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        try {
            sQLiteDatabase.execSQL("create table EVENT_LOGS( ID integer primary key autoincrement,auction_id  text,exception  text,bidder_data  text); ");
        } catch (Exception e) {
            C10123b.m23369a("DataBaseHelper", "Failed database create", e);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS EVENT_LOGS");
        onCreate(sQLiteDatabase);
    }
}
