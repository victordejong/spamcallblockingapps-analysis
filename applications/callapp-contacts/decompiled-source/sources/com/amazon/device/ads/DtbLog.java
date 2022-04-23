package com.amazon.device.ads;

import android.util.Log;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbLog.class */
public class DtbLog {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f6490a;

    /* renamed from: b  reason: collision with root package name */
    private static final Object f6491b;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f6492c;

    /* renamed from: d  reason: collision with root package name */
    private static DTBLogLevel f6493d;
    private static DtbLogListener e;

    static {
        try {
            Log.isLoggable("1234", 7);
            f6490a = true;
        } catch (Throwable th) {
            f6490a = false;
        }
        f6491b = new Object();
        f6492c = false;
        f6493d = DTBLogLevel.Warn;
    }

    DtbLog() {
    }

    public static void a() {
        if (f6493d.intValue() <= DTBLogLevel.Info.intValue() && f6490a) {
            c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(DTBLogLevel dTBLogLevel) {
        f6493d = dTBLogLevel;
    }

    public static void a(String str) {
        if (f6493d.intValue() <= DTBLogLevel.Warn.intValue() && f6490a) {
            Log.w(c(), str);
        }
    }

    public static void a(String str, String str2) {
        if (f6493d.intValue() <= DTBLogLevel.Info.intValue() && f6490a) {
            DTBLogLevel dTBLogLevel = DTBLogLevel.Info;
            d(str);
        }
    }

    public static void a(String str, String str2, Exception exc) {
        if (f6493d.intValue() <= DTBLogLevel.Fatal.intValue() && f6490a) {
            Log.e(str, str2, exc);
            DTBLogLevel dTBLogLevel = DTBLogLevel.Fatal;
            d(str);
        }
    }

    public static void b() {
        if (f6493d.intValue() <= DTBLogLevel.Debug.intValue() && f6490a) {
            c();
        }
    }

    public static void b(String str) {
        if (f6493d.intValue() <= DTBLogLevel.Debug.intValue() && f6490a) {
            c();
        }
    }

    public static void b(String str, String str2) {
        if (f6493d.intValue() <= DTBLogLevel.Warn.intValue() && f6490a) {
            Log.w(str, str2);
            DTBLogLevel dTBLogLevel = DTBLogLevel.Warn;
            d(str);
        }
    }

    private static String c() {
        boolean z = f6492c;
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

    public static void c(String str) {
        if (f6493d.intValue() <= DTBLogLevel.Error.intValue() && f6490a) {
            Log.e(c(), str);
        }
    }

    public static void c(String str, String str2) {
        if (f6493d.intValue() <= DTBLogLevel.Debug.intValue() && f6490a) {
            DTBLogLevel dTBLogLevel = DTBLogLevel.Debug;
            d(str);
        }
    }

    private static void d(String str) {
        if (e != null) {
            synchronized (f6491b) {
                DtbLogListener dtbLogListener = e;
                if (dtbLogListener != null) {
                    str.equals(dtbLogListener.a());
                }
            }
        }
    }

    public static void d(String str, String str2) {
        if (f6493d.intValue() <= DTBLogLevel.Error.intValue() && f6490a) {
            Log.e(str, str2);
            DTBLogLevel dTBLogLevel = DTBLogLevel.Error;
            d(str);
        }
    }
}
