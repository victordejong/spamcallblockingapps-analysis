package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgkx.class */
public final class zzgkx {
    public static <T> List<T> zza(int i) {
        return i == 0 ? Collections.emptyList() : new ArrayList(i);
    }

    public static <T> HashSet<T> zzb(int i) {
        return new HashSet<>(zzd(i));
    }

    public static <K, V> LinkedHashMap<K, V> zzc(int i) {
        return new LinkedHashMap<>(zzd(i));
    }

    private static int zzd(int i) {
        if (i < 3) {
            return i + 1;
        }
        if (i >= 1073741824) {
            return Integer.MAX_VALUE;
        }
        return (int) ((i / 0.75f) + 1.0f);
    }
}
