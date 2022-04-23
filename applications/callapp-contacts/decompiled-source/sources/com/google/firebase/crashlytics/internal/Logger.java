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

    public void d(String str) {
        d(str, null);
    }

    public void d(String str, Throwable th) {
        canLog(3);
    }

    public void e(String str) {
        e(str, null);
    }

    public void e(String str, Throwable th) {
        if (canLog(6)) {
            Log.e(this.tag, str, th);
        }
    }

    public void i(String str) {
        i(str, null);
    }

    public void i(String str, Throwable th) {
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

    public void v(String str) {
        v(str, null);
    }

    public void v(String str, Throwable th) {
        canLog(2);
    }

    public void w(String str) {
        w(str, null);
    }

    public void w(String str, Throwable th) {
        if (canLog(5)) {
            Log.w(this.tag, str, th);
        }
    }
}
