package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdxd.class */
public final class zzdxd<K> extends zzdws<K> {
    public final transient zzdwp<K> zzhqo;
    public final transient zzdwt<K, ?> zzhrd;

    public zzdxd(zzdwt<K, ?> zzdwtVar, zzdwp<K> zzdwpVar) {
        this.zzhrd = zzdwtVar;
        this.zzhqo = zzdwpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdwk, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.zzhrd.get(obj) != null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zzhrd.size();
    }

    @Override // com.google.android.gms.internal.ads.zzdwk
    public final int zza(Object[] objArr, int i) {
        return zzaxm().zza(objArr, i);
    }

    @Override // com.google.android.gms.internal.ads.zzdwk
    /* renamed from: zzaxi */
    public final zzdxg<K> iterator() {
        return (zzdxg) zzaxm().iterator();
    }

    @Override // com.google.android.gms.internal.ads.zzdws, com.google.android.gms.internal.ads.zzdwk
    public final zzdwp<K> zzaxm() {
        return this.zzhqo;
    }

    @Override // com.google.android.gms.internal.ads.zzdwk
    public final boolean zzaxn() {
        return true;
    }
}
