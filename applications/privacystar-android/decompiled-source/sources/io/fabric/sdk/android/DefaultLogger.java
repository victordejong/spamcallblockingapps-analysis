package io.fabric.sdk.android;

import android.util.Log;
/* loaded from: classes2-dex2jar.jar:io/fabric/sdk/android/DefaultLogger.class */
public class DefaultLogger implements Logger {
    private int logLevel;

    public DefaultLogger() {
        this.logLevel = 4;
    }

    public DefaultLogger(int i) {
        this.logLevel = i;
    }

    @Override // io.fabric.sdk.android.Logger
    /* renamed from: d */
    public void mo288d(String str, String str2) {
        mo287d(str, str2, null);
    }

    @Override // io.fabric.sdk.android.Logger
    /* renamed from: d */
    public void mo287d(String str, String str2, Throwable th) {
        if (isLoggable(str, 3)) {
            Log.d(str, str2, th);
        }
    }

    @Override // io.fabric.sdk.android.Logger
    /* renamed from: e */
    public void mo286e(String str, String str2) {
        mo285e(str, str2, null);
    }

    @Override // io.fabric.sdk.android.Logger
    /* renamed from: e */
    public void mo285e(String str, String str2, Throwable th) {
        if (isLoggable(str, 6)) {
            Log.e(str, str2, th);
        }
    }

    @Override // io.fabric.sdk.android.Logger
    public int getLogLevel() {
        return this.logLevel;
    }

    @Override // io.fabric.sdk.android.Logger
    /* renamed from: i */
    public void mo284i(String str, String str2) {
        mo283i(str, str2, null);
    }

    @Override // io.fabric.sdk.android.Logger
    /* renamed from: i */
    public void mo283i(String str, String str2, Throwable th) {
        if (isLoggable(str, 4)) {
            Log.i(str, str2, th);
        }
    }

    @Override // io.fabric.sdk.android.Logger
    public boolean isLoggable(String str, int i) {
        return this.logLevel <= i || Log.isLoggable(str, i);
    }

    @Override // io.fabric.sdk.android.Logger
    public void log(int i, String str, String str2) {
        log(i, str, str2, false);
    }

    @Override // io.fabric.sdk.android.Logger
    public void log(int i, String str, String str2, boolean z) {
        if (z || isLoggable(str, i)) {
            Log.println(i, str, str2);
        }
    }

    @Override // io.fabric.sdk.android.Logger
    public void setLogLevel(int i) {
        this.logLevel = i;
    }

    @Override // io.fabric.sdk.android.Logger
    /* renamed from: v */
    public void mo282v(String str, String str2) {
        mo281v(str, str2, null);
    }

    @Override // io.fabric.sdk.android.Logger
    /* renamed from: v */
    public void mo281v(String str, String str2, Throwable th) {
        if (isLoggable(str, 2)) {
            Log.v(str, str2, th);
        }
    }

    @Override // io.fabric.sdk.android.Logger
    /* renamed from: w */
    public void mo280w(String str, String str2) {
        mo279w(str, str2, null);
    }

    @Override // io.fabric.sdk.android.Logger
    /* renamed from: w */
    public void mo279w(String str, String str2, Throwable th) {
        if (isLoggable(str, 5)) {
            Log.w(str, str2, th);
        }
    }
}
