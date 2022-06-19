package com.google.android.gms.internal.ads;

import com.google.android.gms.common.api.Api;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgpo.class */
public final class zzgpo {
    public static <T> HashSet<T> zza(int i) {
        return new HashSet<>(zzd(i));
    }

    public static <K, V> LinkedHashMap<K, V> zzb(int i) {
        return new LinkedHashMap<>(zzd(i));
    }

    public static <T> List<T> zzc(int i) {
        return i == 0 ? Collections.emptyList() : new ArrayList(i);
    }

    private static int zzd(int i) {
        return i < 3 ? i + 1 : i < 1073741824 ? (int) ((i / 0.75f) + 1.0f) : Api.BaseClientBuilder.API_PRIORITY_OTHER;
    }
}
