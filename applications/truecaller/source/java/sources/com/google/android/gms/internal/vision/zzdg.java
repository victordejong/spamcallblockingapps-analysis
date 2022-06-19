package com.google.android.gms.internal.vision;

import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzdg.class */
public abstract class zzdg<K, V> implements Serializable, Map<K, V> {
    private static final Map.Entry<?, ?>[] zzlo = new Map.Entry[0];
    private transient zzdj<Map.Entry<K, V>> zzlp;
    private transient zzdj<K> zzlq;
    private transient zzdc<V> zzlr;

    public static <K, V> zzdg<K, V> zza(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4) {
        zzda.zza(k, v);
        zzda.zza(k2, v2);
        zzda.zza(k3, v3);
        zzda.zza(k4, v4);
        return zzdl.zza(4, new Object[]{k, v, k2, v2, k3, v3, k4, v4});
    }

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
        return ((zzdc) values()).contains(obj);
    }

    @Override // java.util.Map
    public /* synthetic */ Set entrySet() {
        zzdj<Map.Entry<K, V>> zzdjVar = this.zzlp;
        zzdj<Map.Entry<K, V>> zzdjVar2 = zzdjVar;
        if (zzdjVar == null) {
            zzdjVar2 = zzce();
            this.zzlp = zzdjVar2;
        }
        return zzdjVar2;
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
        return zzdo.zza(entrySet());
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    public /* synthetic */ Set keySet() {
        zzdj<K> zzdjVar = this.zzlq;
        zzdj<K> zzdjVar2 = zzdjVar;
        if (zzdjVar == null) {
            zzdjVar2 = zzcf();
            this.zzlq = zzdjVar2;
        }
        return zzdjVar2;
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
        if (size < 0) {
            StringBuilder sb = new StringBuilder("size".length() + 40);
            sb.append("size");
            sb.append(" cannot be negative but was: ");
            sb.append(size);
            throw new IllegalArgumentException(sb.toString());
        }
        StringBuilder sb2 = new StringBuilder((int) Math.min(size << 3, 1073741824L));
        sb2.append('{');
        boolean z = true;
        for (Map.Entry<K, V> entry : entrySet()) {
            if (!z) {
                sb2.append(", ");
            }
            z = false;
            sb2.append(entry.getKey());
            sb2.append('=');
            sb2.append(entry.getValue());
        }
        sb2.append('}');
        return sb2.toString();
    }

    @Override // java.util.Map
    public /* synthetic */ Collection values() {
        zzdc<V> zzdcVar = this.zzlr;
        zzdc<V> zzdcVar2 = zzdcVar;
        if (zzdcVar == null) {
            zzdcVar2 = zzcg();
            this.zzlr = zzdcVar2;
        }
        return zzdcVar2;
    }

    public abstract zzdj<Map.Entry<K, V>> zzce();

    public abstract zzdj<K> zzcf();

    public abstract zzdc<V> zzcg();
}
