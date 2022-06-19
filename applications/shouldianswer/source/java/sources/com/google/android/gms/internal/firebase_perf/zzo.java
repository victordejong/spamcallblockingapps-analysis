package com.google.android.gms.internal.firebase_perf;

import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzo.class */
public abstract class zzo<K, V> implements Serializable, Map<K, V> {
    private static final Map.Entry<?, ?>[] zzh = new Map.Entry[0];
    private transient zzq<Map.Entry<K, V>> zzi;
    private transient zzq<K> zzj;
    private transient zzk<V> zzk;

    public static <K, V> zzo<K, V> zza(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4) {
        zzi.zza(k, v);
        zzi.zza(k2, v2);
        zzi.zza(k3, v3);
        zzi.zza(k4, v4);
        return zzs.zza(4, new Object[]{k, v, k2, v2, k3, v3, k4, v4});
    }

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
        return ((zzk) values()).contains(obj);
    }

    @Override // java.util.Map
    public /* synthetic */ Set entrySet() {
        zzq<Map.Entry<K, V>> zzqVar = this.zzi;
        zzq<Map.Entry<K, V>> zzqVar2 = zzqVar;
        if (zzqVar == null) {
            zzqVar2 = zzh();
            this.zzi = zzqVar2;
        }
        return zzqVar2;
    }

    @Override // java.util.Map
    public boolean equals(@NullableDecl Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Map)) {
            return false;
        }
        return entrySet().equals(((Map) obj).entrySet());
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
        return zzv.zza((zzq) entrySet());
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    public /* synthetic */ Set keySet() {
        zzq<K> zzqVar = this.zzj;
        zzq<K> zzqVar2 = zzqVar;
        if (zzqVar == null) {
            zzqVar2 = zzi();
            this.zzj = zzqVar2;
        }
        return zzqVar2;
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
        zzk<V> zzkVar = this.zzk;
        zzk<V> zzkVar2 = zzkVar;
        if (zzkVar == null) {
            zzkVar2 = zzj();
            this.zzk = zzkVar2;
        }
        return zzkVar2;
    }

    abstract zzq<Map.Entry<K, V>> zzh();

    abstract zzq<K> zzi();

    abstract zzk<V> zzj();
}
