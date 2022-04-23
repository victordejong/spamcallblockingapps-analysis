package com.inmobi.commons.core.p512d;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
/* renamed from: com.inmobi.commons.core.d.a */
/* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/d/a.class */
public final class C8362a extends SQLiteOpenHelper {

    /* renamed from: a */
    public static final String f32516a = "com.im_7.3.0.db";

    public C8362a(Context context) {
        super(context, f32516a, (SQLiteDatabase.CursorFactory) null, 1);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }
}
