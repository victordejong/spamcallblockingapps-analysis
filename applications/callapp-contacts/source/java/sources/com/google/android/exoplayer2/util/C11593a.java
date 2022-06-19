package com.google.android.exoplayer2.util;

import java.util.Objects;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.dataflow.qual.Pure;
/* renamed from: com.google.android.exoplayer2.util.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/a.class */
public final class C11593a {
    private C11593a() {
    }

    @Pure
    /* renamed from: a */
    public static int m20025a(int i, int i2) {
        if (i < 0 || i >= i2) {
            throw new IndexOutOfBoundsException();
        }
        return i;
    }

    @EnsuresNonNull({"#1"})
    @Pure
    /* renamed from: a */
    public static <T> T m20024a(T t) {
        if (t != null) {
            return t;
        }
        throw new IllegalStateException();
    }

    @EnsuresNonNull({"#1"})
    @Pure
    /* renamed from: a */
    public static <T> T m20023a(T t, Object obj) {
        if (t != null) {
            return t;
        }
        throw new IllegalStateException(String.valueOf(obj));
    }

    @Pure
    /* renamed from: a */
    public static void m20022a(boolean z) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException();
    }

    @Pure
    /* renamed from: a */
    public static void m20021a(boolean z, Object obj) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException(String.valueOf(obj));
    }

    @EnsuresNonNull({"#1"})
    @Pure
    /* renamed from: b */
    public static <T> T m20020b(T t) {
        Objects.requireNonNull(t);
        return t;
    }

    @Pure
    /* renamed from: b */
    public static void m20019b(boolean z) {
        if (z) {
            return;
        }
        throw new IllegalStateException();
    }

    @Pure
    /* renamed from: b */
    public static void m20018b(boolean z, Object obj) {
        if (z) {
            return;
        }
        throw new IllegalStateException(String.valueOf(obj));
    }
}
