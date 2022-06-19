package com.google.android.gms.internal.mlkit_translate;

import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzu.class */
public abstract class zzu<K, V> implements Serializable, Map<K, V> {
    private static final Map.Entry<?, ?>[] zza = new Map.Entry[0];
    private transient zzw<Map.Entry<K, V>> zzb;
    private transient zzw<K> zzc;
    private transient zzl<V> zzd;

    public static <K, V> zzu<K, V> zza() {
        return (zzu<K, V>) zzz.zza;
    }

    public static <K, V> zzu<K, V> zza(K k, V v, K k2, V v2, K k3, V v3) {
        zzj.zza(k, v);
        zzj.zza(k2, v2);
        zzj.zza(k3, v3);
        return zzz.zza(3, new Object[]{k, v, k2, v2, k3, v3});
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
        return ((zzl) values()).contains(obj);
    }

    @Override // java.util.Map
    public /* synthetic */ Set entrySet() {
        zzw<Map.Entry<K, V>> zzwVar = this.zzb;
        zzw<Map.Entry<K, V>> zzwVar2 = zzwVar;
        if (zzwVar == null) {
            zzwVar2 = zzb();
            this.zzb = zzwVar2;
        }
        return zzwVar2;
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
        return zzaf.zza((zzw) entrySet());
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    public /* synthetic */ Set keySet() {
        zzw<K> zzwVar = this.zzc;
        zzw<K> zzwVar2 = zzwVar;
        if (zzwVar == null) {
            zzwVar2 = zzc();
            this.zzc = zzwVar2;
        }
        return zzwVar2;
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
        zzj.zza(size, "size");
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
        zzl<V> zzlVar = this.zzd;
        zzl<V> zzlVar2 = zzlVar;
        if (zzlVar == null) {
            zzlVar2 = zzd();
            this.zzd = zzlVar2;
        }
        return zzlVar2;
    }

    public abstract zzw<Map.Entry<K, V>> zzb();

    public abstract zzw<K> zzc();

    public abstract zzl<V> zzd();
}
