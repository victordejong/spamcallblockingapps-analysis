package com.callapp.contacts.util;

import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteMisuseException;
import android.util.Log;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/CLog.class */
public class CLog {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f15860a = false;

    public static void a(Class<?> cls, SQLiteException sQLiteException) {
        if (sQLiteException instanceof SQLiteMisuseException) {
            d(cls, sQLiteException, "");
        } else {
            b(cls, sQLiteException);
        }
    }

    public static void a(Class<?> cls, String str) {
        a(StringUtils.a(cls));
    }

    public static void a(Class<?> cls, String str, Object... objArr) {
        a(StringUtils.a(cls), str, objArr);
    }

    public static void a(Class<?> cls, Throwable th) {
        th.getClass().getSimpleName();
        b(StringUtils.a(cls));
    }

    public static void a(Class<?> cls, Throwable th, String str) {
        b(StringUtils.a(cls));
    }

    public static void a(Class<?> cls, Throwable th, String str, Object... objArr) {
        StringUtils.a(cls);
        if (Prefs.n.get().booleanValue()) {
            String.format(str, objArr);
        }
    }

    public static void a(String str) {
        Prefs.n.get().booleanValue();
    }

    public static void a(String str, String str2) {
        String str3 = str2;
        if (str2 == null) {
            str3 = "";
        }
        Log.e("CallApp.".concat(String.valueOf(str)), str3);
    }

    private static void a(String str, String str2, Throwable th) {
        CrashlyticsUtils.a(new Exception(String.format("[%s] %s", str, str2), th));
    }

    public static void a(String str, String str2, Object... objArr) {
        if (Prefs.n.get().booleanValue()) {
            String str3 = str2;
            if (str2 == null) {
                str3 = "";
            }
            String.format(str3, objArr);
        }
    }

    public static void a(String str, Throwable th) {
        th.getClass().getSimpleName();
        b(str);
    }

    private static void a(String str, Throwable th, String str2) {
        String str3 = str2;
        if (str2 == null) {
            str3 = "";
        }
        Log.e("CallApp.".concat(String.valueOf(str)), str3, th);
    }

    public static void a(String str, Throwable th, String str2, Object... objArr) {
        String str3 = str2;
        if (str2 == null) {
            str3 = "";
        }
        Log.e("CallApp.".concat(String.valueOf(str)), String.format(str3, objArr), th);
    }

    public static void a(Throwable th) {
        CrashlyticsUtils.a(th);
    }

    public static void b(Class<?> cls, String str) {
        a(StringUtils.a(cls), str);
    }

    public static void b(Class<?> cls, String str, Object... objArr) {
        if (Prefs.n.get().booleanValue()) {
            new StringBuilder("CallApp.").append(StringUtils.a(cls));
            String.format(str, objArr);
        }
    }

    public static void b(Class<?> cls, Throwable th) {
        b(cls, th, th.getClass().getSimpleName());
    }

    public static void b(Class<?> cls, Throwable th, String str) {
        a(StringUtils.a(cls), th, str);
    }

    public static void b(Class<?> cls, Throwable th, String str, Object... objArr) {
        a(StringUtils.a(cls), th, str, objArr);
    }

    private static void b(String str) {
        Prefs.n.get().booleanValue();
    }

    public static void b(String str, String str2) {
        String str3 = str2;
        if (str2 == null) {
            str3 = "";
        }
        Log.w("CallApp.".concat(String.valueOf(str)), str3);
    }

    public static void b(String str, String str2, Object... objArr) {
        String str3 = str2;
        if (str2 == null) {
            str3 = "";
        }
        Log.e("CallApp.".concat(String.valueOf(str)), String.format(str3, objArr));
    }

    private static void b(String str, Throwable th, String str2) {
        a(str, th, str2);
        a(str, str2, th);
    }

    public static void b(String str, Throwable th, String str2, Object... objArr) {
        b(str, th, String.format(str2, objArr));
    }

    public static void c(Class<?> cls, String str) {
        b(StringUtils.a(cls), str);
    }

    public static void c(Class<?> cls, Throwable th, String str) {
        Log.w("CallApp.".concat(String.valueOf(StringUtils.a(cls))), str, th);
    }

    public static void c(Class<?> cls, Throwable th, String str, Object... objArr) {
        b(StringUtils.a(cls), th, str, objArr);
    }

    public static void d(Class<?> cls, String str) {
        b(StringUtils.a(cls), (Throwable) null, str);
    }

    public static void d(Class<?> cls, Throwable th, String str) {
        b(StringUtils.a(cls), th, str);
    }
}
