package com.google.android.datatransport.p232h.p235v;

import android.util.Log;
/* renamed from: com.google.android.datatransport.h.v.a */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/v/a.class */
public final class C4687a {
    /* renamed from: a */
    public static void m21993a(String str, String str2, Object obj) {
        Log.d(m21990d(str), String.format(str2, obj));
    }

    /* renamed from: b */
    public static void m21992b(String str, String str2, Object... objArr) {
        Log.d(m21990d(str), String.format(str2, objArr));
    }

    /* renamed from: c */
    public static void m21991c(String str, String str2, Throwable th) {
        Log.e(m21990d(str), str2, th);
    }

    /* renamed from: d */
    private static String m21990d(String str) {
        return "TransportRuntime." + str;
    }

    /* renamed from: e */
    public static void m21989e(String str, String str2) {
        Log.i(m21990d(str), str2);
    }

    /* renamed from: f */
    public static void m21988f(String str, String str2, Object obj) {
        Log.w(m21990d(str), String.format(str2, obj));
    }
}
