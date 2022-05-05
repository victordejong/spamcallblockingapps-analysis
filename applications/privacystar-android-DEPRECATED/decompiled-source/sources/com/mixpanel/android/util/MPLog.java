package com.mixpanel.android.util;

import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/util/MPLog.class */
public class MPLog {
    public static final int DEBUG = 3;
    public static final int ERROR = 6;
    public static final int INFO = 4;
    public static final int NONE = Integer.MAX_VALUE;
    public static final int VERBOSE = 2;
    public static final int WARN = 5;
    private static int sMinLevel = 5;

    /* renamed from: d */
    public static void m313d(String str, String str2) {
        if (shouldLog(3)) {
            Log.d(str, str2);
        }
    }

    /* renamed from: d */
    public static void m312d(String str, String str2, Throwable th) {
        if (shouldLog(3)) {
            Log.d(str, str2, th);
        }
    }

    /* renamed from: e */
    public static void m311e(String str, String str2) {
        if (shouldLog(6)) {
            Log.e(str, str2);
        }
    }

    /* renamed from: e */
    public static void m310e(String str, String str2, Throwable th) {
        if (shouldLog(6)) {
            Log.e(str, str2, th);
        }
    }

    /* renamed from: i */
    public static void m309i(String str, String str2) {
        if (shouldLog(4)) {
            Log.i(str, str2);
        }
    }

    /* renamed from: i */
    public static void m308i(String str, String str2, Throwable th) {
        if (shouldLog(4)) {
            Log.i(str, str2, th);
        }
    }

    public static void setLevel(int i) {
        sMinLevel = i;
    }

    private static boolean shouldLog(int i) {
        return sMinLevel <= i;
    }

    /* renamed from: v */
    public static void m307v(String str, String str2) {
        if (shouldLog(2)) {
            Log.v(str, str2);
        }
    }

    /* renamed from: v */
    public static void m306v(String str, String str2, Throwable th) {
        if (shouldLog(2)) {
            Log.v(str, str2, th);
        }
    }

    /* renamed from: w */
    public static void m305w(String str, String str2) {
        if (shouldLog(5)) {
            Log.w(str, str2);
        }
    }

    /* renamed from: w */
    public static void m304w(String str, String str2, Throwable th) {
        if (shouldLog(5)) {
            Log.w(str, str2, th);
        }
    }

    public static void wtf(String str, String str2) {
        if (shouldLog(6)) {
            Log.wtf(str, str2);
        }
    }

    public static void wtf(String str, String str2, Throwable th) {
        if (shouldLog(6)) {
            Log.wtf(str, str2, th);
        }
    }
}
