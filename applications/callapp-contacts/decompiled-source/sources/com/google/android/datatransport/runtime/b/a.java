package com.google.android.datatransport.runtime.b;

import android.util.Log;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/b/a.class */
public final class a {
    private a() {
    }

    public static String a(String str) {
        return "TransportRuntime.".concat(String.valueOf(str));
    }

    public static void a(String str, String str2, Object obj) {
        a(str);
        String.format(str2, obj);
    }

    public static void a(String str, String str2, Throwable th) {
        Log.e(a(str), str2, th);
    }

    public static void a(String str, String str2, Object... objArr) {
        a(str);
        String.format(str2, objArr);
    }
}
