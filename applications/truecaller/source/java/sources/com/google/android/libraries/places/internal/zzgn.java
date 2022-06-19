package com.google.android.libraries.places.internal;

import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzgn.class */
public abstract class zzgn<K, V> implements Serializable, Map<K, V> {
    private static final Map.Entry<?, ?>[] zza = new Map.Entry[0];
    private transient zzgp<Map.Entry<K, V>> zzb;
    private transient zzgp<K> zzc;
    private transient zzgj<V> zzd;

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
        return ((zzgj) values()).contains(obj);
    }

    @Override // java.util.Map
    public /* synthetic */ Set entrySet() {
        zzgp<Map.Entry<K, V>> zzgpVar = this.zzb;
        zzgp<Map.Entry<K, V>> zzgpVar2 = zzgpVar;
        if (zzgpVar == null) {
            zzgpVar2 = zza();
            this.zzb = zzgpVar2;
        }
        return zzgpVar2;
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
        return zzgz.zza(entrySet());
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    public /* synthetic */ Set keySet() {
        zzgp<K> zzgpVar = this.zzc;
        zzgp<K> zzgpVar2 = zzgpVar;
        if (zzgpVar == null) {
            zzgpVar2 = zzb();
            this.zzc = zzgpVar2;
        }
        return zzgpVar2;
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
        zzgj<V> zzgjVar = this.zzd;
        zzgj<V> zzgjVar2 = zzgjVar;
        if (zzgjVar == null) {
            zzgjVar2 = zzc();
            this.zzd = zzgjVar2;
        }
        return zzgjVar2;
    }

    public abstract zzgp<Map.Entry<K, V>> zza();

    public abstract zzgp<K> zzb();

    public abstract zzgj<V> zzc();
}
