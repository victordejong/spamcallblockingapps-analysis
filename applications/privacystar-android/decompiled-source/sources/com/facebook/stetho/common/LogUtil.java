package com.facebook.stetho.common;

import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/common/LogUtil.class */
public class LogUtil {
    private static final String TAG = "stetho";

    /* renamed from: d */
    public static void m377d(String str) {
        if (isLoggable(3)) {
            LogRedirector.m387d(TAG, str);
        }
    }

    /* renamed from: d */
    public static void m376d(String str, Object... objArr) {
        m377d(format(str, objArr));
    }

    /* renamed from: d */
    public static void m375d(Throwable th, String str) {
        if (isLoggable(3)) {
            LogRedirector.m386d(TAG, str, th);
        }
    }

    /* renamed from: d */
    public static void m374d(Throwable th, String str, Object... objArr) {
        m375d(th, format(str, objArr));
    }

    /* renamed from: e */
    public static void m373e(String str) {
        if (isLoggable(6)) {
            LogRedirector.m385e(TAG, str);
        }
    }

    /* renamed from: e */
    public static void m372e(String str, Object... objArr) {
        m373e(format(str, objArr));
    }

    /* renamed from: e */
    public static void m371e(Throwable th, String str) {
        if (isLoggable(6)) {
            LogRedirector.m384e(TAG, str, th);
        }
    }

    /* renamed from: e */
    public static void m370e(Throwable th, String str, Object... objArr) {
        m371e(th, format(str, objArr));
    }

    private static String format(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    /* renamed from: i */
    public static void m369i(String str) {
        if (isLoggable(4)) {
            LogRedirector.m383i(TAG, str);
        }
    }

    /* renamed from: i */
    public static void m368i(String str, Object... objArr) {
        m369i(format(str, objArr));
    }

    /* renamed from: i */
    public static void m367i(Throwable th, String str) {
        if (isLoggable(4)) {
            LogRedirector.m382i(TAG, str, th);
        }
    }

    /* renamed from: i */
    public static void m366i(Throwable th, String str, Object... objArr) {
        m367i(th, format(str, objArr));
    }

    public static boolean isLoggable(int i) {
        switch (i) {
            case 5:
            case 6:
                return true;
            default:
                return LogRedirector.isLoggable(TAG, i);
        }
    }

    /* renamed from: v */
    public static void m365v(String str) {
        if (isLoggable(2)) {
            LogRedirector.m381v(TAG, str);
        }
    }

    /* renamed from: v */
    public static void m364v(String str, Object... objArr) {
        m365v(format(str, objArr));
    }

    /* renamed from: v */
    public static void m363v(Throwable th, String str) {
        if (isLoggable(2)) {
            LogRedirector.m380v(TAG, str, th);
        }
    }

    /* renamed from: v */
    public static void m362v(Throwable th, String str, Object... objArr) {
        m363v(th, format(str, objArr));
    }

    /* renamed from: w */
    public static void m361w(String str) {
        if (isLoggable(5)) {
            LogRedirector.m379w(TAG, str);
        }
    }

    /* renamed from: w */
    public static void m360w(String str, Object... objArr) {
        m361w(format(str, objArr));
    }

    /* renamed from: w */
    public static void m359w(Throwable th, String str) {
        if (isLoggable(5)) {
            LogRedirector.m378w(TAG, str, th);
        }
    }

    /* renamed from: w */
    public static void m358w(Throwable th, String str, Object... objArr) {
        m359w(th, format(str, objArr));
    }
}
