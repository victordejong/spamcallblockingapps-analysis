package com.amazonaws.mobileconnectors.p100s3.transferutility;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
/* renamed from: com.amazonaws.mobileconnectors.s3.transferutility.TransferDatabaseHelper */
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/TransferDatabaseHelper.class */
class TransferDatabaseHelper extends SQLiteOpenHelper {

    /* renamed from: a */
    private final Context f12154a;

    /* renamed from: b */
    private int f12155b;

    public TransferDatabaseHelper(Context context) {
        this(context, 6);
    }

    public TransferDatabaseHelper(Context context, int i) {
        super(context, "awss3transfertable.db", (SQLiteDatabase.CursorFactory) null, i);
        this.f12154a = context;
        this.f12155b = i;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        TransferTable.m38528a(sQLiteDatabase, this.f12155b);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        this.f12154a.deleteDatabase("awss3transfertable.db");
        onCreate(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        TransferTable.m38527a(sQLiteDatabase, i, i2);
    }
}
