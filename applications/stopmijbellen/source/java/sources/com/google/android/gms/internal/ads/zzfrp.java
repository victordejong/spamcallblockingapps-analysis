package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfrp.class */
abstract class zzfrp<K, V> implements zzfts<K, V> {
    @CheckForNull
    private transient Set<K> zza;
    @CheckForNull
    private transient Collection<V> zzb;
    @CheckForNull
    private transient Map<K, Collection<V>> zzc;

    public final boolean equals(@CheckForNull Object obj) {
        boolean z;
        if (obj == this) {
            z = true;
        } else if (obj instanceof zzfts) {
            return zzs().equals(((zzfts) obj).zzs());
        } else {
            z = false;
        }
        return z;
    }

    public final int hashCode() {
        return zzs().hashCode();
    }

    public final String toString() {
        return zzs().toString();
    }

    public abstract Collection<V> zzf();

    public Iterator<V> zzg() {
        throw null;
    }

    public abstract Map<K, Collection<V>> zzj();

    public abstract Set<K> zzl();

    @Override // com.google.android.gms.internal.ads.zzfts
    public boolean zzq(K k, V v) {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzfts
    public Collection<V> zzr() {
        Collection<V> collection = this.zzb;
        Collection<V> collection2 = collection;
        if (collection == null) {
            collection2 = zzf();
            this.zzb = collection2;
        }
        return collection2;
    }

    @Override // com.google.android.gms.internal.ads.zzfts
    public Map<K, Collection<V>> zzs() {
        Map<K, Collection<V>> map = this.zzc;
        Map<K, Collection<V>> map2 = map;
        if (map == null) {
            map2 = zzj();
            this.zzc = map2;
        }
        return map2;
    }

    public final Set<K> zzt() {
        Set<K> set = this.zza;
        Set<K> set2 = set;
        if (set == null) {
            set2 = zzl();
            this.zza = set2;
        }
        return set2;
    }

    public boolean zzu(@CheckForNull Object obj) {
        for (Collection<V> collection : zzs().values()) {
            if (collection.contains(obj)) {
                return true;
            }
        }
        return false;
    }
}
