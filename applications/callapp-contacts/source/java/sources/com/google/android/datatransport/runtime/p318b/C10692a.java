package com.google.android.datatransport.runtime.p318b;

import android.util.Log;
/* renamed from: com.google.android.datatransport.runtime.b.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/b/a.class */
public final class C10692a {
    private C10692a() {
    }

    /* renamed from: a */
    public static String m22518a(String str) {
        return "TransportRuntime.".concat(String.valueOf(str));
    }

    /* renamed from: a */
    public static void m22517a(String str, String str2, Object obj) {
        m22518a(str);
        String.format(str2, obj);
    }

    /* renamed from: a */
    public static void m22516a(String str, String str2, Throwable th) {
        Log.e(m22518a(str), str2, th);
    }

    /* renamed from: a */
    public static void m22515a(String str, String str2, Object... objArr) {
        m22518a(str);
        String.format(str2, objArr);
    }
}
