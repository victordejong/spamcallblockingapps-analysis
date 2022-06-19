package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.dataflow.qual.Pure;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdy.class */
public final class zzdy {
    @Pure
    public static int zza(int i, int i2, int i3) {
        if (i < 0 || i >= i3) {
            throw new IndexOutOfBoundsException();
        }
        return i;
    }

    @EnsuresNonNull({"#1"})
    @Pure
    public static <T> T zzb(T t) {
        if (t != null) {
            return t;
        }
        throw new IllegalStateException();
    }

    @EnsuresNonNull({"#1"})
    @Pure
    public static String zzc(String str) {
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        throw new IllegalArgumentException();
    }

    @Pure
    public static void zzd(boolean z) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException();
    }

    @Pure
    public static void zze(boolean z, Object obj) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException(String.valueOf(obj));
    }

    @Pure
    public static void zzf(boolean z) {
        if (z) {
            return;
        }
        throw new IllegalStateException();
    }
}
