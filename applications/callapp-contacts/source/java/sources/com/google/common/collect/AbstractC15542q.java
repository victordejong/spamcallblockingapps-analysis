package com.google.common.collect;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
/* renamed from: com.google.common.collect.q */
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/q.class */
public abstract class AbstractC15542q<K, V> extends AbstractC15543r implements Map<K, V> {
    /* renamed from: b */
    public abstract Map<K, V> mo8733c();

    @Override // java.util.Map
    public void clear() {
        mo8733c().clear();
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return mo8733c().containsKey(obj);
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        return mo8733c().containsValue(obj);
    }

    @Override // java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        return mo8733c().entrySet();
    }

    @Override // java.util.Map
    public boolean equals(Object obj) {
        return obj == this || mo8733c().equals(obj);
    }

    @Override // java.util.Map
    public V get(Object obj) {
        return mo8733c().get(obj);
    }

    @Override // java.util.Map
    public int hashCode() {
        return mo8733c().hashCode();
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return mo8733c().isEmpty();
    }

    @Override // java.util.Map
    public Set<K> keySet() {
        return mo8733c().keySet();
    }

    @Override // java.util.Map
    public V put(K k, V v) {
        return mo8733c().put(k, v);
    }

    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        mo8733c().putAll(map);
    }

    @Override // java.util.Map
    public V remove(Object obj) {
        return mo8733c().remove(obj);
    }

    @Override // java.util.Map
    public int size() {
        return mo8733c().size();
    }

    @Override // java.util.Map
    public Collection<V> values() {
        return mo8733c().values();
    }
}
