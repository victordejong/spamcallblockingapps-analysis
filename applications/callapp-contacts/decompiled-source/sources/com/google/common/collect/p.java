package com.google.common.collect;

import java.util.concurrent.ConcurrentMap;
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/p.class */
public abstract class p<K, V> extends q<K, V> implements ConcurrentMap<K, V> {
    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public abstract ConcurrentMap<K, V> c();

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public V putIfAbsent(K k, V v) {
        return c().putIfAbsent(k, v);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public boolean remove(Object obj, Object obj2) {
        return c().remove(obj, obj2);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public V replace(K k, V v) {
        return c().replace(k, v);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public boolean replace(K k, V v, V v2) {
        return c().replace(k, v, v2);
    }
}
