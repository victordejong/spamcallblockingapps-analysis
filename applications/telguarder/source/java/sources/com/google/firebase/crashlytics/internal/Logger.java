package com.google.firebase.crashlytics.internal;

import android.util.Log;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/Logger.class */
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
    public void m1348d(String str) {
        m1347d(str, null);
    }

    /* renamed from: d */
    public void m1347d(String str, Throwable th) {
        if (canLog(3)) {
            Log.d(this.tag, str, th);
        }
    }

    /* renamed from: e */
    public void m1346e(String str) {
        m1345e(str, null);
    }

    /* renamed from: e */
    public void m1345e(String str, Throwable th) {
        if (canLog(6)) {
            Log.e(this.tag, str, th);
        }
    }

    /* renamed from: i */
    public void m1344i(String str) {
        m1343i(str, null);
    }

    /* renamed from: i */
    public void m1343i(String str, Throwable th) {
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
    public void m1342v(String str) {
        m1341v(str, null);
    }

    /* renamed from: v */
    public void m1341v(String str, Throwable th) {
        if (canLog(2)) {
            Log.v(this.tag, str, th);
        }
    }

    /* renamed from: w */
    public void m1340w(String str) {
        m1339w(str, null);
    }

    /* renamed from: w */
    public void m1339w(String str, Throwable th) {
        if (canLog(5)) {
            Log.w(this.tag, str, th);
        }
    }
}
