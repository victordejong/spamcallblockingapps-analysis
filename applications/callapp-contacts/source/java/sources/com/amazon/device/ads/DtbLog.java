package com.amazon.device.ads;

import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbLog.class */
public class DtbLog {

    /* renamed from: a */
    private static boolean f11890a;

    /* renamed from: b */
    private static final Object f11891b;

    /* renamed from: c */
    private static boolean f11892c;

    /* renamed from: d */
    private static DTBLogLevel f11893d;

    /* renamed from: e */
    private static DtbLogListener f11894e;

    static {
        try {
            Log.isLoggable("1234", 7);
            f11890a = true;
        } catch (Throwable th) {
            f11890a = false;
        }
        f11891b = new Object();
        f11892c = false;
        f11893d = DTBLogLevel.Warn;
    }

    DtbLog() {
    }

    /* renamed from: a */
    public static void m38830a() {
        if (f11893d.intValue() > DTBLogLevel.Info.intValue() || !f11890a) {
            return;
        }
        m38822c();
    }

    /* renamed from: a */
    public static void m38829a(DTBLogLevel dTBLogLevel) {
        f11893d = dTBLogLevel;
    }

    /* renamed from: a */
    public static void m38828a(String str) {
        if (f11893d.intValue() > DTBLogLevel.Warn.intValue() || !f11890a) {
            return;
        }
        Log.w(m38822c(), str);
    }

    /* renamed from: a */
    public static void m38827a(String str, String str2) {
        if (f11893d.intValue() > DTBLogLevel.Info.intValue() || !f11890a) {
            return;
        }
        DTBLogLevel dTBLogLevel = DTBLogLevel.Info;
        m38819d(str);
    }

    /* renamed from: a */
    public static void m38826a(String str, String str2, Exception exc) {
        if (f11893d.intValue() > DTBLogLevel.Fatal.intValue() || !f11890a) {
            return;
        }
        Log.e(str, str2, exc);
        DTBLogLevel dTBLogLevel = DTBLogLevel.Fatal;
        m38819d(str);
    }

    /* renamed from: b */
    public static void m38825b() {
        if (f11893d.intValue() > DTBLogLevel.Debug.intValue() || !f11890a) {
            return;
        }
        m38822c();
    }

    /* renamed from: b */
    public static void m38824b(String str) {
        if (f11893d.intValue() > DTBLogLevel.Debug.intValue() || !f11890a) {
            return;
        }
        m38822c();
    }

    /* renamed from: b */
    public static void m38823b(String str, String str2) {
        if (f11893d.intValue() > DTBLogLevel.Warn.intValue() || !f11890a) {
            return;
        }
        Log.w(str, str2);
        DTBLogLevel dTBLogLevel = DTBLogLevel.Warn;
        m38819d(str);
    }

    /* renamed from: c */
    private static String m38822c() {
        boolean z = f11892c;
        String str = "Amazon DTB Ads API";
        if (z) {
            str = "Amazon DTB Ads API";
            if (z) {
                StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
                StackTraceElement stackTraceElement = null;
                if (stackTrace != null) {
                    int i = 0;
                    while (true) {
                        stackTraceElement = null;
                        if (i >= stackTrace.length) {
                            break;
                        }
                        String className = stackTrace[i].getClassName();
                        if (className.startsWith("dalvik") || className.startsWith("java")) {
                            i++;
                        } else {
                            int i2 = i + 2;
                            if (i2 < stackTrace.length) {
                                i = i2;
                            }
                            stackTraceElement = stackTrace[i];
                        }
                    }
                }
                str = "Amazon DTB Ads API";
                if (stackTraceElement != null) {
                    str = stackTraceElement.getClassName() + ":" + stackTraceElement.getMethodName() + ":" + stackTraceElement.getLineNumber();
                }
            }
        }
        return str;
    }

    /* renamed from: c */
    public static void m38821c(String str) {
        if (f11893d.intValue() > DTBLogLevel.Error.intValue() || !f11890a) {
            return;
        }
        Log.e(m38822c(), str);
    }

    /* renamed from: c */
    public static void m38820c(String str, String str2) {
        if (f11893d.intValue() > DTBLogLevel.Debug.intValue() || !f11890a) {
            return;
        }
        DTBLogLevel dTBLogLevel = DTBLogLevel.Debug;
        m38819d(str);
    }

    /* renamed from: d */
    private static void m38819d(String str) {
        if (f11894e == null) {
            return;
        }
        synchronized (f11891b) {
            DtbLogListener dtbLogListener = f11894e;
            if (dtbLogListener != null) {
                str.equals(dtbLogListener.m38817a());
            }
        }
    }

    /* renamed from: d */
    public static void m38818d(String str, String str2) {
        if (f11893d.intValue() > DTBLogLevel.Error.intValue() || !f11890a) {
            return;
        }
        Log.e(str, str2);
        DTBLogLevel dTBLogLevel = DTBLogLevel.Error;
        m38819d(str);
    }
}
