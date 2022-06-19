package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfon.class */
public abstract class zzfon<K, V> implements Map<K, V>, Serializable {
    private transient zzfot<Map.Entry<K, V>> zza;
    private transient zzfot<K> zzb;
    private transient zzfoe<V> zzc;

    public static <K, V> zzfon<K, V> zza() {
        return (zzfon<K, V>) zzfqc.zza;
    }

    public static <K, V> zzfon<K, V> zzb(Map<? extends K, ? extends V> map) {
        Set<Map.Entry<? extends K, ? extends V>> entrySet = map.entrySet();
        zzfom zzfomVar = new zzfom(entrySet instanceof Collection ? entrySet.size() : 4);
        zzfomVar.zzb(entrySet);
        return zzfomVar.zzc();
    }

    @Override // java.util.Map
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        return values().contains(obj);
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
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
    public abstract V get(Object obj);

    @Override // java.util.Map
    public final V getOrDefault(Object obj, V v) {
        V v2 = get(obj);
        return v2 != null ? v2 : v;
    }

    @Override // java.util.Map
    public final int hashCode() {
        return zzfqh.zza(entrySet());
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    public final /* bridge */ /* synthetic */ Set keySet() {
        zzfot<K> zzfotVar = this.zzb;
        zzfot<K> zzfotVar2 = zzfotVar;
        if (zzfotVar == null) {
            zzfotVar2 = zze();
            this.zzb = zzfotVar2;
        }
        return zzfotVar2;
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
        zzfni.zzb(size, "size");
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
    public final zzfot<Map.Entry<K, V>> entrySet() {
        zzfot<Map.Entry<K, V>> zzfotVar = this.zza;
        zzfot<Map.Entry<K, V>> zzfotVar2 = zzfotVar;
        if (zzfotVar == null) {
            zzfotVar2 = zzd();
            this.zza = zzfotVar2;
        }
        return zzfotVar2;
    }

    public abstract zzfot<Map.Entry<K, V>> zzd();

    public abstract zzfot<K> zze();

    /* renamed from: zzf */
    public final zzfoe<V> values() {
        zzfoe<V> zzfoeVar = this.zzc;
        zzfoe<V> zzfoeVar2 = zzfoeVar;
        if (zzfoeVar == null) {
            zzfoeVar2 = zzg();
            this.zzc = zzfoeVar2;
        }
        return zzfoeVar2;
    }

    public abstract zzfoe<V> zzg();
}
