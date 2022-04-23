package com.amazonaws.mobileconnectors.s3.transferutility;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/TransferDatabaseHelper.class */
class TransferDatabaseHelper extends SQLiteOpenHelper {

    /* renamed from: a  reason: collision with root package name */
    private final Context f6696a;

    /* renamed from: b  reason: collision with root package name */
    private int f6697b;

    public TransferDatabaseHelper(Context context) {
        this(context, 6);
    }

    public TransferDatabaseHelper(Context context, int i) {
        super(context, "awss3transfertable.db", (SQLiteDatabase.CursorFactory) null, i);
        this.f6696a = context;
        this.f6697b = i;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        TransferTable.a(sQLiteDatabase, this.f6697b);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        this.f6696a.deleteDatabase("awss3transfertable.db");
        onCreate(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        TransferTable.a(sQLiteDatabase, i, i2);
    }
}
