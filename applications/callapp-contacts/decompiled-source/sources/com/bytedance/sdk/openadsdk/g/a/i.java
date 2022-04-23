package com.bytedance.sdk.openadsdk.g.a;

import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/g/a/i.class */
class i {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f9532a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(RuntimeException runtimeException) {
        if (f9532a) {
            throw runtimeException;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(String str) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(String str, Throwable th) {
        if (f9532a) {
            Log.w("JsBridge2", str, th);
            Log.w("JsBridge2", "Stacktrace: " + Log.getStackTraceString(th));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(boolean z) {
        f9532a = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(String str) {
        if (f9532a) {
            Log.w("JsBridge2", str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(String str, Throwable th) {
        if (f9532a) {
            Log.e("JsBridge2", str, th);
            Log.e("JsBridge2", "Stacktrace: " + Log.getStackTraceString(th));
        }
    }
}
