package com.amazonaws.mobileconnectors.p100s3.transferutility;

import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQueryBuilder;
import android.net.Uri;
import android.text.TextUtils;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
/* renamed from: com.amazonaws.mobileconnectors.s3.transferutility.TransferDBBase */
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase.class */
class TransferDBBase {

    /* renamed from: b */
    private static final Log f12143b = LogFactory.m38584a(TransferDBBase.class);

    /* renamed from: g */
    private static final Object f12144g = new Object();

    /* renamed from: a */
    final Uri f12145a;

    /* renamed from: c */
    private final Context f12146c;

    /* renamed from: d */
    private final UriMatcher f12147d;

    /* renamed from: e */
    private final TransferDatabaseHelper f12148e;

    /* renamed from: f */
    private SQLiteDatabase f12149f;

    public TransferDBBase(Context context) {
        this.f12146c = context;
        String packageName = context.getApplicationContext().getPackageName();
        TransferDatabaseHelper transferDatabaseHelper = new TransferDatabaseHelper(context);
        this.f12148e = transferDatabaseHelper;
        this.f12149f = transferDatabaseHelper.getWritableDatabase();
        this.f12145a = Uri.parse("content://" + packageName + "/transfers");
        UriMatcher uriMatcher = new UriMatcher(-1);
        this.f12147d = uriMatcher;
        uriMatcher.addURI(packageName, "transfers", 10);
        uriMatcher.addURI(packageName, "transfers/#", 20);
        uriMatcher.addURI(packageName, "transfers/part/#", 30);
        uriMatcher.addURI(packageName, "transfers/state/*", 40);
    }

    /* renamed from: a */
    private void m38562a() {
        synchronized (f12144g) {
            if (!this.f12149f.isOpen()) {
                this.f12149f = this.f12148e.getWritableDatabase();
            }
        }
    }

    /* renamed from: a */
    public final int m38561a(Uri uri) {
        int i;
        int match = this.f12147d.match(uri);
        m38562a();
        if (match == 10) {
            i = this.f12149f.delete("awstransfer", null, null);
        } else if (match != 20) {
            throw new IllegalArgumentException("Unknown URI: ".concat(String.valueOf(uri)));
        } else {
            String lastPathSegment = uri.getLastPathSegment();
            if (TextUtils.isEmpty(null)) {
                i = this.f12149f.delete("awstransfer", "_id=".concat(String.valueOf(lastPathSegment)), null);
            } else {
                SQLiteDatabase sQLiteDatabase = this.f12149f;
                i = sQLiteDatabase.delete("awstransfer", "_id=" + lastPathSegment + " and " + ((String) null), null);
            }
        }
        return i;
    }

    /* renamed from: a */
    public final int m38560a(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        int i;
        synchronized (this) {
            int match = this.f12147d.match(uri);
            m38562a();
            if (match == 10) {
                i = this.f12149f.update("awstransfer", contentValues, str, strArr);
            } else if (match != 20) {
                throw new IllegalArgumentException("Unknown URI: ".concat(String.valueOf(uri)));
            } else {
                String lastPathSegment = uri.getLastPathSegment();
                if (TextUtils.isEmpty(str)) {
                    i = this.f12149f.update("awstransfer", contentValues, "_id=".concat(String.valueOf(lastPathSegment)), null);
                } else {
                    SQLiteDatabase sQLiteDatabase = this.f12149f;
                    i = sQLiteDatabase.update("awstransfer", contentValues, "_id=" + lastPathSegment + " and " + str, strArr);
                }
            }
        }
        return i;
    }

    /* renamed from: a */
    public final Cursor m38559a(Uri uri, String str, String[] strArr) {
        SQLiteQueryBuilder sQLiteQueryBuilder = new SQLiteQueryBuilder();
        sQLiteQueryBuilder.setTables("awstransfer");
        int match = this.f12147d.match(uri);
        if (match == 10) {
            sQLiteQueryBuilder.appendWhere("part_num=0");
        } else if (match == 20) {
            sQLiteQueryBuilder.appendWhere("_id=" + uri.getLastPathSegment());
        } else if (match == 30) {
            sQLiteQueryBuilder.appendWhere("main_upload_id=" + uri.getLastPathSegment());
        } else if (match != 40) {
            throw new IllegalArgumentException("Unknown URI: ".concat(String.valueOf(uri)));
        } else {
            sQLiteQueryBuilder.appendWhere("state=");
            sQLiteQueryBuilder.appendWhereEscapeString(uri.getLastPathSegment());
        }
        m38562a();
        return sQLiteQueryBuilder.query(this.f12149f, null, str, strArr, null, null, null);
    }
}
