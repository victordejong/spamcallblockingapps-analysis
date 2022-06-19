package com.google.android.datatransport.runtime.logging;

import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/logging/Logging.class */
public final class Logging {
    private Logging() {
    }

    /* renamed from: d */
    public static void m1385d(String str, String str2) {
        Log.d(getTag(str), str2);
    }

    /* renamed from: d */
    public static void m1384d(String str, String str2, Object obj) {
        Log.d(getTag(str), String.format(str2, obj));
    }

    /* renamed from: d */
    public static void m1383d(String str, String str2, Object obj, Object obj2) {
        Log.d(getTag(str), String.format(str2, obj, obj2));
    }

    /* renamed from: d */
    public static void m1382d(String str, String str2, Object... objArr) {
        Log.d(getTag(str), String.format(str2, objArr));
    }

    /* renamed from: e */
    public static void m1381e(String str, String str2, Throwable th) {
        Log.e(getTag(str), str2, th);
    }

    private static String getTag(String str) {
        return "TransportRuntime." + str;
    }

    /* renamed from: i */
    public static void m1380i(String str, String str2) {
        Log.i(getTag(str), str2);
    }

    /* renamed from: w */
    public static void m1379w(String str, String str2, Object obj) {
        Log.w(getTag(str), String.format(str2, obj));
    }
}
