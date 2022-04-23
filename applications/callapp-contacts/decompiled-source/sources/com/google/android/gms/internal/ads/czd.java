package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/czd.class */
public abstract class czd<K, V> implements Serializable, Map<K, V> {

    /* renamed from: a  reason: collision with root package name */
    private static final Map.Entry<?, ?>[] f26591a = new Map.Entry[0];

    /* renamed from: b  reason: collision with root package name */
    private transient czc<Map.Entry<K, V>> f26592b;

    /* renamed from: c  reason: collision with root package name */
    private transient czc<K> f26593c;

    /* renamed from: d  reason: collision with root package name */
    private transient cyt<V> f26594d;

    public static <K, V> czd<K, V> a(K k, V v) {
        cys.a(k, v);
        return czk.a(1, new Object[]{k, v});
    }

    public static <K, V> czd<K, V> a(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5) {
        cys.a(k, v);
        cys.a(k2, v2);
        cys.a(k3, v3);
        cys.a(k4, v4);
        cys.a(k5, v5);
        return czk.a(5, new Object[]{k, v, k2, v2, k3, v3, k4, v4, k5, v5});
    }

    abstract czc<Map.Entry<K, V>> a();

    abstract czc<K> b();

    abstract cyt<V> c();

    @Override // java.util.Map
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        return ((cyt) values()).contains(obj);
    }

    @Override // java.util.Map
    public /* synthetic */ Set entrySet() {
        czc<Map.Entry<K, V>> czcVar = this.f26592b;
        czc<Map.Entry<K, V>> czcVar2 = czcVar;
        if (czcVar == null) {
            czcVar2 = a();
            this.f26592b = czcVar2;
        }
        return czcVar2;
    }

    @Override // java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Map) {
            return entrySet().equals(((Map) obj).entrySet());
        }
        return false;
    }

    @Override // java.util.Map
    public abstract V get(Object obj);

    @Override // java.util.Map
    public final V getOrDefault(Object obj, V v) {
        V v2 = get(obj);
        return v2 != null ? v2 : v;
    }

    @Override // java.util.Map
    public int hashCode() {
        return czq.a((czc) entrySet());
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    public /* synthetic */ Set keySet() {
        czc<K> czcVar = this.f26593c;
        czc<K> czcVar2 = czcVar;
        if (czcVar == null) {
            czcVar2 = b();
            this.f26593c = czcVar2;
        }
        return czcVar2;
    }

    @Override // java.util.Map
    @Deprecated
    public final V put(K k, V v) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final void putAll(Map<? extends K, ? extends V> map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final V remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        int size = size();
        cys.a(size, "size");
        StringBuilder sb = new StringBuilder((int) Math.min(size << 3, 1073741824L));
        sb.append('{');
        boolean z = true;
        for (Map.Entry<K, V> entry : entrySet()) {
            if (!z) {
                sb.append(", ");
            }
            z = false;
            sb.append(entry.getKey());
            sb.append('=');
            sb.append(entry.getValue());
        }
        sb.append('}');
        return sb.toString();
    }

    @Override // java.util.Map
    public /* synthetic */ Collection values() {
        cyt<V> cytVar = this.f26594d;
        cyt<V> cytVar2 = cytVar;
        if (cytVar == null) {
            cytVar2 = c();
            this.f26594d = cytVar2;
        }
        return cytVar2;
    }
}
