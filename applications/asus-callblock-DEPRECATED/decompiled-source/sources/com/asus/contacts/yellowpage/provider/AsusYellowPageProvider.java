package com.asus.contacts.yellowpage.provider;

import android.content.ContentProvider;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQueryBuilder;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/yellowpage/provider/AsusYellowPageProvider.class */
public class AsusYellowPageProvider extends ContentProvider {

    /* renamed from: a  reason: collision with root package name */
    public static final String f2857a = AsusYellowPageProvider.class.getSimpleName();
    private static final UriMatcher c;

    /* renamed from: b  reason: collision with root package name */
    private b f2858b;

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        c = uriMatcher;
        uriMatcher.addURI("com.asus.yellowpage.provider", "asuscategory", 1);
        c.addURI("com.asus.yellowpage.provider", "asuscategory/category", 2);
        c.addURI("com.asus.yellowpage.provider", "request_cache", 3);
        c.addURI("com.asus.yellowpage.provider", "request_cache/#", 4);
        c.addURI("com.asus.yellowpage.provider", "data_cache", 5);
    }

    private int a(ContentValues contentValues, String str, String[] strArr) {
        int i = 0;
        try {
            i = this.f2858b.getWritableDatabase().update("asuscategory", contentValues, str, strArr);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }

    private int a(String str, String[] strArr) {
        int i = 0;
        try {
            i = this.f2858b.getWritableDatabase().delete("asuscategory", str, strArr);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }

    private long a(ContentValues contentValues) {
        long j = -1;
        try {
            j = this.f2858b.getWritableDatabase().insert("asuscategory", null, contentValues);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return j;
    }

    private Cursor a(String[] strArr, String str, String[] strArr2, String str2) {
        Cursor cursor;
        try {
            cursor = this.f2858b.getReadableDatabase().query("asuscategory", strArr, str, strArr2, null, null, str2);
        } catch (Exception e) {
            e.printStackTrace();
            cursor = null;
        }
        return cursor;
    }

    private Cursor b(String str, String[] strArr) {
        SQLiteDatabase readableDatabase = this.f2858b.getReadableDatabase();
        Cursor cursor = null;
        String str2 = "SELECT category_name, code FROM asuscategory GROUP BY category_name";
        if (str != null) {
            str2 = "SELECT category_name, code FROM asuscategory GROUP BY category_name";
            if (!TextUtils.isEmpty(str)) {
                str2 = "SELECT category_name, code FROM asuscategory GROUP BY category_name WHERE ( " + str + " )";
            }
        }
        try {
            cursor = readableDatabase.rawQuery(str2, strArr);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return cursor;
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        int i = 0;
        switch (c.match(uri)) {
            case 1:
                i = a(str, strArr);
                break;
            case 2:
            default:
                Log.e(f2857a, "Illegal uri: " + uri);
                break;
            case 3:
                i = this.f2858b.getWritableDatabase().delete("request_cache", str, strArr);
                break;
            case 4:
                i = this.f2858b.getWritableDatabase().delete("request_cache", "_id=" + uri.getPathSegments().get(1), strArr);
                break;
            case 5:
                i = this.f2858b.getWritableDatabase().delete("data_cache", str, strArr);
                break;
        }
        return i;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        Uri withAppendedId = null;
        long j = -1;
        switch (c.match(uri)) {
            case 1:
                j = a(contentValues);
                break;
            case 2:
            case 4:
            default:
                Log.e(f2857a, "Illegal uri: " + uri);
                break;
            case 3:
                j = this.f2858b.getWritableDatabase().insert("request_cache", null, contentValues);
                break;
            case 5:
                j = this.f2858b.getWritableDatabase().insert("data_cache", null, contentValues);
                break;
        }
        if (j >= 0) {
            withAppendedId = ContentUris.withAppendedId(uri, j);
        }
        return withAppendedId;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        boolean z;
        try {
            this.f2858b = new b(getContext());
            z = true;
        } catch (Exception e) {
            e.printStackTrace();
            z = false;
        }
        return z;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        Cursor cursor = null;
        switch (c.match(uri)) {
            case 1:
                cursor = a(strArr, str, strArr2, str2);
                break;
            case 2:
                cursor = b(str, strArr2);
                break;
            case 3:
                SQLiteDatabase readableDatabase = this.f2858b.getReadableDatabase();
                SQLiteQueryBuilder sQLiteQueryBuilder = new SQLiteQueryBuilder();
                sQLiteQueryBuilder.setTables("request_cache");
                Cursor query = sQLiteQueryBuilder.query(readableDatabase, strArr, str, strArr2, null, null, str2);
                cursor = query;
                if (query != null) {
                    query.setNotificationUri(getContext().getContentResolver(), uri);
                    cursor = query;
                    break;
                }
                break;
            case 4:
                SQLiteDatabase readableDatabase2 = this.f2858b.getReadableDatabase();
                SQLiteQueryBuilder sQLiteQueryBuilder2 = new SQLiteQueryBuilder();
                sQLiteQueryBuilder2.setTables("request_cache");
                sQLiteQueryBuilder2.appendWhere("_id=" + uri.getPathSegments().get(1));
                Cursor query2 = sQLiteQueryBuilder2.query(readableDatabase2, strArr, str, strArr2, null, null, str2);
                cursor = query2;
                if (query2 != null) {
                    query2.setNotificationUri(getContext().getContentResolver(), uri);
                    cursor = query2;
                    break;
                }
                break;
            case 5:
                SQLiteDatabase readableDatabase3 = this.f2858b.getReadableDatabase();
                SQLiteQueryBuilder sQLiteQueryBuilder3 = new SQLiteQueryBuilder();
                sQLiteQueryBuilder3.setTables("data_cache");
                Cursor query3 = sQLiteQueryBuilder3.query(readableDatabase3, strArr, str, strArr2, null, null, str2);
                cursor = query3;
                if (query3 != null) {
                    query3.setNotificationUri(getContext().getContentResolver(), uri);
                    cursor = query3;
                    break;
                }
                break;
            default:
                Log.e(f2857a, "Illegal uri: " + uri);
                break;
        }
        return cursor;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        int i = 0;
        switch (c.match(uri)) {
            case 1:
                i = a(contentValues, str, strArr);
                break;
            case 2:
            default:
                Log.e(f2857a, "Illegal uri: " + uri);
                break;
            case 3:
                i = this.f2858b.getReadableDatabase().update("request_cache", contentValues, str, strArr);
                break;
            case 4:
                i = this.f2858b.getReadableDatabase().update("request_cache", contentValues, "_id=" + uri.getPathSegments().get(1), strArr);
                break;
            case 5:
                i = this.f2858b.getReadableDatabase().update("data_cache", contentValues, str, strArr);
                break;
        }
        return i;
    }
}
