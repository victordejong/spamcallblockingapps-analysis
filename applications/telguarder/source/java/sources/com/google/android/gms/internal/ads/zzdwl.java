package com.google.android.gms.internal.ads;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Objects;
import org.checkerframework.checker.nullness.compatqual.NonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdwl.class */
public final class zzdwl {
    public static void checkArgument(boolean z, @NullableDecl Object obj) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException(String.valueOf(obj));
    }

    @NonNullDecl
    public static <T> T checkNotNull(@NonNullDecl T t) {
        Objects.requireNonNull(t);
        return t;
    }

    @NonNullDecl
    public static <T> T checkNotNull(@NonNullDecl T t, @NullableDecl Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    @NonNullDecl
    public static <T> T zza(@NonNullDecl T t, @NullableDecl String str, @NullableDecl Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(zzdwt.zzb(str, obj));
    }

    public static int zzb(int i, int i2, @NullableDecl String str) {
        if (i < 0 || i > i2) {
            throw new IndexOutOfBoundsException(zzc(i, i2, str));
        }
        return i;
    }

    private static String zzc(int i, int i2, @NullableDecl String str) {
        if (i < 0) {
            return zzdwt.zzb("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 >= 0) {
            return zzdwt.zzb("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
        }
        StringBuilder sb = new StringBuilder(26);
        sb.append("negative size: ");
        sb.append(i2);
        throw new IllegalArgumentException(sb.toString());
    }

    public static void zzf(int i, int i2, int i3) {
        if (i < 0 || i2 < i || i2 > i3) {
            throw new IndexOutOfBoundsException((i < 0 || i > i3) ? zzc(i, i3, "start index") : (i2 < 0 || i2 > i3) ? zzc(i2, i3, "end index") : zzdwt.zzb("end index (%s) must not be less than start index (%s)", Integer.valueOf(i2), Integer.valueOf(i)));
        }
    }

    public static int zzt(int i, int i2) {
        String str;
        if (i < 0 || i >= i2) {
            if (i < 0) {
                str = zzdwt.zzb("%s (%s) must not be negative", FirebaseAnalytics.Param.INDEX, Integer.valueOf(i));
            } else if (i2 < 0) {
                StringBuilder sb = new StringBuilder(26);
                sb.append("negative size: ");
                sb.append(i2);
                throw new IllegalArgumentException(sb.toString());
            } else {
                str = zzdwt.zzb("%s (%s) must be less than size (%s)", FirebaseAnalytics.Param.INDEX, Integer.valueOf(i), Integer.valueOf(i2));
            }
            throw new IndexOutOfBoundsException(str);
        }
        return i;
    }

    public static int zzu(int i, int i2) {
        if (i < 0 || i > i2) {
            throw new IndexOutOfBoundsException(zzc(i, i2, FirebaseAnalytics.Param.INDEX));
        }
        return i;
    }
}
