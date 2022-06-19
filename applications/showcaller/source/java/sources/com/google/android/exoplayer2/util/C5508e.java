package com.google.android.exoplayer2.util;

import android.text.TextUtils;
import java.util.Objects;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
/* renamed from: com.google.android.exoplayer2.util.e */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/util/e.class */
public final class C5508e {
    /* renamed from: a */
    public static void m18915a(boolean z) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: b */
    public static void m18914b(boolean z, Object obj) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException(String.valueOf(obj));
    }

    /* renamed from: c */
    public static int m18913c(int i, int i2, int i3) {
        if (i < i2 || i >= i3) {
            throw new IndexOutOfBoundsException();
        }
        return i;
    }

    @EnsuresNonNull({"#1"})
    /* renamed from: d */
    public static String m18912d(String str) {
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        throw new IllegalArgumentException();
    }

    @EnsuresNonNull({"#1"})
    /* renamed from: e */
    public static <T> T m18911e(T t) {
        Objects.requireNonNull(t);
        return t;
    }

    /* renamed from: f */
    public static void m18910f(boolean z) {
        if (z) {
            return;
        }
        throw new IllegalStateException();
    }

    /* renamed from: g */
    public static void m18909g(boolean z, Object obj) {
        if (z) {
            return;
        }
        throw new IllegalStateException(String.valueOf(obj));
    }

    @EnsuresNonNull({"#1"})
    /* renamed from: h */
    public static <T> T m18908h(T t) {
        if (t != null) {
            return t;
        }
        throw new IllegalStateException();
    }

    @EnsuresNonNull({"#1"})
    /* renamed from: i */
    public static <T> T m18907i(T t, Object obj) {
        if (t != null) {
            return t;
        }
        throw new IllegalStateException(String.valueOf(obj));
    }
}
