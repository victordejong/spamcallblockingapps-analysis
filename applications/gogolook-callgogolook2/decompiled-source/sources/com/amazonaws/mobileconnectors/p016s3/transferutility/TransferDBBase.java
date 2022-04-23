package com.amazonaws.mobileconnectors.p016s3.transferutility;

import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQueryBuilder;
import android.net.Uri;
import android.text.TextUtils;
/* renamed from: com.amazonaws.mobileconnectors.s3.transferutility.TransferDBBase */
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase.class */
public class TransferDBBase {
    public final Uri contentUri;
    public final Context context;
    public final TransferDatabaseHelper databaseHelper;
    public final UriMatcher uriMatcher = new UriMatcher(-1);

    public TransferDBBase(Context context) {
        this.context = context;
        String packageName = context.getApplicationContext().getPackageName();
        this.databaseHelper = new TransferDatabaseHelper(this.context);
        this.contentUri = Uri.parse("content://" + packageName + "/transfers");
        this.uriMatcher.addURI(packageName, "transfers", 10);
        this.uriMatcher.addURI(packageName, "transfers/#", 20);
        this.uriMatcher.addURI(packageName, "transfers/part/#", 30);
        this.uriMatcher.addURI(packageName, "transfers/state/*", 40);
    }

    public Uri getContentUri() {
        return this.contentUri;
    }

    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        SQLiteQueryBuilder sQLiteQueryBuilder = new SQLiteQueryBuilder();
        sQLiteQueryBuilder.setTables("awstransfer");
        int match = this.uriMatcher.match(uri);
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
            throw new IllegalArgumentException("Unknown URI: " + uri);
        }
        return sQLiteQueryBuilder.query(this.databaseHelper.getWritableDatabase(), strArr, str, strArr2, null, null, str2);
    }

    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        int i;
        synchronized (this) {
            int match = this.uriMatcher.match(uri);
            SQLiteDatabase writableDatabase = this.databaseHelper.getWritableDatabase();
            if (match == 10) {
                i = writableDatabase.update("awstransfer", contentValues, str, strArr);
            } else if (match == 20) {
                String lastPathSegment = uri.getLastPathSegment();
                if (TextUtils.isEmpty(str)) {
                    i = writableDatabase.update("awstransfer", contentValues, "_id=" + lastPathSegment, null);
                } else {
                    i = writableDatabase.update("awstransfer", contentValues, "_id=" + lastPathSegment + " and " + str, strArr);
                }
            } else {
                throw new IllegalArgumentException("Unknown URI: " + uri);
            }
        }
        return i;
    }
}
