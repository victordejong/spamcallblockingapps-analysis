package com.verizon.ads;

import android.util.Log;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/Logger.class */
public final class Logger {
    public static final int DEBUG = 3;
    public static final int ERROR = 6;
    public static final int INFO = 4;
    public static final int VERBOSE = 2;
    public static final int WARN = 5;

    /* renamed from: a  reason: collision with root package name */
    private static volatile int f35311a = 4;

    /* renamed from: b  reason: collision with root package name */
    private final String f35312b;

    private Logger(String str) {
        this.f35312b = str;
    }

    private String a() {
        return "VAS-" + this.f35312b + " <" + Thread.currentThread().getId() + ":" + System.currentTimeMillis() + ">";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(int i) {
        f35311a = i;
    }

    public static Logger getInstance(Class cls) {
        return new Logger(cls.getSimpleName());
    }

    public static int getLogLevel() {
        return f35311a;
    }

    public static boolean isLogLevelEnabled(int i) {
        return f35311a <= i;
    }

    public final void d(String str) {
        if (f35311a <= 3) {
            a();
        }
    }

    public final void d(String str, Throwable th) {
        if (f35311a <= 3) {
            a();
        }
    }

    public final void e(String str) {
        if (f35311a <= 6) {
            Log.e(a(), str);
        }
    }

    public final void e(String str, Throwable th) {
        if (f35311a <= 6) {
            Log.e(a(), str, th);
        }
    }

    public final void i(String str) {
        if (f35311a <= 4) {
            a();
        }
    }

    public final void i(String str, Throwable th) {
        if (f35311a <= 4) {
            a();
        }
    }

    public final void v(String str) {
        if (f35311a <= 2) {
            a();
        }
    }

    public final void v(String str, Throwable th) {
        if (f35311a <= 2) {
            a();
        }
    }

    public final void w(String str) {
        if (f35311a <= 5) {
            Log.w(a(), str);
        }
    }

    public final void w(String str, Throwable th) {
        if (f35311a <= 5) {
            Log.w(a(), str, th);
        }
    }
}
