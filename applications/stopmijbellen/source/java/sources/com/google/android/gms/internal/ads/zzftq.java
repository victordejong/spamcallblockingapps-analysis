package com.google.android.gms.internal.ads;

import java.util.AbstractMap;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzftq.class */
abstract class zzftq<K, V> extends AbstractMap<K, V> {
    @CheckForNull
    private transient Set<Map.Entry<K, V>> zza;
    @CheckForNull
    private transient Set<K> zzb;
    @CheckForNull
    private transient Collection<V> zzc;

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.zza;
        Set<Map.Entry<K, V>> set2 = set;
        if (set == null) {
            set2 = zzb();
            this.zza = set2;
        }
        return set2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        Set<K> set = this.zzb;
        Set<K> set2 = set;
        if (set == null) {
            set2 = zze();
            this.zzb = set2;
        }
        return set2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection<V> values() {
        Collection<V> collection = this.zzc;
        zzftp zzftpVar = collection;
        if (collection == null) {
            zzftpVar = new zzftp(this);
            this.zzc = zzftpVar;
        }
        return zzftpVar;
    }

    public abstract Set<Map.Entry<K, V>> zzb();

    public Set<K> zze() {
        return new zzfto(this);
    }
}
