package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgkw.class */
public abstract class zzgkw<K, V, V2> implements zzgla<Map<K, V2>> {
    private final Map<K, zzgln<V>> zza;

    public zzgkw(Map<K, zzgln<V>> map) {
        this.zza = Collections.unmodifiableMap(map);
    }

    public final Map<K, zzgln<V>> zza() {
        return this.zza;
    }
}
