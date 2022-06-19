package com.google.android.datatransport.p062h.p065v;

import android.util.Log;
/* renamed from: com.google.android.datatransport.h.v.a */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/v/a.class */
public final class C1310a {
    /* renamed from: a */
    public static void m9192a(String str, String str2, Object obj) {
        Log.d(m9189d(str), String.format(str2, obj));
    }

    /* renamed from: b */
    public static void m9191b(String str, String str2, Object... objArr) {
        Log.d(m9189d(str), String.format(str2, objArr));
    }

    /* renamed from: c */
    public static void m9190c(String str, String str2, Throwable th) {
        Log.e(m9189d(str), str2, th);
    }

    /* renamed from: d */
    private static String m9189d(String str) {
        return "TransportRuntime." + str;
    }

    /* renamed from: e */
    public static void m9188e(String str, String str2) {
        Log.i(m9189d(str), str2);
    }

    /* renamed from: f */
    public static void m9187f(String str, String str2, Object obj) {
        Log.w(m9189d(str), String.format(str2, obj));
    }
}
