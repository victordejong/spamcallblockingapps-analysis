package com.millennialmedia;

import android.util.Log;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/MMLog.class */
public class MMLog {
    private static final String TAG_PREFIX = "MMSDK-";
    public static int logLevel = 4;
    private static LogListener logListener;

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/MMLog$LogListener.class */
    public interface LogListener {
        void onLogMessage(int i, String str, String str2);
    }

    /* renamed from: d */
    public static void m4070d(String str, String str2) {
        if (logLevel <= 3) {
            dInternal(str, str2);
        }
    }

    /* renamed from: d */
    public static void m4069d(String str, String str2, Throwable th) {
        if (logLevel <= 3) {
            dInternal(str, str2 + ": " + Log.getStackTraceString(th));
        }
    }

    private static void dInternal(String str, String str2) {
        Log.d(getFullTag(str), str2);
        LogListener logListener2 = logListener;
        if (logListener2 != null) {
            logListener2.onLogMessage(3, str, str2);
        }
    }

    /* renamed from: e */
    public static void m4068e(String str, String str2) {
        if (logLevel <= 6) {
            eInternal(str, str2);
        }
    }

    /* renamed from: e */
    public static void m4067e(String str, String str2, Throwable th) {
        if (logLevel <= 6) {
            eInternal(str, str2 + ": " + Log.getStackTraceString(th));
        }
    }

    private static void eInternal(String str, String str2) {
        Log.e(getFullTag(str), str2);
        LogListener logListener2 = logListener;
        if (logListener2 != null) {
            logListener2.onLogMessage(6, str, str2);
        }
    }

    private static String getFullTag(String str) {
        return TAG_PREFIX + str + " <" + Thread.currentThread().getId() + ":" + System.currentTimeMillis() + ">";
    }

    /* renamed from: i */
    public static void m4066i(String str, String str2) {
        if (logLevel <= 4) {
            iInternal(str, str2);
        }
    }

    /* renamed from: i */
    public static void m4065i(String str, String str2, Throwable th) {
        if (logLevel <= 4) {
            iInternal(str, str2 + ": " + Log.getStackTraceString(th));
        }
    }

    private static void iInternal(String str, String str2) {
        Log.i(getFullTag(str), str2);
        LogListener logListener2 = logListener;
        if (logListener2 != null) {
            logListener2.onLogMessage(4, str, str2);
        }
    }

    public static boolean isDebugEnabled() {
        return logLevel <= 3;
    }

    public static boolean isVerboseEnabled() {
        return logLevel <= 2;
    }

    public static void setListener(LogListener logListener2) {
        logListener = logListener2;
    }

    public static void setLogLevel(int i) {
        logLevel = i;
    }

    /* renamed from: v */
    public static void m4064v(String str, String str2) {
        if (logLevel <= 2) {
            vInternal(str, str2);
        }
    }

    /* renamed from: v */
    public static void m4063v(String str, String str2, Throwable th) {
        if (logLevel <= 2) {
            vInternal(str, str2 + ": " + Log.getStackTraceString(th));
        }
    }

    private static void vInternal(String str, String str2) {
        Log.v(getFullTag(str), str2);
        LogListener logListener2 = logListener;
        if (logListener2 != null) {
            logListener2.onLogMessage(2, str, str2);
        }
    }

    /* renamed from: w */
    public static void m4062w(String str, String str2) {
        if (logLevel <= 5) {
            wInternal(str, str2);
        }
    }

    /* renamed from: w */
    public static void m4061w(String str, String str2, Throwable th) {
        if (logLevel <= 5) {
            wInternal(str, str2 + ": " + Log.getStackTraceString(th));
        }
    }

    private static void wInternal(String str, String str2) {
        Log.w(getFullTag(str), str2);
        LogListener logListener2 = logListener;
        if (logListener2 != null) {
            logListener2.onLogMessage(5, str, str2);
        }
    }
}
