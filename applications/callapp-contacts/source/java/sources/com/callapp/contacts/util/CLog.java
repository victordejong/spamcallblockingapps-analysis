package com.callapp.contacts.util;

import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteMisuseException;
import android.util.Log;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/CLog.class */
public class CLog {

    /* renamed from: a */
    public static boolean f27697a = false;

    /* renamed from: a */
    public static void m27612a(Class<?> cls, SQLiteException sQLiteException) {
        if (sQLiteException instanceof SQLiteMisuseException) {
            m27584d(cls, sQLiteException, "");
        } else {
            m27596b(cls, sQLiteException);
        }
    }

    /* renamed from: a */
    public static void m27611a(Class<?> cls, String str) {
        m27606a(StringUtils.m26058a(cls));
    }

    /* renamed from: a */
    public static void m27610a(Class<?> cls, String str, Object... objArr) {
        m27603a(StringUtils.m26058a(cls), str, objArr);
    }

    /* renamed from: a */
    public static void m27609a(Class<?> cls, Throwable th) {
        th.getClass().getSimpleName();
        m27593b(StringUtils.m26058a(cls));
    }

    /* renamed from: a */
    public static void m27608a(Class<?> cls, Throwable th, String str) {
        m27593b(StringUtils.m26058a(cls));
    }

    /* renamed from: a */
    public static void m27607a(Class<?> cls, Throwable th, String str, Object... objArr) {
        StringUtils.m26058a(cls);
        if (Prefs.f26657n.get().booleanValue()) {
            String.format(str, objArr);
        }
    }

    /* renamed from: a */
    public static void m27606a(String str) {
        Prefs.f26657n.get().booleanValue();
    }

    /* renamed from: a */
    public static void m27605a(String str, String str2) {
        String str3 = str2;
        if (str2 == null) {
            str3 = "";
        }
        Log.e("CallApp.".concat(String.valueOf(str)), str3);
    }

    /* renamed from: a */
    private static void m27604a(String str, String str2, Throwable th) {
        CrashlyticsUtils.m27547a(new Exception(String.format("[%s] %s", str, str2), th));
    }

    /* renamed from: a */
    public static void m27603a(String str, String str2, Object... objArr) {
        if (Prefs.f26657n.get().booleanValue()) {
            String str3 = str2;
            if (str2 == null) {
                str3 = "";
            }
            String.format(str3, objArr);
        }
    }

    /* renamed from: a */
    public static void m27602a(String str, Throwable th) {
        th.getClass().getSimpleName();
        m27593b(str);
    }

    /* renamed from: a */
    private static void m27601a(String str, Throwable th, String str2) {
        String str3 = str2;
        if (str2 == null) {
            str3 = "";
        }
        Log.e("CallApp.".concat(String.valueOf(str)), str3, th);
    }

    /* renamed from: a */
    public static void m27600a(String str, Throwable th, String str2, Object... objArr) {
        String str3 = str2;
        if (str2 == null) {
            str3 = "";
        }
        Log.e("CallApp.".concat(String.valueOf(str)), String.format(str3, objArr), th);
    }

    /* renamed from: a */
    public static void m27599a(Throwable th) {
        CrashlyticsUtils.m27547a(th);
    }

    /* renamed from: b */
    public static void m27598b(Class<?> cls, String str) {
        m27605a(StringUtils.m26058a(cls), str);
    }

    /* renamed from: b */
    public static void m27597b(Class<?> cls, String str, Object... objArr) {
        if (Prefs.f26657n.get().booleanValue()) {
            new StringBuilder("CallApp.").append(StringUtils.m26058a(cls));
            String.format(str, objArr);
        }
    }

    /* renamed from: b */
    public static void m27596b(Class<?> cls, Throwable th) {
        m27595b(cls, th, th.getClass().getSimpleName());
    }

    /* renamed from: b */
    public static void m27595b(Class<?> cls, Throwable th, String str) {
        m27601a(StringUtils.m26058a(cls), th, str);
    }

    /* renamed from: b */
    public static void m27594b(Class<?> cls, Throwable th, String str, Object... objArr) {
        m27600a(StringUtils.m26058a(cls), th, str, objArr);
    }

    /* renamed from: b */
    private static void m27593b(String str) {
        Prefs.f26657n.get().booleanValue();
    }

    /* renamed from: b */
    public static void m27592b(String str, String str2) {
        String str3 = str2;
        if (str2 == null) {
            str3 = "";
        }
        Log.w("CallApp.".concat(String.valueOf(str)), str3);
    }

    /* renamed from: b */
    public static void m27591b(String str, String str2, Object... objArr) {
        String str3 = str2;
        if (str2 == null) {
            str3 = "";
        }
        Log.e("CallApp.".concat(String.valueOf(str)), String.format(str3, objArr));
    }

    /* renamed from: b */
    private static void m27590b(String str, Throwable th, String str2) {
        m27601a(str, th, str2);
        m27604a(str, str2, th);
    }

    /* renamed from: b */
    public static void m27589b(String str, Throwable th, String str2, Object... objArr) {
        m27590b(str, th, String.format(str2, objArr));
    }

    /* renamed from: c */
    public static void m27588c(Class<?> cls, String str) {
        m27592b(StringUtils.m26058a(cls), str);
    }

    /* renamed from: c */
    public static void m27587c(Class<?> cls, Throwable th, String str) {
        Log.w("CallApp.".concat(String.valueOf(StringUtils.m26058a(cls))), str, th);
    }

    /* renamed from: c */
    public static void m27586c(Class<?> cls, Throwable th, String str, Object... objArr) {
        m27589b(StringUtils.m26058a(cls), th, str, objArr);
    }

    /* renamed from: d */
    public static void m27585d(Class<?> cls, String str) {
        m27590b(StringUtils.m26058a(cls), (Throwable) null, str);
    }

    /* renamed from: d */
    public static void m27584d(Class<?> cls, Throwable th, String str) {
        m27590b(StringUtils.m26058a(cls), th, str);
    }
}
