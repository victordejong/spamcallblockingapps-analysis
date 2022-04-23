package com.google.android.exoplayer2.util;

import java.util.Objects;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.dataflow.qual.Pure;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/a.class */
public final class a {
    private a() {
    }

    @Pure
    public static int a(int i, int i2) {
        if (i >= 0 && i < i2) {
            return i;
        }
        throw new IndexOutOfBoundsException();
    }

    @EnsuresNonNull({"#1"})
    @Pure
    public static <T> T a(T t) {
        if (t != null) {
            return t;
        }
        throw new IllegalStateException();
    }

    @EnsuresNonNull({"#1"})
    @Pure
    public static <T> T a(T t, Object obj) {
        if (t != null) {
            return t;
        }
        throw new IllegalStateException(String.valueOf(obj));
    }

    @Pure
    public static void a(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    @Pure
    public static void a(boolean z, Object obj) {
        if (!z) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    @EnsuresNonNull({"#1"})
    @Pure
    public static <T> T b(T t) {
        Objects.requireNonNull(t);
        return t;
    }

    @Pure
    public static void b(boolean z) {
        if (!z) {
            throw new IllegalStateException();
        }
    }

    @Pure
    public static void b(boolean z, Object obj) {
        if (!z) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }
}
