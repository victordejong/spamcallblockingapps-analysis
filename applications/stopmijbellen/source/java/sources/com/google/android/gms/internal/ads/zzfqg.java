package com.google.android.gms.internal.ads;

import android.support.p012v4.media.C0082b;
import javax.annotation.CheckForNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfqg.class */
public final class zzfqg {
    public static int zza(int i, int i2, String str) {
        String str2;
        if (i < 0 || i >= i2) {
            if (i < 0) {
                str2 = zzfqr.zzb("%s (%s) must not be negative", "index", Integer.valueOf(i));
            } else if (i2 < 0) {
                throw new IllegalArgumentException(C0082b.m8758d(26, "negative size: ", i2));
            } else {
                str2 = zzfqr.zzb("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i), Integer.valueOf(i2));
            }
            throw new IndexOutOfBoundsException(str2);
        }
        return i;
    }

    public static int zzb(int i, int i2, String str) {
        if (i < 0 || i > i2) {
            throw new IndexOutOfBoundsException(zzh(i, i2, "index"));
        }
        return i;
    }

    public static <T> T zzc(@CheckForNull T t, @CheckForNull Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException((String) obj);
    }

    public static <T> T zzd(@CheckForNull T t, String str, @CheckForNull Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(zzfqr.zzb(str, obj));
    }

    public static void zze(boolean z, @CheckForNull Object obj) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException((String) obj);
    }

    public static void zzf(int i, int i2, int i3) {
        if (i < 0 || i2 < i || i2 > i3) {
            throw new IndexOutOfBoundsException((i < 0 || i > i3) ? zzh(i, i3, "start index") : (i2 < 0 || i2 > i3) ? zzh(i2, i3, "end index") : zzfqr.zzb("end index (%s) must not be less than start index (%s)", Integer.valueOf(i2), Integer.valueOf(i)));
        }
    }

    public static void zzg(boolean z, @CheckForNull Object obj) {
        if (z) {
            return;
        }
        throw new IllegalStateException((String) obj);
    }

    private static String zzh(int i, int i2, String str) {
        if (i < 0) {
            return zzfqr.zzb("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 < 0) {
            throw new IllegalArgumentException(C0082b.m8758d(26, "negative size: ", i2));
        }
        return zzfqr.zzb("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
    }
}
