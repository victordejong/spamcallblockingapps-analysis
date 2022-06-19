package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cpg.class */
public abstract class cpg<K, V> implements Serializable, Map<K, V> {

    /* renamed from: a */
    private static final Map.Entry<?, ?>[] f13488a = new Map.Entry[0];

    /* renamed from: b */
    private transient cpk<Map.Entry<K, V>> f13489b;

    /* renamed from: c */
    private transient cpk<K> f13490c;

    /* renamed from: d */
    private transient cpb<V> f13491d;

    /* renamed from: a */
    public static <K, V> cpg<K, V> m10892a(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5) {
        cow.m10918a(k, v);
        cow.m10918a(k2, v2);
        cow.m10918a(k3, v3);
        cow.m10918a(k4, v4);
        cow.m10918a(k5, v5);
        return cpq.m10872a(5, new Object[]{k, v, k2, v2, k3, v3, k4, v4, k5, v5});
    }

    /* renamed from: a */
    abstract cpk<Map.Entry<K, V>> mo10873a();

    /* renamed from: b */
    abstract cpk<K> mo10870b();

    /* renamed from: c */
    abstract cpb<V> mo10869c();

    @Override // java.util.Map
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public boolean containsKey(@NullableDecl Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.Map
    public boolean containsValue(@NullableDecl Object obj) {
        return ((cpb) values()).contains(obj);
    }

    @Override // java.util.Map
    public /* synthetic */ Set entrySet() {
        cpk<Map.Entry<K, V>> cpkVar = this.f13489b;
        cpk<Map.Entry<K, V>> cpkVar2 = cpkVar;
        if (cpkVar == null) {
            cpkVar2 = mo10873a();
            this.f13489b = cpkVar2;
        }
        return cpkVar2;
    }

    @Override // java.util.Map
    public boolean equals(@NullableDecl Object obj) {
        return this == obj ? true : obj instanceof Map ? entrySet().equals(((Map) obj).entrySet()) : false;
    }

    @Override // java.util.Map
    public abstract V get(@NullableDecl Object obj);

    @Override // java.util.Map
    public final V getOrDefault(@NullableDecl Object obj, @NullableDecl V v) {
        V v2 = get(obj);
        if (v2 != null) {
            v = v2;
        }
        return v;
    }

    @Override // java.util.Map
    public int hashCode() {
        return cpw.m10859a((cpk) entrySet());
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    public /* synthetic */ Set keySet() {
        cpk<K> cpkVar = this.f13490c;
        cpk<K> cpkVar2 = cpkVar;
        if (cpkVar == null) {
            cpkVar2 = mo10870b();
            this.f13490c = cpkVar2;
        }
        return cpkVar2;
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
        cow.m10919a(size, "size");
        StringBuilder append = new StringBuilder((int) Math.min(size << 3, 1073741824L)).append('{');
        boolean z = true;
        for (Map.Entry<K, V> entry : entrySet()) {
            if (!z) {
                append.append(", ");
            }
            z = false;
            append.append(entry.getKey()).append('=').append(entry.getValue());
        }
        return append.append('}').toString();
    }

    @Override // java.util.Map
    public /* synthetic */ Collection values() {
        cpb<V> cpbVar = this.f13491d;
        cpb<V> cpbVar2 = cpbVar;
        if (cpbVar == null) {
            cpbVar2 = mo10869c();
            this.f13491d = cpbVar2;
        }
        return cpbVar2;
    }
}
