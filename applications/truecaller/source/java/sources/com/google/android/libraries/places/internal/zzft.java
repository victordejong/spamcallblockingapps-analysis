package com.google.android.libraries.places.internal;

import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzft.class */
public final class zzft {
    public static int zza(int i, int i2) {
        String str;
        if (i < 0 || i >= i2) {
            if (i < 0) {
                str = zzfz.zza("%s (%s) must not be negative", "index", Integer.valueOf(i));
            } else if (i2 < 0) {
                throw new IllegalArgumentException(C22128a.m8690L1(26, "negative size: ", i2));
            } else {
                str = zzfz.zza("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i), Integer.valueOf(i2));
            }
            throw new IndexOutOfBoundsException(str);
        }
        return i;
    }

    public static int zza(int i, int i2, String str) {
        if (i < 0 || i > i2) {
            throw new IndexOutOfBoundsException(zzb(i, i2, str));
        }
        return i;
    }

    public static <T> T zza(T t) {
        Objects.requireNonNull(t);
        return t;
    }

    public static <T> T zza(T t, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    public static void zza(int i, int i2, int i3) {
        if (i < 0 || i2 < i || i2 > i3) {
            throw new IndexOutOfBoundsException((i < 0 || i > i3) ? zzb(i, i3, "start index") : (i2 < 0 || i2 > i3) ? zzb(i2, i3, "end index") : zzfz.zza("end index (%s) must not be less than start index (%s)", Integer.valueOf(i2), Integer.valueOf(i)));
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
        throw new IllegalArgumentException(zzfz.zza(str, Character.valueOf(c)));
    }

    public static void zza(boolean z, String str, int i) {
        if (z) {
            return;
        }
        throw new IllegalStateException(zzfz.zza(str, Integer.valueOf(i)));
    }

    public static void zza(boolean z, String str, Object obj, Object obj2, Object obj3) {
        if (z) {
            return;
        }
        throw new IllegalStateException(zzfz.zza(str, obj, obj2, obj3));
    }

    public static int zzb(int i, int i2) {
        if (i < 0 || i > i2) {
            throw new IndexOutOfBoundsException(zzb(i, i2, "index"));
        }
        return i;
    }

    private static String zzb(int i, int i2, String str) {
        if (i < 0) {
            return zzfz.zza("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 < 0) {
            throw new IllegalArgumentException(C22128a.m8690L1(26, "negative size: ", i2));
        }
        return zzfz.zza("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
    }

    public static void zzb(boolean z, Object obj) {
        if (z) {
            return;
        }
        throw new IllegalStateException(String.valueOf(obj));
    }
}
