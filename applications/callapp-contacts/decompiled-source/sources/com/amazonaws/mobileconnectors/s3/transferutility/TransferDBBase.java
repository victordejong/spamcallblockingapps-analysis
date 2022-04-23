package com.amazonaws.mobileconnectors.s3.transferutility;

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
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase.class */
class TransferDBBase {

    /* renamed from: b  reason: collision with root package name */
    private static final Log f6688b = LogFactory.a(TransferDBBase.class);
    private static final Object g = new Object();

    /* renamed from: a  reason: collision with root package name */
    final Uri f6689a;

    /* renamed from: c  reason: collision with root package name */
    private final Context f6690c;

    /* renamed from: d  reason: collision with root package name */
    private final UriMatcher f6691d;
    private final TransferDatabaseHelper e;
    private SQLiteDatabase f;

    public TransferDBBase(Context context) {
        this.f6690c = context;
        String packageName = context.getApplicationContext().getPackageName();
        TransferDatabaseHelper transferDatabaseHelper = new TransferDatabaseHelper(context);
        this.e = transferDatabaseHelper;
        this.f = transferDatabaseHelper.getWritableDatabase();
        this.f6689a = Uri.parse("content://" + packageName + "/transfers");
        UriMatcher uriMatcher = new UriMatcher(-1);
        this.f6691d = uriMatcher;
        uriMatcher.addURI(packageName, "transfers", 10);
        uriMatcher.addURI(packageName, "transfers/#", 20);
        uriMatcher.addURI(packageName, "transfers/part/#", 30);
        uriMatcher.addURI(packageName, "transfers/state/*", 40);
    }

    private void a() {
        synchronized (g) {
            if (!this.f.isOpen()) {
                this.f = this.e.getWritableDatabase();
            }
        }
    }

    public final int a(Uri uri) {
        int i;
        int match = this.f6691d.match(uri);
        a();
        if (match == 10) {
            i = this.f.delete("awstransfer", null, null);
        } else if (match == 20) {
            String lastPathSegment = uri.getLastPathSegment();
            if (TextUtils.isEmpty(null)) {
                i = this.f.delete("awstransfer", "_id=".concat(String.valueOf(lastPathSegment)), null);
            } else {
                SQLiteDatabase sQLiteDatabase = this.f;
                i = sQLiteDatabase.delete("awstransfer", "_id=" + lastPathSegment + " and " + ((String) null), null);
            }
        } else {
            throw new IllegalArgumentException("Unknown URI: ".concat(String.valueOf(uri)));
        }
        return i;
    }

    public final int a(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        int i;
        synchronized (this) {
            int match = this.f6691d.match(uri);
            a();
            if (match == 10) {
                i = this.f.update("awstransfer", contentValues, str, strArr);
            } else if (match == 20) {
                String lastPathSegment = uri.getLastPathSegment();
                if (TextUtils.isEmpty(str)) {
                    i = this.f.update("awstransfer", contentValues, "_id=".concat(String.valueOf(lastPathSegment)), null);
                } else {
                    SQLiteDatabase sQLiteDatabase = this.f;
                    i = sQLiteDatabase.update("awstransfer", contentValues, "_id=" + lastPathSegment + " and " + str, strArr);
                }
            } else {
                throw new IllegalArgumentException("Unknown URI: ".concat(String.valueOf(uri)));
            }
        }
        return i;
    }

    public final Cursor a(Uri uri, String str, String[] strArr) {
        SQLiteQueryBuilder sQLiteQueryBuilder = new SQLiteQueryBuilder();
        sQLiteQueryBuilder.setTables("awstransfer");
        int match = this.f6691d.match(uri);
        if (match == 10) {
            sQLiteQueryBuilder.appendWhere("part_num=0");
        } else if (match == 20) {
            sQLiteQueryBuilder.appendWhere("_id=" + uri.getLastPathSegment());
        } else if (match == 30) {
            sQLiteQueryBuilder.appendWhere("main_upload_id=" + uri.getLastPathSegment());
        } else if (match == 40) {
            sQLiteQueryBuilder.appendWhere("state=");
            sQLiteQueryBuilder.appendWhereEscapeString(uri.getLastPathSegment());
        } else {
            throw new IllegalArgumentException("Unknown URI: ".concat(String.valueOf(uri)));
        }
        a();
        return sQLiteQueryBuilder.query(this.f, null, str, strArr, null, null, null);
    }
}
