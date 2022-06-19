package com.nostra13.universalimageloader.utils;

import android.util.Log;
import com.nostra13.universalimageloader.core.ImageLoader;
/* renamed from: com.nostra13.universalimageloader.utils.L */
/* loaded from: classes2-dex2jar.jar:com/nostra13/universalimageloader/utils/L.class */
public final class C1836L {
    private static final String LOG_FORMAT = "%1$s\n%2$s";
    private static volatile boolean writeDebugLogs = false;
    private static volatile boolean writeLogs = true;

    private C1836L() {
    }

    /* renamed from: d */
    public static void m1114d(String str, Object... objArr) {
        if (writeDebugLogs) {
            log(3, null, str, objArr);
        }
    }

    @Deprecated
    public static void disableLogging() {
        writeLogs(false);
    }

    /* renamed from: e */
    public static void m1113e(String str, Object... objArr) {
        log(6, null, str, objArr);
    }

    /* renamed from: e */
    public static void m1112e(Throwable th) {
        log(6, th, null, new Object[0]);
    }

    /* renamed from: e */
    public static void m1111e(Throwable th, String str, Object... objArr) {
        log(6, th, str, objArr);
    }

    @Deprecated
    public static void enableLogging() {
        writeLogs(true);
    }

    /* renamed from: i */
    public static void m1110i(String str, Object... objArr) {
        log(4, null, str, objArr);
    }

    private static void log(int i, Throwable th, String str, Object... objArr) {
        if (!writeLogs) {
            return;
        }
        String str2 = str;
        if (objArr.length > 0) {
            str2 = String.format(str, objArr);
        }
        if (th != null) {
            String str3 = str2;
            if (str2 == null) {
                str3 = th.getMessage();
            }
            str2 = String.format(LOG_FORMAT, str3, Log.getStackTraceString(th));
        }
        Log.println(i, ImageLoader.TAG, str2);
    }

    /* renamed from: w */
    public static void m1109w(String str, Object... objArr) {
        log(5, null, str, objArr);
    }

    public static void writeDebugLogs(boolean z) {
        writeDebugLogs = z;
    }

    public static void writeLogs(boolean z) {
        writeLogs = z;
    }
}
