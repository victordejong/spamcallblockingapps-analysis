package com.allinone.callerid.util;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
/* renamed from: com.allinone.callerid.util.o0 */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/o0.class */
public class C3805o0 extends SQLiteOpenHelper {
    public C3805o0(Context context) {
        super(context, "offlinedata.sqlite", (SQLiteDatabase.CursorFactory) null, 1);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }
}
