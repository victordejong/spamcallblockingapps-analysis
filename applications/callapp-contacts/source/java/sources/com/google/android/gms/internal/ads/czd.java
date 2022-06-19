package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/czd.class */
public abstract class czd<K, V> implements Serializable, Map<K, V> {

    /* renamed from: a */
    private static final Map.Entry<?, ?>[] f46786a = new Map.Entry[0];

    /* renamed from: b */
    private transient czc<Map.Entry<K, V>> f46787b;

    /* renamed from: c */
    private transient czc<K> f46788c;

    /* renamed from: d */
    private transient cyt<V> f46789d;

    /* renamed from: a */
    public static <K, V> czd<K, V> m17020a(K k, V v) {
        cys.m17040a(k, v);
        return czk.m17010a(1, new Object[]{k, v});
    }

    /* renamed from: a */
    public static <K, V> czd<K, V> m17019a(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5) {
        cys.m17040a(k, v);
        cys.m17040a(k2, v2);
        cys.m17040a(k3, v3);
        cys.m17040a(k4, v4);
        cys.m17040a(k5, v5);
        return czk.m17010a(5, new Object[]{k, v, k2, v2, k3, v3, k4, v4, k5, v5});
    }

    /* renamed from: a */
    abstract czc<Map.Entry<K, V>> mo17011a();

    /* renamed from: b */
    abstract czc<K> mo17008b();

    /* renamed from: c */
    abstract cyt<V> mo17007c();

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
        czc<Map.Entry<K, V>> czcVar = this.f46787b;
        czc<Map.Entry<K, V>> czcVar2 = czcVar;
        if (czcVar == null) {
            czcVar2 = mo17011a();
            this.f46787b = czcVar2;
        }
        return czcVar2;
    }

    @Override // java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Map)) {
            return false;
        }
        return entrySet().equals(((Map) obj).entrySet());
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
        return czq.m17003a((czc) entrySet());
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    public /* synthetic */ Set keySet() {
        czc<K> czcVar = this.f46788c;
        czc<K> czcVar2 = czcVar;
        if (czcVar == null) {
            czcVar2 = mo17008b();
            this.f46788c = czcVar2;
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
        cys.m17041a(size, "size");
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
        cyt<V> cytVar = this.f46789d;
        cyt<V> cytVar2 = cytVar;
        if (cytVar == null) {
            cytVar2 = mo17007c();
            this.f46789d = cytVar2;
        }
        return cytVar2;
    }
}
