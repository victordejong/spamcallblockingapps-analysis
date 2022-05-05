package com.facebook.stetho.common;

import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/common/LogUtil.class */
public class LogUtil {
    private static final String TAG = "stetho";

    /* renamed from: d */
    public static void m15620d(String str) {
        if (isLoggable(3)) {
            LogRedirector.m15630d(TAG, str);
        }
    }

    /* renamed from: d */
    public static void m15619d(String str, Object... objArr) {
        m15620d(format(str, objArr));
    }

    /* renamed from: d */
    public static void m15618d(Throwable th, String str) {
        if (isLoggable(3)) {
            LogRedirector.m15629d(TAG, str, th);
        }
    }

    /* renamed from: d */
    public static void m15617d(Throwable th, String str, Object... objArr) {
        m15618d(th, format(str, objArr));
    }

    /* renamed from: e */
    public static void m15616e(String str) {
        if (isLoggable(6)) {
            LogRedirector.m15628e(TAG, str);
        }
    }

    /* renamed from: e */
    public static void m15615e(String str, Object... objArr) {
        m15616e(format(str, objArr));
    }

    /* renamed from: e */
    public static void m15614e(Throwable th, String str) {
        if (isLoggable(6)) {
            LogRedirector.m15627e(TAG, str, th);
        }
    }

    /* renamed from: e */
    public static void m15613e(Throwable th, String str, Object... objArr) {
        m15614e(th, format(str, objArr));
    }

    private static String format(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    /* renamed from: i */
    public static void m15612i(String str) {
        if (isLoggable(4)) {
            LogRedirector.m15626i(TAG, str);
        }
    }

    /* renamed from: i */
    public static void m15611i(String str, Object... objArr) {
        m15612i(format(str, objArr));
    }

    /* renamed from: i */
    public static void m15610i(Throwable th, String str) {
        if (isLoggable(4)) {
            LogRedirector.m15625i(TAG, str, th);
        }
    }

    /* renamed from: i */
    public static void m15609i(Throwable th, String str, Object... objArr) {
        m15610i(th, format(str, objArr));
    }

    public static boolean isLoggable(int i) {
        if (i == 5 || i == 6) {
            return true;
        }
        return LogRedirector.isLoggable(TAG, i);
    }

    /* renamed from: v */
    public static void m15608v(String str) {
        if (isLoggable(2)) {
            LogRedirector.m15624v(TAG, str);
        }
    }

    /* renamed from: v */
    public static void m15607v(String str, Object... objArr) {
        m15608v(format(str, objArr));
    }

    /* renamed from: v */
    public static void m15606v(Throwable th, String str) {
        if (isLoggable(2)) {
            LogRedirector.m15623v(TAG, str, th);
        }
    }

    /* renamed from: v */
    public static void m15605v(Throwable th, String str, Object... objArr) {
        m15606v(th, format(str, objArr));
    }

    /* renamed from: w */
    public static void m15604w(String str) {
        if (isLoggable(5)) {
            LogRedirector.m15622w(TAG, str);
        }
    }

    /* renamed from: w */
    public static void m15603w(String str, Object... objArr) {
        m15604w(format(str, objArr));
    }

    /* renamed from: w */
    public static void m15602w(Throwable th, String str) {
        if (isLoggable(5)) {
            LogRedirector.m15621w(TAG, str, th);
        }
    }

    /* renamed from: w */
    public static void m15601w(Throwable th, String str, Object... objArr) {
        m15602w(th, format(str, objArr));
    }
}
