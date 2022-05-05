package com.tmobile.tmoid.helperlib.util;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/util/Log.class */
public class Log {

    @Deprecated
    /* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/util/Log$LoggingMode.class */
    public enum LoggingMode {
        PRINT_TO_LOG,
        REMOTE_VIA_IPC,
        DO_NOT_LOG
    }

    private Log() {
    }

    /* renamed from: d */
    public static void m4654d(String str, String str2) {
        m4653d(str, str2, null);
    }

    /* renamed from: d */
    public static void m4653d(String str, String str2, Throwable th) {
        printLog('D', str, str2, th);
    }

    /* renamed from: e */
    public static void m4652e(String str, String str2) {
        m4651e(str, str2, null);
    }

    /* renamed from: e */
    public static void m4651e(String str, String str2, Throwable th) {
        printLog('E', str, str2, th);
    }

    /* renamed from: i */
    public static void m4650i(String str, String str2) {
        m4649i(str, str2, null);
    }

    /* renamed from: i */
    public static void m4649i(String str, String str2, Throwable th) {
        printLog('I', str, str2, th);
    }

    @Deprecated
    public static void init(Context context, LoggingMode loggingMode, String str) {
        synchronized (Log.class) {
        }
    }

    private static void printLog(char c, String str, String str2, Throwable th) {
    }

    @Deprecated
    public static void stop() {
    }

    /* renamed from: v */
    public static void m4648v(String str, String str2) {
        m4647v(str, str2, null);
    }

    /* renamed from: v */
    public static void m4647v(String str, String str2, Throwable th) {
        printLog('V', str, str2, th);
    }

    /* renamed from: w */
    public static void m4646w(String str, String str2) {
        m4645w(str, str2, null);
    }

    /* renamed from: w */
    public static void m4645w(String str, String str2, Throwable th) {
        printLog('W', str, str2, th);
    }
}
