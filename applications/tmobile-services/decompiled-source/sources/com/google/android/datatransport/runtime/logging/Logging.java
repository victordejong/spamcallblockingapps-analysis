package com.google.android.datatransport.runtime.logging;

import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/logging/Logging.class */
public final class Logging {
    private Logging() {
    }

    /* renamed from: a */
    public static void m15376a(String str, String str2, Object obj) {
        Log.d(m15373d(str), String.format(str2, obj));
    }

    /* renamed from: b */
    public static void m15375b(String str, String str2, Object... objArr) {
        Log.d(m15373d(str), String.format(str2, objArr));
    }

    /* renamed from: c */
    public static void m15374c(String str, String str2, Throwable th) {
        Log.e(m15373d(str), str2, th);
    }

    /* renamed from: d */
    private static String m15373d(String str) {
        return "TransportRuntime." + str;
    }

    /* renamed from: e */
    public static void m15372e(String str, String str2) {
        Log.i(m15373d(str), str2);
    }

    /* renamed from: f */
    public static void m15371f(String str, String str2, Object obj) {
        Log.w(m15373d(str), String.format(str2, obj));
    }
}
