package com.google.firebase.crashlytics.internal;

import android.util.Log;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/Logger.class */
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
    public void m8488d(String str) {
        m8487d(str, null);
    }

    /* renamed from: d */
    public void m8487d(String str, Throwable th) {
        canLog(3);
    }

    /* renamed from: e */
    public void m8486e(String str) {
        m8485e(str, null);
    }

    /* renamed from: e */
    public void m8485e(String str, Throwable th) {
        if (canLog(6)) {
            Log.e(this.tag, str, th);
        }
    }

    /* renamed from: i */
    public void m8484i(String str) {
        m8483i(str, null);
    }

    /* renamed from: i */
    public void m8483i(String str, Throwable th) {
        canLog(4);
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
    public void m8482v(String str) {
        m8481v(str, null);
    }

    /* renamed from: v */
    public void m8481v(String str, Throwable th) {
        canLog(2);
    }

    /* renamed from: w */
    public void m8480w(String str) {
        m8479w(str, null);
    }

    /* renamed from: w */
    public void m8479w(String str, Throwable th) {
        if (canLog(5)) {
            Log.w(this.tag, str, th);
        }
    }
}
