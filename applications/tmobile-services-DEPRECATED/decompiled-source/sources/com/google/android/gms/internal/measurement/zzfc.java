package com.google.android.gms.internal.measurement;

import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfc.class */
public abstract class zzfc<K, V> implements Serializable, Map<K, V> {

    /* renamed from: f */
    private transient zzfg<Map.Entry<K, V>> f8408f;

    /* renamed from: g */
    private transient zzfg<K> f8409g;

    /* renamed from: h */
    private transient zzey<V> f8410h;

    /* renamed from: a */
    abstract zzfg<Map.Entry<K, V>> mo12684a();

    /* renamed from: b */
    abstract zzfg<K> mo12683b();

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
        return ((zzey) values()).contains(obj);
    }

    /* renamed from: e */
    abstract zzey<V> mo12682e();

    @Override // java.util.Map
    public /* synthetic */ Set entrySet() {
        zzfg<Map.Entry<K, V>> zzfgVar = this.f8408f;
        zzfg<Map.Entry<K, V>> zzfgVar2 = zzfgVar;
        if (zzfgVar == null) {
            zzfgVar2 = mo12684a();
            this.f8408f = zzfgVar2;
        }
        return zzfgVar2;
    }

    @Override // java.util.Map
    public boolean equals(@NullableDecl Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Map) {
            return entrySet().equals(((Map) obj).entrySet());
        }
        return false;
    }

    @Override // java.util.Map
    public abstract V get(@NullableDecl Object obj);

    @Override // java.util.Map
    public final V getOrDefault(@NullableDecl Object obj, @NullableDecl V v) {
        V v2 = get(obj);
        return v2 != null ? v2 : v;
    }

    @Override // java.util.Map
    public int hashCode() {
        return zzfv.m12670a((zzfg) entrySet());
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    public /* synthetic */ Set keySet() {
        zzfg<K> zzfgVar = this.f8409g;
        zzfg<K> zzfgVar2 = zzfgVar;
        if (zzfgVar == null) {
            zzfgVar2 = mo12683b();
            this.f8409g = zzfgVar2;
        }
        return zzfgVar2;
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
        if (size >= 0) {
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
        StringBuilder sb2 = new StringBuilder("size".length() + 40);
        sb2.append("size");
        sb2.append(" cannot be negative but was: ");
        sb2.append(size);
        throw new IllegalArgumentException(sb2.toString());
    }

    @Override // java.util.Map
    public /* synthetic */ Collection values() {
        zzey<V> zzeyVar = this.f8410h;
        zzey<V> zzeyVar2 = zzeyVar;
        if (zzeyVar == null) {
            zzeyVar2 = mo12682e();
            this.f8410h = zzeyVar2;
        }
        return zzeyVar2;
    }
}
