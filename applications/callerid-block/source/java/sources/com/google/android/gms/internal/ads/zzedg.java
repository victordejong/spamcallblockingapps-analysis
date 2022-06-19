package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzedg.class */
public abstract class zzedg<K, V> implements Map<K, V>, Serializable {

    /* renamed from: b */
    private transient zzedi<Map.Entry<K, V>> f9568b;

    /* renamed from: c */
    private transient zzedi<K> f9569c;

    /* renamed from: d */
    private transient zzedb<V> f9570d;

    zzedg() {
    }

    public static <K, V> zzedg<K, V> zza(K k, V v) {
        xw1.m4820a(k, v);
        return zzedt.zzh(1, new Object[]{k, v});
    }

    public static <K, V> ex1<K, V> zzb(int i) {
        return new ex1<>(7);
    }

    @Override // java.util.Map
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final boolean containsKey(@NullableDecl Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.Map
    public final boolean containsValue(@NullableDecl Object obj) {
        return values().contains(obj);
    }

    @Override // java.util.Map
    public final boolean equals(@NullableDecl Object obj) {
        boolean z;
        if (this == obj) {
            z = true;
        } else if (obj instanceof Map) {
            return entrySet().equals(((Map) obj).entrySet());
        } else {
            z = false;
        }
        return z;
    }

    @Override // java.util.Map
    public abstract V get(@NullableDecl Object obj);

    @Override // java.util.Map
    public final V getOrDefault(@NullableDecl Object obj, @NullableDecl V v) {
        V v2 = get(obj);
        return v2 != null ? v2 : v;
    }

    @Override // java.util.Map
    public final int hashCode() {
        return kx1.m6746a(entrySet());
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    public final /* bridge */ /* synthetic */ Set keySet() {
        zzedi<K> zzediVar = this.f9569c;
        zzedi<K> zzediVar2 = zzediVar;
        if (zzediVar == null) {
            zzediVar2 = zze();
            this.f9569c = zzediVar2;
        }
        return zzediVar2;
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

    public final String toString() {
        int size = size();
        xw1.m4819b(size, "size");
        StringBuilder sb = new StringBuilder((int) Math.min(size * 8, 1073741824L));
        sb.append('{');
        Iterator<Map.Entry<K, V>> it = entrySet().iterator();
        boolean z = true;
        while (true) {
            boolean z2 = z;
            if (!it.hasNext()) {
                sb.append('}');
                return sb.toString();
            }
            Map.Entry<K, V> next = it.next();
            if (!z2) {
                sb.append(", ");
            }
            sb.append(next.getKey());
            sb.append('=');
            sb.append(next.getValue());
            z = false;
        }
    }

    /* renamed from: zzc */
    public final zzedi<Map.Entry<K, V>> entrySet() {
        zzedi<Map.Entry<K, V>> zzediVar = this.f9568b;
        zzedi<Map.Entry<K, V>> zzediVar2 = zzediVar;
        if (zzediVar == null) {
            zzediVar2 = zzd();
            this.f9568b = zzediVar2;
        }
        return zzediVar2;
    }

    abstract zzedi<Map.Entry<K, V>> zzd();

    abstract zzedi<K> zze();

    /* renamed from: zzf */
    public final zzedb<V> values() {
        zzedb<V> zzedbVar = this.f9570d;
        zzedb<V> zzedbVar2 = zzedbVar;
        if (zzedbVar == null) {
            zzedbVar2 = zzg();
            this.f9570d = zzedbVar2;
        }
        return zzedbVar2;
    }

    abstract zzedb<V> zzg();
}
