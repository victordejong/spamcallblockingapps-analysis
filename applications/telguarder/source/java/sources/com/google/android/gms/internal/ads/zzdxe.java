package com.google.android.gms.internal.ads;

import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdxe.class */
public final class zzdxe extends zzdxd<E> {
    private final transient int length;
    private final transient int offset;
    private final /* synthetic */ zzdxd zzhxr;

    public zzdxe(zzdxd zzdxdVar, int i, int i2) {
        this.zzhxr = zzdxdVar;
        this.offset = i;
        this.length = i2;
    }

    @Override // java.util.List
    public final E get(int i) {
        zzdwl.zzt(i, this.length);
        return this.zzhxr.get(i + this.offset);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.length;
    }

    @Override // com.google.android.gms.internal.ads.zzdxd, java.util.List
    public final /* synthetic */ List subList(int i, int i2) {
        return subList(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzdwy
    public final Object[] zzazh() {
        return this.zzhxr.zzazh();
    }

    @Override // com.google.android.gms.internal.ads.zzdwy
    public final int zzazi() {
        return this.zzhxr.zzazi() + this.offset;
    }

    @Override // com.google.android.gms.internal.ads.zzdwy
    final int zzazj() {
        return this.zzhxr.zzazi() + this.offset + this.length;
    }

    @Override // com.google.android.gms.internal.ads.zzdwy
    public final boolean zzazl() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzdxd
    public final zzdxd<E> zzv(int i, int i2) {
        zzdwl.zzf(i, i2, this.length);
        zzdxd zzdxdVar = this.zzhxr;
        int i3 = this.offset;
        return (zzdxd) zzdxdVar.subList(i + i3, i2 + i3);
    }
}
