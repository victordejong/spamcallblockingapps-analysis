package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NavigableMap;
import java.util.Objects;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfnd.class */
public abstract class zzfnd<K, V> extends zzfng<K, V> implements Serializable {
    private transient Map<K, Collection<V>> zza;
    private transient int zzb;

    public zzfnd(Map<K, Collection<V>> map) {
        if (map.isEmpty()) {
            this.zza = map;
            return;
        }
        throw new IllegalArgumentException();
    }

    public static /* synthetic */ void zzm(zzfnd zzfndVar, Object obj) {
        Collection<V> collection;
        Map<K, Collection<V>> map = zzfndVar.zza;
        Objects.requireNonNull(map);
        try {
            collection = map.remove(obj);
        } catch (ClassCastException | NullPointerException e) {
            collection = null;
        }
        Collection<V> collection2 = collection;
        if (collection2 != null) {
            int size = collection2.size();
            collection2.clear();
            zzfndVar.zzb -= size;
        }
    }

    public <E> Collection<E> zza(Collection<E> collection) {
        throw null;
    }

    public Collection<V> zzb(K k, Collection<V> collection) {
        throw null;
    }

    public abstract Collection<V> zzc();

    @Override // com.google.android.gms.internal.ads.zzfpj
    public final int zzg() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzfng, com.google.android.gms.internal.ads.zzfpj
    public final boolean zzh(K k, V v) {
        Collection<V> collection = this.zza.get(k);
        if (collection != null) {
            if (!collection.add(v)) {
                return false;
            }
            this.zzb++;
            return true;
        }
        Collection<V> zzc = zzc();
        if (!zzc.add(v)) {
            throw new AssertionError("New Collection violated the Collection spec");
        }
        this.zzb++;
        this.zza.put(k, zzc);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzfpj
    public final void zzi() {
        for (Collection<V> collection : this.zza.values()) {
            collection.clear();
        }
        this.zza.clear();
        this.zzb = 0;
    }

    public final List<V> zzj(K k, List<V> list, zzfna zzfnaVar) {
        return list instanceof RandomAccess ? new zzfmw(this, k, list, zzfnaVar) : new zzfnc(this, k, list, zzfnaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzfng
    public Set<K> zzk() {
        throw null;
    }

    public final Set<K> zzl() {
        Map<K, Collection<V>> map = this.zza;
        return map instanceof NavigableMap ? new zzfmv(this, (NavigableMap) map) : map instanceof SortedMap ? new zzfmy(this, (SortedMap) map) : new zzfmt(this, map);
    }

    @Override // com.google.android.gms.internal.ads.zzfng
    public final Collection<V> zzn() {
        return new zzfnf(this);
    }

    @Override // com.google.android.gms.internal.ads.zzfng
    public final Iterator<V> zzo() {
        return new zzfmn(this);
    }

    @Override // com.google.android.gms.internal.ads.zzfng
    public Map<K, Collection<V>> zzp() {
        throw null;
    }

    public final Map<K, Collection<V>> zzq() {
        Map<K, Collection<V>> map = this.zza;
        return map instanceof NavigableMap ? new zzfmu(this, (NavigableMap) map) : map instanceof SortedMap ? new zzfmx(this, (SortedMap) map) : new zzfmq(this, map);
    }
}
