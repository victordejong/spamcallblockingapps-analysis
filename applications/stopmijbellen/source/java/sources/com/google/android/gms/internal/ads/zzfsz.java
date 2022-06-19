package com.google.android.gms.internal.ads;

import java.util.Iterator;
import javax.annotation.CheckForNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfsz.class */
final class zzfsz<K, V> extends zzfsn<V> {
    private final transient zzfta<K, V> zza;

    public zzfsz(zzfta<K, V> zzftaVar) {
        this.zza = zzftaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfsn, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(@CheckForNull Object obj) {
        return this.zza.zzu(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzfsn, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new zzfsx(this.zza);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        return this.zza.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzfsn
    public final int zza(Object[] objArr, int i) {
        zzfuv listIterator = ((zzfss) this.zza.zzb.values()).listIterator(0);
        while (listIterator.hasNext()) {
            i = ((zzfsn) listIterator.next()).zza(objArr, i);
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.zzfsn
    public final zzfuu<V> zze() {
        return new zzfsx(this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzfsn
    public final boolean zzf() {
        throw null;
    }
}
