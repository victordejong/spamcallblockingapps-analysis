package com.google.android.gms.internal.ads;

import java.util.AbstractMap;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/rx2.class */
abstract class rx2<K, V> extends AbstractMap<K, V> {

    /* renamed from: d */
    private transient Set<Map.Entry<K, V>> f29298d;

    /* renamed from: e */
    private transient Collection<V> f29299e;

    /* renamed from: a */
    abstract Set<Map.Entry<K, V>> mo11259a();

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.f29298d;
        Set<Map.Entry<K, V>> set2 = set;
        if (set == null) {
            set2 = mo11259a();
            this.f29298d = set2;
        }
        return set2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection<V> values() {
        Collection<V> collection = this.f29299e;
        qx2 qx2Var = collection;
        if (collection == null) {
            qx2Var = new qx2(this);
            this.f29299e = qx2Var;
        }
        return qx2Var;
    }
}
