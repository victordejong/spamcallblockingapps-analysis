package com.google.android.gms.internal.ads;

import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfqa.class */
final class zzfqa<K> extends zzfot<K> {

    /* renamed from: f */
    private final transient zzfon<K, ?> f34085f;

    /* renamed from: g */
    private final transient zzfoj<K> f34086g;

    public zzfqa(zzfon<K, ?> zzfonVar, zzfoj<K> zzfojVar) {
        this.f34085f = zzfonVar;
        this.f34086g = zzfojVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfoe, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.f34085f.get(obj) != null;
    }

    @Override // com.google.android.gms.internal.ads.zzfot, com.google.android.gms.internal.ads.zzfoe, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* bridge */ /* synthetic */ Iterator iterator() {
        return this.f34086g.listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f34085f.size();
    }

    @Override // com.google.android.gms.internal.ads.zzfot, com.google.android.gms.internal.ads.zzfoe
    public final jy2<K> zza() {
        return this.f34086g.listIterator(0);
    }

    @Override // com.google.android.gms.internal.ads.zzfot, com.google.android.gms.internal.ads.zzfoe
    public final zzfoj<K> zze() {
        return this.f34086g;
    }

    @Override // com.google.android.gms.internal.ads.zzfoe
    public final boolean zzf() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzfoe
    public final int zzg(Object[] objArr, int i) {
        return this.f34086g.zzg(objArr, i);
    }
}
