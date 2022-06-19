package com.google.android.gms.internal.mlkit_translate;

import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzi.class */
public final class zzi {
    public static int zza(int i, int i2) {
        String str;
        if (i < 0 || i >= i2) {
            if (i < 0) {
                str = zzh.zza("%s (%s) must not be negative", "index", Integer.valueOf(i));
            } else if (i2 < 0) {
                throw new IllegalArgumentException(C22128a.m8690L1(26, "negative size: ", i2));
            } else {
                str = zzh.zza("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i), Integer.valueOf(i2));
            }
            throw new IndexOutOfBoundsException(str);
        }
        return i;
    }

    public static <T> T zza(T t) {
        Objects.requireNonNull(t);
        return t;
    }

    private static String zza(int i, int i2, String str) {
        if (i < 0) {
            return zzh.zza("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 < 0) {
            throw new IllegalArgumentException(C22128a.m8690L1(26, "negative size: ", i2));
        }
        return zzh.zza("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
    }

    public static void zza(int i, int i2, int i3) {
        if (i < 0 || i2 < i || i2 > i3) {
            throw new IndexOutOfBoundsException((i < 0 || i > i3) ? zza(i, i3, "start index") : (i2 < 0 || i2 > i3) ? zza(i2, i3, "end index") : zzh.zza("end index (%s) must not be less than start index (%s)", Integer.valueOf(i2), Integer.valueOf(i)));
        }
    }

    public static void zza(boolean z) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException();
    }

    public static void zza(boolean z, Object obj) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException(String.valueOf(obj));
    }

    public static void zza(boolean z, String str, char c) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException(zzh.zza(str, Character.valueOf(c)));
    }

    public static int zzb(int i, int i2) {
        if (i < 0 || i > i2) {
            throw new IndexOutOfBoundsException(zza(i, i2, "index"));
        }
        return i;
    }

    public static void zzb(boolean z) {
        if (z) {
            return;
        }
        throw new IllegalStateException();
    }
}
