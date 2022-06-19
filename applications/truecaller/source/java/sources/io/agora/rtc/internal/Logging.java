package io.agora.rtc.internal;

import android.util.Log;
/* loaded from: classes16-dex2jar.jar:io/agora/rtc/internal/Logging.class */
public class Logging {
    private static final int AGORA_LOG_DEBUG = 2048;
    private static final int AGORA_LOG_ERROR = 4;
    private static final int AGORA_LOG_INFO = 1;
    private static final int AGORA_LOG_WARN = 2;

    /* renamed from: d */
    public static void m3712d(String str) {
        RtcEngineImpl.nativeLog(2048, str);
    }

    /* renamed from: d */
    public static void m3711d(String str, String str2) {
        log(2048, str, str2);
    }

    /* renamed from: e */
    public static void m3710e(String str) {
        RtcEngineImpl.nativeLog(4, str);
    }

    /* renamed from: e */
    public static void m3709e(String str, String str2) {
        log(4, str, str2);
    }

    /* renamed from: e */
    public static void m3708e(String str, String str2, Throwable th) {
        log(4, str, str2);
        log(4, str, th.toString());
        log(4, str, Log.getStackTraceString(th));
    }

    /* renamed from: i */
    public static void m3707i(String str) {
        RtcEngineImpl.nativeLog(1, str);
    }

    /* renamed from: i */
    public static void m3706i(String str, String str2) {
        log(1, str, str2);
    }

    public static void log(int i, String str, String str2) {
        RtcEngineImpl.nativeLog(i, "[" + str + "] " + str2);
    }

    /* renamed from: w */
    public static void m3705w(String str) {
        RtcEngineImpl.nativeLog(2, str);
    }

    /* renamed from: w */
    public static void m3704w(String str, String str2) {
        log(2, str, str2);
    }
}
