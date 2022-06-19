package org.p579a.p580a.p581a;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
/* renamed from: org.a.a.a.a */
/* loaded from: classes5-dex2jar.jar:org/a/a/a/a.class */
public abstract class AbstractC20715a<K, V, C extends Collection<V>> implements Map<K, C> {

    /* renamed from: a */
    protected Map<K, C> f67167a;

    public AbstractC20715a(Map<K, C> map) {
        this.f67167a = map;
    }

    /* renamed from: a */
    private C m612a(K k, C c) {
        C put;
        synchronized (this) {
            put = this.f67167a.put(k, c);
        }
        return put;
    }

    /* renamed from: b */
    public C remove(Object obj) {
        C remove;
        synchronized (this) {
            remove = this.f67167a.remove(obj);
        }
        return remove;
    }

    /* renamed from: a */
    public final int m613a(K k, V v) {
        int size;
        synchronized (this) {
            C c = this.f67167a.get(k);
            C c2 = c;
            if (c == null) {
                c2 = mo608a();
                this.f67167a.put(k, c2);
            }
            c2.add(v);
            size = c2.size();
        }
        return size;
    }

    /* renamed from: a */
    protected abstract C mo608a();

    /* renamed from: a */
    public final C get(Object obj) {
        C c;
        synchronized (this) {
            c = this.f67167a.get(obj);
        }
        return c;
    }

    @Override // java.util.Map
    public void clear() {
        synchronized (this) {
            this.f67167a.clear();
        }
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        boolean containsKey;
        synchronized (this) {
            containsKey = this.f67167a.containsKey(obj);
        }
        return containsKey;
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        boolean containsValue;
        synchronized (this) {
            containsValue = this.f67167a.containsValue(obj);
        }
        return containsValue;
    }

    @Override // java.util.Map
    public Set<Map.Entry<K, C>> entrySet() {
        Set<Map.Entry<K, C>> entrySet;
        synchronized (this) {
            entrySet = this.f67167a.entrySet();
        }
        return entrySet;
    }

    @Override // java.util.Map
    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this) {
            equals = this.f67167a.equals(obj);
        }
        return equals;
    }

    @Override // java.util.Map
    public int hashCode() {
        int hashCode;
        synchronized (this) {
            hashCode = this.f67167a.hashCode();
        }
        return hashCode;
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this) {
            isEmpty = this.f67167a.isEmpty();
        }
        return isEmpty;
    }

    @Override // java.util.Map
    public Set<K> keySet() {
        Set<K> keySet;
        synchronized (this) {
            keySet = this.f67167a.keySet();
        }
        return keySet;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public /* synthetic */ Object put(Object obj, Object obj2) {
        return m612a((AbstractC20715a<K, V, C>) obj, (Object) ((Collection) obj2));
    }

    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends C> map) {
        this.f67167a.putAll(map);
    }

    @Override // java.util.Map
    public int size() {
        int size;
        synchronized (this) {
            size = this.f67167a.size();
        }
        return size;
    }

    @Override // java.util.Map
    public Collection<C> values() {
        Collection<C> values;
        synchronized (this) {
            values = this.f67167a.values();
        }
        return values;
    }
}
