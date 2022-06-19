package com.google.android.gms.internal.ads;

import java.util.Iterator;
import javax.annotation.CheckForNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfuj.class */
final class zzfuj<K> extends zzftc<K> {
    private final transient zzfsw<K, ?> zza;
    private final transient zzfss<K> zzb;

    public zzfuj(zzfsw<K, ?> zzfswVar, zzfss<K> zzfssVar) {
        this.zza = zzfswVar;
        this.zzb = zzfssVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfsn, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(@CheckForNull Object obj) {
        return this.zza.get(obj) != null;
    }

    @Override // com.google.android.gms.internal.ads.zzftc, com.google.android.gms.internal.ads.zzfsn, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return this.zzb.listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zza.size();
    }

    @Override // com.google.android.gms.internal.ads.zzfsn
    public final int zza(Object[] objArr, int i) {
        return this.zzb.zza(objArr, i);
    }

    @Override // com.google.android.gms.internal.ads.zzftc, com.google.android.gms.internal.ads.zzfsn
    public final zzfss<K> zzd() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzftc, com.google.android.gms.internal.ads.zzfsn
    public final zzfuu<K> zze() {
        return this.zzb.listIterator(0);
    }

    @Override // com.google.android.gms.internal.ads.zzfsn
    public final boolean zzf() {
        throw null;
    }
}
