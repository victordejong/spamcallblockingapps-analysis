package com.google.android.gms.internal.mlkit_translate;

import com.huawei.hms.framework.common.ContainerUtils;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzem.class */
public final class zzem<K, V> implements Map.Entry<K, V> {
    public zzem<K, V> zza;
    public zzem<K, V> zzb;
    public zzem<K, V> zzc;
    public zzem<K, V> zzd;
    public zzem<K, V> zze;
    public final K zzf;
    public V zzg;
    public int zzh;

    public zzem() {
        this.zzf = null;
        this.zze = this;
        this.zzd = this;
    }

    public zzem(zzem<K, V> zzemVar, K k, zzem<K, V> zzemVar2, zzem<K, V> zzemVar3) {
        this.zza = zzemVar;
        this.zzf = k;
        this.zzh = 1;
        this.zzd = zzemVar2;
        this.zze = zzemVar3;
        zzemVar3.zzd = this;
        zzemVar2.zze = this;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            K k = this.zzf;
            if (k == null) {
                if (entry.getKey() != null) {
                    return false;
                }
            } else if (!k.equals(entry.getKey())) {
                return false;
            }
            V v = this.zzg;
            return v == null ? entry.getValue() == null : v.equals(entry.getValue());
        }
        return false;
    }

    @Override // java.util.Map.Entry
    public final K getKey() {
        return this.zzf;
    }

    @Override // java.util.Map.Entry
    public final V getValue() {
        return this.zzg;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        K k = this.zzf;
        int i = 0;
        int hashCode = k == null ? 0 : k.hashCode();
        V v = this.zzg;
        if (v != null) {
            i = v.hashCode();
        }
        return hashCode ^ i;
    }

    @Override // java.util.Map.Entry
    public final V setValue(V v) {
        V v2 = this.zzg;
        this.zzg = v;
        return v2;
    }

    public final String toString() {
        return this.zzf + ContainerUtils.KEY_VALUE_DELIMITER + this.zzg;
    }
}
