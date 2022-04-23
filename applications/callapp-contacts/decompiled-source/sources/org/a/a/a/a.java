package org.a.a.a;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
/* loaded from: classes5-dex2jar.jar:org/a/a/a/a.class */
public abstract class a<K, V, C extends Collection<V>> implements Map<K, C> {

    /* renamed from: a  reason: collision with root package name */
    protected Map<K, C> f39120a;

    /* JADX INFO: Access modifiers changed from: protected */
    public a(Map<K, C> map) {
        this.f39120a = map;
    }

    private C a(K k, C c2) {
        C put;
        synchronized (this) {
            put = this.f39120a.put(k, c2);
        }
        return put;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public C remove(Object obj) {
        C remove;
        synchronized (this) {
            remove = this.f39120a.remove(obj);
        }
        return remove;
    }

    public final int a(K k, V v) {
        int size;
        synchronized (this) {
            C c2 = this.f39120a.get(k);
            C c3 = c2;
            if (c2 == null) {
                c3 = a();
                this.f39120a.put(k, c3);
            }
            c3.add(v);
            size = c3.size();
        }
        return size;
    }

    protected abstract C a();

    /* renamed from: a */
    public final C get(Object obj) {
        C c2;
        synchronized (this) {
            c2 = this.f39120a.get(obj);
        }
        return c2;
    }

    @Override // java.util.Map
    public void clear() {
        synchronized (this) {
            this.f39120a.clear();
        }
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        boolean containsKey;
        synchronized (this) {
            containsKey = this.f39120a.containsKey(obj);
        }
        return containsKey;
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        boolean containsValue;
        synchronized (this) {
            containsValue = this.f39120a.containsValue(obj);
        }
        return containsValue;
    }

    @Override // java.util.Map
    public Set<Map.Entry<K, C>> entrySet() {
        Set<Map.Entry<K, C>> entrySet;
        synchronized (this) {
            entrySet = this.f39120a.entrySet();
        }
        return entrySet;
    }

    @Override // java.util.Map
    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this) {
            equals = this.f39120a.equals(obj);
        }
        return equals;
    }

    @Override // java.util.Map
    public int hashCode() {
        int hashCode;
        synchronized (this) {
            hashCode = this.f39120a.hashCode();
        }
        return hashCode;
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this) {
            isEmpty = this.f39120a.isEmpty();
        }
        return isEmpty;
    }

    @Override // java.util.Map
    public Set<K> keySet() {
        Set<K> keySet;
        synchronized (this) {
            keySet = this.f39120a.keySet();
        }
        return keySet;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public /* synthetic */ Object put(Object obj, Object obj2) {
        return a((a<K, V, C>) obj, (Object) ((Collection) obj2));
    }

    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends C> map) {
        this.f39120a.putAll(map);
    }

    @Override // java.util.Map
    public int size() {
        int size;
        synchronized (this) {
            size = this.f39120a.size();
        }
        return size;
    }

    @Override // java.util.Map
    public Collection<C> values() {
        Collection<C> values;
        synchronized (this) {
            values = this.f39120a.values();
        }
        return values;
    }
}
