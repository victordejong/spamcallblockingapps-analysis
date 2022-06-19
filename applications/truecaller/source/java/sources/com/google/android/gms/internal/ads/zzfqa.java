package com.google.android.gms.internal.ads;

import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfqa.class */
public final class zzfqa<K> extends zzfot<K> {
    private final transient zzfon<K, ?> zza;
    private final transient zzfoj<K> zzb;

    public zzfqa(zzfon<K, ?> zzfonVar, zzfoj<K> zzfojVar) {
        this.zza = zzfonVar;
        this.zzb = zzfojVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfoe, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.zza.get(obj) != null;
    }

    @Override // com.google.android.gms.internal.ads.zzfot, com.google.android.gms.internal.ads.zzfoe, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* bridge */ /* synthetic */ Iterator iterator() {
        return this.zzb.listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zza.size();
    }

    @Override // com.google.android.gms.internal.ads.zzfot, com.google.android.gms.internal.ads.zzfoe
    public final zzfql<K> zza() {
        return this.zzb.listIterator(0);
    }

    @Override // com.google.android.gms.internal.ads.zzfot, com.google.android.gms.internal.ads.zzfoe
    public final zzfoj<K> zze() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzfoe
    public final boolean zzf() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzfoe
    public final int zzg(Object[] objArr, int i) {
        return this.zzb.zzg(objArr, i);
    }
}
