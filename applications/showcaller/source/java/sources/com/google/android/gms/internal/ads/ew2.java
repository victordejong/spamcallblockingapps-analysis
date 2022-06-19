package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ew2.class */
abstract class ew2<K, V> implements tx2<K, V> {

    /* renamed from: d */
    private transient Set<K> f22580d;

    /* renamed from: e */
    private transient Collection<V> f22581e;

    /* renamed from: f */
    private transient Map<K, Collection<V>> f22582f;

    public final boolean equals(Object obj) {
        boolean z;
        if (obj == this) {
            z = true;
        } else if (obj instanceof tx2) {
            return zzu().equals(((tx2) obj).zzu());
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

    @Override // com.google.android.gms.internal.ads.tx2
    public boolean zzh(K k, V v) {
        throw null;
    }

    abstract Set<K> zzk();

    abstract Collection<V> zzn();

    public Iterator<V> zzo() {
        throw null;
    }

    abstract Map<K, Collection<V>> zzp();

    public boolean zzr(Object obj) {
        for (Collection<V> collection : zzu().values()) {
            if (collection.contains(obj)) {
                return true;
            }
        }
        return false;
    }

    public final Set<K> zzs() {
        Set<K> set = this.f22580d;
        Set<K> set2 = set;
        if (set == null) {
            set2 = zzk();
            this.f22580d = set2;
        }
        return set2;
    }

    @Override // com.google.android.gms.internal.ads.tx2
    public Collection<V> zzt() {
        Collection<V> collection = this.f22581e;
        Collection<V> collection2 = collection;
        if (collection == null) {
            collection2 = zzn();
            this.f22581e = collection2;
        }
        return collection2;
    }

    @Override // com.google.android.gms.internal.ads.tx2
    public Map<K, Collection<V>> zzu() {
        Map<K, Collection<V>> map = this.f22582f;
        Map<K, Collection<V>> map2 = map;
        if (map == null) {
            map2 = zzp();
            this.f22582f = map2;
        }
        return map2;
    }
}
