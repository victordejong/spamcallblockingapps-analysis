package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfmq.class */
public class zzfmq extends zzfph {
    public final transient Map zza;
    public final /* synthetic */ zzfnd zzb;

    public zzfmq(zzfnd zzfndVar, Map map) {
        this.zzb = zzfndVar;
        this.zza = map;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        Map map;
        Map map2 = this.zza;
        map = this.zzb.zza;
        if (map2 == map) {
            this.zzb.zzi();
        } else {
            zzfox.zzb(new zzfmp(this));
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        boolean z;
        Map map = this.zza;
        Objects.requireNonNull(map);
        try {
            z = map.containsKey(obj);
        } catch (ClassCastException | NullPointerException e) {
            z = false;
        }
        return z;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        return this == obj || this.zza.equals(obj);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final /* bridge */ /* synthetic */ Object get(Object obj) {
        Collection collection = (Collection) zzfpi.zza(this.zza, obj);
        if (collection == null) {
            return null;
        }
        return this.zzb.zzb(obj, collection);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        return this.zza.hashCode();
    }

    @Override // com.google.android.gms.internal.ads.zzfph, java.util.AbstractMap, java.util.Map
    public Set keySet() {
        return this.zzb.zzs();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final /* bridge */ /* synthetic */ Object remove(Object obj) {
        int i;
        Collection collection = (Collection) this.zza.remove(obj);
        if (collection == null) {
            return null;
        }
        Collection zzc = this.zzb.zzc();
        zzc.addAll(collection);
        zzfnd zzfndVar = this.zzb;
        i = zzfndVar.zzb;
        zzfndVar.zzb = i - collection.size();
        collection.clear();
        return zzc;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.zza.size();
    }

    @Override // java.util.AbstractMap
    public final String toString() {
        return this.zza.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzfph
    public final Set<Map.Entry> zza() {
        return new zzfmo(this);
    }

    public final Map.Entry zzb(Map.Entry entry) {
        Object key = entry.getKey();
        return new zzfof(key, this.zzb.zzb(key, (Collection) entry.getValue()));
    }
}
