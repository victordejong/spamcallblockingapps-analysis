package com.bytedance.sdk.openadsdk.p167g.p168a;

import android.util.Log;
/* renamed from: com.bytedance.sdk.openadsdk.g.a.i */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/g/a/i.class */
class C4884i {

    /* renamed from: a */
    private static boolean f17847a;

    /* renamed from: a */
    public static void m33658a(RuntimeException runtimeException) {
        if (!f17847a) {
            return;
        }
        throw runtimeException;
    }

    /* renamed from: a */
    public static void m33657a(String str) {
    }

    /* renamed from: a */
    public static void m33656a(String str, Throwable th) {
        if (f17847a) {
            Log.w("JsBridge2", str, th);
            Log.w("JsBridge2", "Stacktrace: " + Log.getStackTraceString(th));
        }
    }

    /* renamed from: a */
    public static void m33655a(boolean z) {
        f17847a = z;
    }

    /* renamed from: b */
    public static void m33654b(String str) {
        if (f17847a) {
            Log.w("JsBridge2", str);
        }
    }

    /* renamed from: b */
    public static void m33653b(String str, Throwable th) {
        if (f17847a) {
            Log.e("JsBridge2", str, th);
            Log.e("JsBridge2", "Stacktrace: " + Log.getStackTraceString(th));
        }
    }
}
