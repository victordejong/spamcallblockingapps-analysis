package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfpz.class */
public final class zzfpz<K, V> extends zzfot<Map.Entry<K, V>> {
    private final transient zzfon<K, V> zza;
    private final transient Object[] zzb;
    private final transient int zzc;

    public zzfpz(zzfon<K, V> zzfonVar, Object[] objArr, int i, int i2) {
        this.zza = zzfonVar;
        this.zzb = objArr;
        this.zzc = i2;
    }

    @Override // com.google.android.gms.internal.ads.zzfoe, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            return value != null && value.equals(this.zza.get(key));
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzfot, com.google.android.gms.internal.ads.zzfoe, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* bridge */ /* synthetic */ Iterator iterator() {
        return zze().listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzfot, com.google.android.gms.internal.ads.zzfoe
    public final zzfql<Map.Entry<K, V>> zza() {
        return zze().listIterator(0);
    }

    @Override // com.google.android.gms.internal.ads.zzfoe
    public final boolean zzf() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzfoe
    public final int zzg(Object[] objArr, int i) {
        return zze().zzg(objArr, i);
    }

    @Override // com.google.android.gms.internal.ads.zzfot
    public final zzfoj<Map.Entry<K, V>> zzn() {
        return new zzfpy(this);
    }
}
