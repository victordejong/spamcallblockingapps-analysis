package com.google.android.gms.internal.ads;

import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfoq.class */
final class zzfoq<K, V> extends zzfoe<V> {

    /* renamed from: e */
    private final transient zzfor<K, V> f34071e;

    public zzfoq(zzfor<K, V> zzforVar) {
        this.f34071e = zzforVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfoe, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.f34071e.zzr(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzfoe, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* bridge */ /* synthetic */ Iterator iterator() {
        return new ex2(this.f34071e);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        return this.f34071e.f34073h;
    }

    @Override // com.google.android.gms.internal.ads.zzfoe
    public final jy2<V> zza() {
        return new ex2(this.f34071e);
    }

    @Override // com.google.android.gms.internal.ads.zzfoe
    public final boolean zzf() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzfoe
    public final int zzg(Object[] objArr, int i) {
        ky2 listIterator = ((zzfoj) this.f34071e.f34072g.values()).listIterator(0);
        while (listIterator.hasNext()) {
            i = ((zzfoe) listIterator.next()).zzg(objArr, i);
        }
        return i;
    }
}
