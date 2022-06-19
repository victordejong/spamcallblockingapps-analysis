package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfng.class */
public abstract class zzfng<K, V> implements zzfpj<K, V> {
    private transient Set<K> zza;
    private transient Collection<V> zzb;
    private transient Map<K, Collection<V>> zzc;

    public final boolean equals(Object obj) {
        boolean z;
        if (obj == this) {
            z = true;
        } else if (obj instanceof zzfpj) {
            return zzu().equals(((zzfpj) obj).zzu());
        } else {
            z = false;
        }
        return z;
    }

    public final int hashCode() {
        return zzu().hashCode();
    }

    public final String toString() {
        return zzu().toString();
    }

    @Override // com.google.android.gms.internal.ads.zzfpj
    public boolean zzh(K k, V v) {
        throw null;
    }

    public abstract Set<K> zzk();

    public abstract Collection<V> zzn();

    public Iterator<V> zzo() {
        throw null;
    }

    public abstract Map<K, Collection<V>> zzp();

    public boolean zzr(Object obj) {
        for (Collection<V> collection : zzu().values()) {
            if (collection.contains(obj)) {
                return true;
            }
        }
        return false;
    }

    public final Set<K> zzs() {
        Set<K> set = this.zza;
        Set<K> set2 = set;
        if (set == null) {
            set2 = zzk();
            this.zza = set2;
        }
        return set2;
    }

    @Override // com.google.android.gms.internal.ads.zzfpj
    public Collection<V> zzt() {
        Collection<V> collection = this.zzb;
        Collection<V> collection2 = collection;
        if (collection == null) {
            collection2 = zzn();
            this.zzb = collection2;
        }
        return collection2;
    }

    @Override // com.google.android.gms.internal.ads.zzfpj
    public Map<K, Collection<V>> zzu() {
        Map<K, Collection<V>> map = this.zzc;
        Map<K, Collection<V>> map2 = map;
        if (map == null) {
            map2 = zzp();
            this.zzc = map2;
        }
        return map2;
    }
}
