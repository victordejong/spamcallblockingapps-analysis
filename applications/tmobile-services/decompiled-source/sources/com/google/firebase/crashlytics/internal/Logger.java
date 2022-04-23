package com.google.firebase.crashlytics.internal;

import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/Logger.class */
public class Logger {
    private int logLevel = 4;
    private final String tag;
    public static final String TAG = "FirebaseCrashlytics";
    static final Logger DEFAULT_LOGGER = new Logger(TAG);

    public Logger(String str) {
        this.tag = str;
    }

    private boolean canLog(int i) {
        return this.logLevel <= i || Log.isLoggable(this.tag, i);
    }

    public static Logger getLogger() {
        return DEFAULT_LOGGER;
    }

    /* renamed from: d */
    public void m8450d(String str) {
        m8449d(str, null);
    }

    /* renamed from: d */
    public void m8449d(String str, Throwable th) {
        if (canLog(3)) {
            Log.d(this.tag, str, th);
        }
    }

    /* renamed from: e */
    public void m8448e(String str) {
        m8447e(str, null);
    }

    /* renamed from: e */
    public void m8447e(String str, Throwable th) {
        if (canLog(6)) {
            Log.e(this.tag, str, th);
        }
    }

    /* renamed from: i */
    public void m8446i(String str) {
        m8445i(str, null);
    }

    /* renamed from: i */
    public void m8445i(String str, Throwable th) {
        if (canLog(4)) {
            Log.i(this.tag, str, th);
        }
    }

    public void log(int i, String str) {
        log(i, str, false);
    }

    public void log(int i, String str, boolean z) {
        if (z || canLog(i)) {
            Log.println(i, this.tag, str);
        }
    }

    /* renamed from: v */
    public void m8444v(String str) {
        m8443v(str, null);
    }

    /* renamed from: v */
    public void m8443v(String str, Throwable th) {
        if (canLog(2)) {
            Log.v(this.tag, str, th);
        }
    }

    /* renamed from: w */
    public void m8442w(String str) {
        m8441w(str, null);
    }

    /* renamed from: w */
    public void m8441w(String str, Throwable th) {
        if (canLog(5)) {
            Log.w(this.tag, str, th);
        }
    }
}
