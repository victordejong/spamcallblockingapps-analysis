package com.google.android.gms.internal.ads;

import java.util.LinkedHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgpm.class */
public class zzgpm<K, V, V2> {
    public final LinkedHashMap<K, zzgqe<V>> zza;

    public zzgpm(int i) {
        this.zza = zzgpo.zzb(i);
    }

    public final zzgpm<K, V, V2> zza(K k, zzgqe<V> zzgqeVar) {
        LinkedHashMap<K, zzgqe<V>> linkedHashMap = this.zza;
        zzgpz.zza(k, "key");
        zzgpz.zza(zzgqeVar, "provider");
        linkedHashMap.put(k, zzgqeVar);
        return this;
    }
}
