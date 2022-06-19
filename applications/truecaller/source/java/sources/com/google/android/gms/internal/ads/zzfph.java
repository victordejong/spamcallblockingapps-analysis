package com.google.android.gms.internal.ads;

import java.util.AbstractMap;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfph.class */
public abstract class zzfph<K, V> extends AbstractMap<K, V> {
    private transient Set<Map.Entry<K, V>> zza;
    private transient Set<K> zzb;
    private transient Collection<V> zzc;

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.zza;
        Set<Map.Entry<K, V>> set2 = set;
        if (set == null) {
            set2 = zza();
            this.zza = set2;
        }
        return set2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        Set<K> set = this.zzb;
        Set<K> set2 = set;
        if (set == null) {
            set2 = zzh();
            this.zzb = set2;
        }
        return set2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection<V> values() {
        Collection<V> collection = this.zzc;
        zzfpg zzfpgVar = collection;
        if (collection == null) {
            zzfpgVar = new zzfpg(this);
            this.zzc = zzfpgVar;
        }
        return zzfpgVar;
    }

    public abstract Set<Map.Entry<K, V>> zza();

    public Set<K> zzh() {
        return new zzfpf(this);
    }
}
