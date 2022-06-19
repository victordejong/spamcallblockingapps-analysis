package com.verizon.ads;

import android.util.Log;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/Logger.class */
public final class Logger {
    public static final int DEBUG = 3;
    public static final int ERROR = 6;
    public static final int INFO = 4;
    public static final int VERBOSE = 2;
    public static final int WARN = 5;

    /* renamed from: a */
    private static volatile int f61204a = 4;

    /* renamed from: b */
    private final String f61205b;

    private Logger(String str) {
        this.f61205b = str;
    }

    /* renamed from: a */
    private String m5569a() {
        return "VAS-" + this.f61205b + " <" + Thread.currentThread().getId() + ":" + System.currentTimeMillis() + ">";
    }

    /* renamed from: a */
    public static void m5568a(int i) {
        f61204a = i;
    }

    public static Logger getInstance(Class cls) {
        return new Logger(cls.getSimpleName());
    }

    public static int getLogLevel() {
        return f61204a;
    }

    public static boolean isLogLevelEnabled(int i) {
        return f61204a <= i;
    }

    /* renamed from: d */
    public final void m5567d(String str) {
        if (f61204a <= 3) {
            m5569a();
        }
    }

    /* renamed from: d */
    public final void m5566d(String str, Throwable th) {
        if (f61204a <= 3) {
            m5569a();
        }
    }

    /* renamed from: e */
    public final void m5565e(String str) {
        if (f61204a <= 6) {
            Log.e(m5569a(), str);
        }
    }

    /* renamed from: e */
    public final void m5564e(String str, Throwable th) {
        if (f61204a <= 6) {
            Log.e(m5569a(), str, th);
        }
    }

    /* renamed from: i */
    public final void m5563i(String str) {
        if (f61204a <= 4) {
            m5569a();
        }
    }

    /* renamed from: i */
    public final void m5562i(String str, Throwable th) {
        if (f61204a <= 4) {
            m5569a();
        }
    }

    /* renamed from: v */
    public final void m5561v(String str) {
        if (f61204a <= 2) {
            m5569a();
        }
    }

    /* renamed from: v */
    public final void m5560v(String str, Throwable th) {
        if (f61204a <= 2) {
            m5569a();
        }
    }

    /* renamed from: w */
    public final void m5559w(String str) {
        if (f61204a <= 5) {
            Log.w(m5569a(), str);
        }
    }

    /* renamed from: w */
    public final void m5558w(String str, Throwable th) {
        if (f61204a <= 5) {
            Log.w(m5569a(), str, th);
        }
    }
}
