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
public abstract class zzfnd<K, V> extends ew2<K, V> implements Serializable {

    /* renamed from: g */
    private transient Map<K, Collection<V>> f34051g;

    /* renamed from: h */
    private transient int f34052h;

    public zzfnd(Map<K, Collection<V>> map) {
        if (map.isEmpty()) {
            this.f34051g = map;
            return;
        }
        throw new IllegalArgumentException();
    }

    public static /* synthetic */ void zzm(zzfnd zzfndVar, Object obj) {
        Collection<V> collection;
        Map<K, Collection<V>> map = zzfndVar.f34051g;
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
            zzfndVar.f34052h -= size;
        }
    }

    public <E> Collection<E> zza(Collection<E> collection) {
        throw null;
    }

    public Collection<V> zzb(K k, Collection<V> collection) {
        throw null;
    }

    public abstract Collection<V> zzc();

    @Override // com.google.android.gms.internal.ads.tx2
    public final int zzg() {
        return this.f34052h;
    }

    @Override // com.google.android.gms.internal.ads.ew2, com.google.android.gms.internal.ads.tx2
    public final boolean zzh(K k, V v) {
        Collection<V> collection = this.f34051g.get(k);
        if (collection != null) {
            if (!collection.add(v)) {
                return false;
            }
            this.f34052h++;
            return true;
        }
        Collection<V> zzc = zzc();
        if (!zzc.add(v)) {
            throw new AssertionError("New Collection violated the Collection spec");
        }
        this.f34052h++;
        this.f34051g.put(k, zzc);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.tx2
    public final void zzi() {
        for (Collection<V> collection : this.f34051g.values()) {
            collection.clear();
        }
        this.f34051g.clear();
        this.f34052h = 0;
    }

    public final List<V> zzj(K k, List<V> list, zv2 zv2Var) {
        return list instanceof RandomAccess ? new vv2(this, k, list, zv2Var) : new bw2(this, k, list, zv2Var);
    }

    @Override // com.google.android.gms.internal.ads.ew2
    Set<K> zzk() {
        throw null;
    }

    public final Set<K> zzl() {
        Map<K, Collection<V>> map = this.f34051g;
        return map instanceof NavigableMap ? new uv2(this, (NavigableMap) map) : map instanceof SortedMap ? new xv2(this, (SortedMap) map) : new sv2(this, map);
    }

    @Override // com.google.android.gms.internal.ads.ew2
    final Collection<V> zzn() {
        return new dw2(this);
    }

    @Override // com.google.android.gms.internal.ads.ew2
    public final Iterator<V> zzo() {
        return new mv2(this);
    }

    @Override // com.google.android.gms.internal.ads.ew2
    Map<K, Collection<V>> zzp() {
        throw null;
    }

    public final Map<K, Collection<V>> zzq() {
        Map<K, Collection<V>> map = this.f34051g;
        return map instanceof NavigableMap ? new tv2(this, (NavigableMap) map) : map instanceof SortedMap ? new wv2(this, (SortedMap) map) : new pv2(this, map);
    }
}
