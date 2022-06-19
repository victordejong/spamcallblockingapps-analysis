package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.dataflow.qual.Pure;
/* renamed from: com.google.android.gms.internal.ads.y8 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/y8.class */
public final class C7173y8 {
    @Pure
    /* renamed from: a */
    public static void m8898a(boolean z) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException();
    }

    @Pure
    /* renamed from: b */
    public static void m8897b(boolean z, Object obj) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException(String.valueOf(obj));
    }

    @Pure
    /* renamed from: c */
    public static int m8896c(int i, int i2, int i3) {
        if (i < 0 || i >= i3) {
            throw new IndexOutOfBoundsException();
        }
        return i;
    }

    @Pure
    /* renamed from: d */
    public static void m8895d(boolean z) {
        if (z) {
            return;
        }
        throw new IllegalStateException();
    }

    @EnsuresNonNull({"#1"})
    @Pure
    /* renamed from: e */
    public static <T> T m8894e(T t) {
        if (t != null) {
            return t;
        }
        throw new IllegalStateException();
    }

    @EnsuresNonNull({"#1"})
    @Pure
    /* renamed from: f */
    public static String m8893f(String str) {
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        throw new IllegalArgumentException();
    }
}
