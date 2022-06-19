package com.google.common.collect;

import java.util.concurrent.ConcurrentMap;
/* renamed from: com.google.common.collect.p */
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/p.class */
public abstract class AbstractConcurrentMapC15541p<K, V> extends AbstractC15542q<K, V> implements ConcurrentMap<K, V> {
    /* renamed from: a */
    public abstract ConcurrentMap<K, V> mo8733c();

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public V putIfAbsent(K k, V v) {
        return mo8733c().putIfAbsent(k, v);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public boolean remove(Object obj, Object obj2) {
        return mo8733c().remove(obj, obj2);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public V replace(K k, V v) {
        return mo8733c().replace(k, v);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public boolean replace(K k, V v, V v2) {
        return mo8733c().replace(k, v, v2);
    }
}
