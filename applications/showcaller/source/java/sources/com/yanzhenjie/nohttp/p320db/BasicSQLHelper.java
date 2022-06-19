package com.yanzhenjie.nohttp.p320db;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
/* renamed from: com.yanzhenjie.nohttp.db.BasicSQLHelper */
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/db/BasicSQLHelper.class */
public abstract class BasicSQLHelper extends SQLiteOpenHelper {
    public static final String ALL = "*";

    /* renamed from: ID */
    public static final String f40311ID = "_id";

    public BasicSQLHelper(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i) {
        super(context, str, cursorFactory, i);
    }
}
