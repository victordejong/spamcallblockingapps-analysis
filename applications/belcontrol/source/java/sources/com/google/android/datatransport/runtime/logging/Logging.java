package com.google.android.datatransport.runtime.logging;

import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/logging/Logging.class */
public final class Logging {
    private Logging() {
    }

    /* renamed from: d */
    public static void m4448d(String str, String str2) {
        Log.d(getTag(str), str2);
    }

    /* renamed from: d */
    public static void m4447d(String str, String str2, Object obj) {
        Log.d(getTag(str), String.format(str2, obj));
    }

    /* renamed from: d */
    public static void m4446d(String str, String str2, Object obj, Object obj2) {
        Log.d(getTag(str), String.format(str2, obj, obj2));
    }

    /* renamed from: d */
    public static void m4445d(String str, String str2, Object... objArr) {
        Log.d(getTag(str), String.format(str2, objArr));
    }

    /* renamed from: e */
    public static void m4444e(String str, String str2, Throwable th) {
        Log.e(getTag(str), str2, th);
    }

    private static String getTag(String str) {
        return "TransportRuntime." + str;
    }

    /* renamed from: i */
    public static void m4443i(String str, String str2) {
        Log.i(getTag(str), str2);
    }

    /* renamed from: w */
    public static void m4442w(String str, String str2, Object obj) {
        Log.w(getTag(str), String.format(str2, obj));
    }
}
