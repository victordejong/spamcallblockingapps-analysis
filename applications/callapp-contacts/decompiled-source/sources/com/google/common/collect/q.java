package com.google.common.collect;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/q.class */
public abstract class q<K, V> extends r implements Map<K, V> {
    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public abstract Map<K, V> c();

    @Override // java.util.Map
    public void clear() {
        c().clear();
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return c().containsKey(obj);
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        return c().containsValue(obj);
    }

    @Override // java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        return c().entrySet();
    }

    @Override // java.util.Map
    public boolean equals(Object obj) {
        return obj == this || c().equals(obj);
    }

    @Override // java.util.Map
    public V get(Object obj) {
        return c().get(obj);
    }

    @Override // java.util.Map
    public int hashCode() {
        return c().hashCode();
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return c().isEmpty();
    }

    @Override // java.util.Map
    public Set<K> keySet() {
        return c().keySet();
    }

    @Override // java.util.Map
    public V put(K k, V v) {
        return c().put(k, v);
    }

    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        c().putAll(map);
    }

    @Override // java.util.Map
    public V remove(Object obj) {
        return c().remove(obj);
    }

    @Override // java.util.Map
    public int size() {
        return c().size();
    }

    @Override // java.util.Map
    public Collection<V> values() {
        return c().values();
    }
}
