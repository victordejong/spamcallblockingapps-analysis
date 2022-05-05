package p459j.p460a.p474c0.p480d;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import p459j.p460a.p474c0.p499h.C12153d0;
import p459j.p460a.p582w0.C14080m2;
/* renamed from: j.a.c0.d.c */
/* loaded from: classes2-dex2jar.jar:j/a/c0/d/c.class */
public final class C11689c {
    /* renamed from: a */
    public static int m8600a(Context context, ContentResolver contentResolver, Uri uri, ContentValues contentValues, String str, String[] strArr) {
        try {
            return contentResolver.update(uri, contentValues, str, strArr);
        } catch (SQLiteException e) {
            C12153d0.m6986b("MessagingApp", "SqliteWrapper: catch an exception when update", e);
            return -1;
        } catch (IllegalArgumentException e2) {
            C12153d0.m6986b("MessagingApp", "SqliteWrapper: catch an exception when update", e2);
            return -1;
        } catch (SecurityException e3) {
            C14080m2.m2612a((Throwable) e3);
            return -1;
        }
    }

    /* renamed from: a */
    public static int m8599a(Context context, ContentResolver contentResolver, Uri uri, String str, String[] strArr) {
        try {
            return contentResolver.delete(uri, str, strArr);
        } catch (SQLiteException e) {
            C12153d0.m6986b("MessagingApp", "SqliteWrapper: catch an exception when delete", e);
            return -1;
        } catch (IllegalArgumentException e2) {
            C12153d0.m6986b("MessagingApp", "SqliteWrapper: catch an exception when delete", e2);
            return -1;
        } catch (SecurityException e3) {
            C14080m2.m2612a((Throwable) e3);
            return -1;
        }
    }

    /* renamed from: a */
    public static Cursor m8598a(Context context, ContentResolver contentResolver, Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        try {
            return contentResolver.query(uri, strArr, str, strArr2, str2);
        } catch (SQLiteException e) {
            C12153d0.m6986b("MessagingApp", "SqliteWrapper: catch an exception when query", e);
            return null;
        } catch (IllegalArgumentException e2) {
            C12153d0.m6986b("MessagingApp", "SqliteWrapper: catch an exception when query", e2);
            return null;
        } catch (SecurityException e3) {
            C14080m2.m2612a((Throwable) e3);
            return null;
        }
    }

    /* renamed from: a */
    public static Uri m8601a(Context context, ContentResolver contentResolver, Uri uri, ContentValues contentValues) {
        try {
            return contentResolver.insert(uri, contentValues);
        } catch (SQLiteException e) {
            C12153d0.m6986b("MessagingApp", "SqliteWrapper: catch an exception when insert", e);
            return null;
        } catch (IllegalArgumentException e2) {
            C12153d0.m6986b("MessagingApp", "SqliteWrapper: catch an exception when insert", e2);
            return null;
        } catch (SecurityException e3) {
            C14080m2.m2612a((Throwable) e3);
            return null;
        }
    }
}
