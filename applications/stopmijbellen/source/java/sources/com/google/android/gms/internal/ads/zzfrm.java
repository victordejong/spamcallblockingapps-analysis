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
import javax.annotation.CheckForNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfrm.class */
public abstract class zzfrm<K, V> extends zzfrp<K, V> implements Serializable {
    private transient Map<K, Collection<V>> zza;
    private transient int zzb;

    public zzfrm(Map<K, Collection<V>> map) {
        if (map.isEmpty()) {
            this.zza = map;
            return;
        }
        throw new IllegalArgumentException();
    }

    public static /* bridge */ /* synthetic */ void zzo(zzfrm zzfrmVar, Object obj) {
        Collection<V> collection;
        Map<K, Collection<V>> map = zzfrmVar.zza;
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
            zzfrmVar.zzb -= size;
        }
    }

    public abstract Collection<V> zza();

    public <E> Collection<E> zzb(Collection<E> collection) {
        throw null;
    }

    public Collection<V> zzc(K k, Collection<V> collection) {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzfts
    public final int zze() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzfrp
    public final Collection<V> zzf() {
        return new zzfro(this);
    }

    @Override // com.google.android.gms.internal.ads.zzfrp
    public final Iterator<V> zzg() {
        return new zzfqw(this);
    }

    public final List<V> zzh(K k, List<V> list, @CheckForNull zzfrj zzfrjVar) {
        return list instanceof RandomAccess ? new zzfrf(this, k, list, zzfrjVar) : new zzfrl(this, k, list, zzfrjVar);
    }

    @Override // com.google.android.gms.internal.ads.zzfrp
    public Map<K, Collection<V>> zzj() {
        throw null;
    }

    public final Map<K, Collection<V>> zzk() {
        Map<K, Collection<V>> map = this.zza;
        return map instanceof NavigableMap ? new zzfrd(this, (NavigableMap) map) : map instanceof SortedMap ? new zzfrg(this, (SortedMap) map) : new zzfqz(this, map);
    }

    @Override // com.google.android.gms.internal.ads.zzfrp
    public Set<K> zzl() {
        throw null;
    }

    public final Set<K> zzm() {
        Map<K, Collection<V>> map = this.zza;
        return map instanceof NavigableMap ? new zzfre(this, (NavigableMap) map) : map instanceof SortedMap ? new zzfrh(this, (SortedMap) map) : new zzfrc(this, map);
    }

    @Override // com.google.android.gms.internal.ads.zzfts
    public final void zzp() {
        for (Collection<V> collection : this.zza.values()) {
            collection.clear();
        }
        this.zza.clear();
        this.zzb = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzfrp, com.google.android.gms.internal.ads.zzfts
    public final boolean zzq(K k, V v) {
        Collection<V> collection = this.zza.get(k);
        if (collection != null) {
            if (!collection.add(v)) {
                return false;
            }
            this.zzb++;
            return true;
        }
        Collection<V> zza = zza();
        if (!zza.add(v)) {
            throw new AssertionError("New Collection violated the Collection spec");
        }
        this.zzb++;
        this.zza.put(k, zza);
        return true;
    }
}
