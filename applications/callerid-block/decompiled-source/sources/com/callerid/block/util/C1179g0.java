package com.callerid.block.util;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
/* renamed from: com.callerid.block.util.g0 */
/* loaded from: classes-dex2jar.jar:com/callerid/block/util/g0.class */
public class C1179g0 extends SQLiteOpenHelper {
    public C1179g0(Context context) {
        super(context, "offlinedatavest.sqlite", (SQLiteDatabase.CursorFactory) null, 1);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }
}
