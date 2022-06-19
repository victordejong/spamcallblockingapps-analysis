package p011c.p012a.p013a;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.widget.Toast;
import e.d.a.a.a;
/* renamed from: c.a.a.a */
/* loaded from: classes-dex2jar.jar:c/a/a/a.class */
public final class C0614a {
    /* renamed from: a */
    public static void m11574a(Context context, SQLiteException sQLiteException) {
        if (m11571d(sQLiteException)) {
            Toast.makeText(context, "Low Memory", 0).show();
            return;
        }
        throw sQLiteException;
    }

    /* renamed from: b */
    public static int m11573b(Context context, ContentResolver contentResolver, Uri uri, String str, String[] strArr) {
        try {
            return contentResolver.delete(uri, str, strArr);
        } catch (SQLiteException e) {
            a.c("SqliteWrapper", "Catch a SQLiteException when delete: ", e);
            m11574a(context, e);
            return -1;
        }
    }

    /* renamed from: c */
    public static Uri m11572c(Context context, ContentResolver contentResolver, Uri uri, ContentValues contentValues) {
        try {
            return contentResolver.insert(uri, contentValues);
        } catch (SQLiteException e) {
            a.c("SqliteWrapper", "Catch a SQLiteException when insert: ", e);
            m11574a(context, e);
            return null;
        }
    }

    /* renamed from: d */
    private static boolean m11571d(SQLiteException sQLiteException) {
        return sQLiteException.getMessage().equals("unable to open database file");
    }

    /* renamed from: e */
    public static Cursor m11570e(Context context, ContentResolver contentResolver, Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        try {
            return contentResolver.query(uri, strArr, str, strArr2, str2);
        } catch (SQLiteException e) {
            a.c("SqliteWrapper", "Catch a SQLiteException when query: ", e);
            m11574a(context, e);
            return null;
        }
    }

    /* renamed from: f */
    public static int m11569f(Context context, ContentResolver contentResolver, Uri uri, ContentValues contentValues, String str, String[] strArr) {
        try {
            return contentResolver.update(uri, contentValues, str, strArr);
        } catch (SQLiteException e) {
            a.c("SqliteWrapper", "Catch a SQLiteException when update: ", e);
            m11574a(context, e);
            return -1;
        }
    }
}
