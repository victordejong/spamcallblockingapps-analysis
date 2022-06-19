package com.google.android.gms.internal.ads;

import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfoq.class */
public final class zzfoq<K, V> extends zzfoe<V> {
    private final transient zzfor<K, V> zza;

    public zzfoq(zzfor<K, V> zzforVar) {
        this.zza = zzforVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfoe, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.zza.zzr(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzfoe, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* bridge */ /* synthetic */ Iterator iterator() {
        return new zzfoo(this.zza);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        return this.zza.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzfoe
    public final zzfql<V> zza() {
        return new zzfoo(this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzfoe
    public final boolean zzf() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzfoe
    public final int zzg(Object[] objArr, int i) {
        zzfqm listIterator = ((zzfoj) this.zza.zzb.values()).listIterator(0);
        while (listIterator.hasNext()) {
            i = ((zzfoe) listIterator.next()).zzg(objArr, i);
        }
        return i;
    }
}
