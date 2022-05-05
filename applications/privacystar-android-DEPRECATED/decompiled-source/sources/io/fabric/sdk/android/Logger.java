package io.fabric.sdk.android;
/* loaded from: classes2-dex2jar.jar:io/fabric/sdk/android/Logger.class */
public interface Logger {
    /* renamed from: d */
    void mo288d(String str, String str2);

    /* renamed from: d */
    void mo287d(String str, String str2, Throwable th);

    /* renamed from: e */
    void mo286e(String str, String str2);

    /* renamed from: e */
    void mo285e(String str, String str2, Throwable th);

    int getLogLevel();

    /* renamed from: i */
    void mo284i(String str, String str2);

    /* renamed from: i */
    void mo283i(String str, String str2, Throwable th);

    boolean isLoggable(String str, int i);

    void log(int i, String str, String str2);

    void log(int i, String str, String str2, boolean z);

    void setLogLevel(int i);

    /* renamed from: v */
    void mo282v(String str, String str2);

    /* renamed from: v */
    void mo281v(String str, String str2, Throwable th);

    /* renamed from: w */
    void mo280w(String str, String str2);

    /* renamed from: w */
    void mo279w(String str, String str2, Throwable th);
}
