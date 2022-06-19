package com.google.android.gms.common.internal;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.gms.common.util.C2725v;
/* renamed from: com.google.android.gms.common.internal.s */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/s.class */
public final class C2662s {
    /* renamed from: a */
    public static int m13984a(int i) {
        if (i == 0) {
            throw new IllegalArgumentException("Given Integer is zero");
        }
        return i;
    }

    /* renamed from: a */
    public static <T> T m13981a(T t) {
        if (t == null) {
            throw new NullPointerException("null reference");
        }
        return t;
    }

    /* renamed from: a */
    public static <T> T m13980a(T t, Object obj) {
        if (t == null) {
            throw new NullPointerException(String.valueOf(obj));
        }
        return t;
    }

    /* renamed from: a */
    public static String m13979a(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Given String is empty or null");
        }
        return str;
    }

    /* renamed from: a */
    public static String m13978a(String str, Object obj) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
        return str;
    }

    /* renamed from: a */
    public static void m13985a() {
        m13971c("Must not be called on the main application thread");
    }

    /* renamed from: a */
    public static void m13983a(Handler handler) {
        String str = "null current looper";
        if (Looper.myLooper() != null) {
            str = Looper.myLooper().getThread().getName();
        }
        String name = handler.getLooper().getThread().getName();
        m13982a(handler, new StringBuilder(String.valueOf(name).length() + 36 + String.valueOf(str).length()).append("Must be called on ").append(name).append(" thread, but got ").append(str).append(".").toString());
    }

    /* renamed from: a */
    public static void m13982a(Handler handler, String str) {
        if (Looper.myLooper() != handler.getLooper()) {
            throw new IllegalStateException(str);
        }
    }

    /* renamed from: a */
    public static void m13977a(boolean z) {
        if (!z) {
            throw new IllegalStateException();
        }
    }

    /* renamed from: a */
    public static void m13976a(boolean z, Object obj) {
        if (!z) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }

    /* renamed from: a */
    public static void m13975a(boolean z, String str, Object... objArr) {
        if (!z) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }

    /* renamed from: b */
    public static void m13974b(String str) {
        if (!C2725v.m13806a()) {
            throw new IllegalStateException(str);
        }
    }

    /* renamed from: b */
    public static void m13973b(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    /* renamed from: b */
    public static void m13972b(boolean z, Object obj) {
        if (!z) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    /* renamed from: c */
    public static void m13971c(String str) {
        if (C2725v.m13806a()) {
            throw new IllegalStateException(str);
        }
    }
}
