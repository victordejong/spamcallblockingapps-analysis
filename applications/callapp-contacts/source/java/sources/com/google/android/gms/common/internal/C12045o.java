package com.google.android.gms.common.internal;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.gms.common.util.C12118v;
import java.util.Objects;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
/* renamed from: com.google.android.gms.common.internal.o */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/o.class */
public final class C12045o {
    private C12045o() {
        throw new AssertionError("Uninstantiable");
    }

    @EnsuresNonNull({"#1"})
    /* renamed from: a */
    public static <T> T m19162a(T t) {
        Objects.requireNonNull(t, "null reference");
        return t;
    }

    @EnsuresNonNull({"#1"})
    /* renamed from: a */
    public static <T> T m19161a(T t, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    @EnsuresNonNull({"#1"})
    /* renamed from: a */
    public static String m19160a(String str) {
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        throw new IllegalArgumentException("Given String is empty or null");
    }

    @EnsuresNonNull({"#1"})
    /* renamed from: a */
    public static String m19159a(String str, Object obj) {
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        throw new IllegalArgumentException(String.valueOf(obj));
    }

    /* renamed from: a */
    public static void m19163a(Handler handler) {
        Looper myLooper = Looper.myLooper();
        if (myLooper != handler.getLooper()) {
            String name = myLooper != null ? myLooper.getThread().getName() : "null current looper";
            String name2 = handler.getLooper().getThread().getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name2).length() + 36 + String.valueOf(name).length());
            sb.append("Must be called on ");
            sb.append(name2);
            sb.append(" thread, but got ");
            sb.append(name);
            sb.append(".");
            throw new IllegalStateException(sb.toString());
        }
    }

    /* renamed from: a */
    public static void m19158a(boolean z) {
        if (z) {
            return;
        }
        throw new IllegalStateException();
    }

    /* renamed from: a */
    public static void m19157a(boolean z, Object obj) {
        if (z) {
            return;
        }
        throw new IllegalStateException(String.valueOf(obj));
    }

    /* renamed from: a */
    public static void m19156a(boolean z, String str, Object... objArr) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException(String.format(str, objArr));
    }

    /* renamed from: b */
    public static void m19155b(String str) {
        if (C12118v.m19000a()) {
            return;
        }
        throw new IllegalStateException(str);
    }

    /* renamed from: b */
    public static void m19154b(boolean z) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: b */
    public static void m19153b(boolean z, Object obj) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException(String.valueOf(obj));
    }

    /* renamed from: c */
    public static void m19152c(String str) {
        if (!C12118v.m19000a()) {
            return;
        }
        throw new IllegalStateException(str);
    }
}
