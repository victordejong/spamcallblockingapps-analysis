package com.google.common.collect;

import java.util.concurrent.ConcurrentMap;
/* renamed from: com.google.common.collect.e */
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/e.class */
public abstract class AbstractConcurrentMapC8806e<K, V> extends AbstractC8807f<K, V> implements ConcurrentMap<K, V> {
    @Override // com.google.common.collect.AbstractC8807f, com.google.common.collect.AbstractC8808g
    public abstract ConcurrentMap<K, V> delegate();

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public V putIfAbsent(K k, V v) {
        return delegate().putIfAbsent(k, v);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public boolean remove(Object obj, Object obj2) {
        return delegate().remove(obj, obj2);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public V replace(K k, V v) {
        return delegate().replace(k, v);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public boolean replace(K k, V v, V v2) {
        return delegate().replace(k, v, v2);
    }
}
