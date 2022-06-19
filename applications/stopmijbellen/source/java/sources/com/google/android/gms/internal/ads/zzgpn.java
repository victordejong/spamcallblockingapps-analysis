package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgpn.class */
public abstract class zzgpn<K, V, V2> implements zzgpr<Map<K, V2>> {
    private final Map<K, zzgqe<V>> zza;

    public zzgpn(Map<K, zzgqe<V>> map) {
        this.zza = Collections.unmodifiableMap(map);
    }

    public final Map<K, zzgqe<V>> zza() {
        return this.zza;
    }
}
