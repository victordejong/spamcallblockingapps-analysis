package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfsw.class */
public abstract class zzfsw<K, V> implements Map<K, V>, Serializable {
    @CheckForNull
    private transient zzftc<Map.Entry<K, V>> zza;
    @CheckForNull
    private transient zzftc<K> zzb;
    @CheckForNull
    private transient zzfsn<V> zzc;

    public static <K, V> zzfsw<K, V> zzc(Map<? extends K, ? extends V> map) {
        Set<Map.Entry<? extends K, ? extends V>> entrySet = map.entrySet();
        zzfsv zzfsvVar = new zzfsv(entrySet instanceof Collection ? entrySet.size() : 4);
        zzfsvVar.zzb(entrySet);
        return zzfsvVar.zzc();
    }

    public static <K, V> zzfsw<K, V> zzd() {
        return (zzfsw<K, V>) zzful.zza;
    }

    @Override // java.util.Map
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final boolean containsKey(@CheckForNull Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.Map
    public final boolean containsValue(@CheckForNull Object obj) {
        return values().contains(obj);
    }

    @Override // java.util.Map
    public final boolean equals(@CheckForNull Object obj) {
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
    @CheckForNull
    public abstract V get(@CheckForNull Object obj);

    @Override // java.util.Map
    @CheckForNull
    public final V getOrDefault(@CheckForNull Object obj, @CheckForNull V v) {
        V v2 = get(obj);
        return v2 != null ? v2 : v;
    }

    @Override // java.util.Map
    public final int hashCode() {
        return zzfuq.zza(entrySet());
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    public final /* bridge */ /* synthetic */ Set keySet() {
        zzftc<K> zzftcVar = this.zzb;
        zzftc<K> zzftcVar2 = zzftcVar;
        if (zzftcVar == null) {
            zzftcVar2 = zzf();
            this.zzb = zzftcVar2;
        }
        return zzftcVar2;
    }

    @Override // java.util.Map
    @CheckForNull
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
    @CheckForNull
    @Deprecated
    public final V remove(@CheckForNull Object obj) {
        throw new UnsupportedOperationException();
    }

    public final String toString() {
        int size = size();
        zzfrr.zza(size, "size");
        StringBuilder sb = new StringBuilder((int) Math.min(size * 8, 1073741824L));
        sb.append('{');
        Iterator<Map.Entry<K, V>> it2 = entrySet().iterator();
        boolean z = true;
        while (true) {
            boolean z2 = z;
            if (!it2.hasNext()) {
                sb.append('}');
                return sb.toString();
            }
            Map.Entry<K, V> next = it2.next();
            if (!z2) {
                sb.append(", ");
            }
            sb.append(next.getKey());
            sb.append('=');
            sb.append(next.getValue());
            z = false;
        }
    }

    public abstract zzfsn<V> zza();

    /* renamed from: zzb */
    public final zzfsn<V> values() {
        zzfsn<V> zzfsnVar = this.zzc;
        zzfsn<V> zzfsnVar2 = zzfsnVar;
        if (zzfsnVar == null) {
            zzfsnVar2 = zza();
            this.zzc = zzfsnVar2;
        }
        return zzfsnVar2;
    }

    public abstract zzftc<Map.Entry<K, V>> zze();

    public abstract zzftc<K> zzf();

    /* renamed from: zzg */
    public final zzftc<Map.Entry<K, V>> entrySet() {
        zzftc<Map.Entry<K, V>> zzftcVar = this.zza;
        zzftc<Map.Entry<K, V>> zzftcVar2 = zzftcVar;
        if (zzftcVar == null) {
            zzftcVar2 = zze();
            this.zza = zzftcVar2;
        }
        return zzftcVar2;
    }
}
