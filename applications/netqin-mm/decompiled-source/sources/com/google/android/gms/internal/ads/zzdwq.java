package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdwq.class */
public final class zzdwq extends zzdwp<E> {
    public final transient int length;
    public final transient int offset;
    public final /* synthetic */ zzdwp zzhqn;

    public zzdwq(zzdwp zzdwpVar, int i, int i2) {
        this.zzhqn = zzdwpVar;
        this.offset = i;
        this.length = i2;
    }

    @Override // java.util.List
    public final E get(int i) {
        zzdwd.m13099a(i, this.length);
        return this.zzhqn.get(i + this.offset);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.length;
    }

    @Override // com.google.android.gms.internal.ads.zzdwk
    public final Object[] zzaxj() {
        return this.zzhqn.zzaxj();
    }

    @Override // com.google.android.gms.internal.ads.zzdwk
    public final int zzaxk() {
        return this.zzhqn.zzaxk() + this.offset;
    }

    @Override // com.google.android.gms.internal.ads.zzdwk
    public final int zzaxl() {
        return this.zzhqn.zzaxk() + this.offset + this.length;
    }

    @Override // com.google.android.gms.internal.ads.zzdwk
    public final boolean zzaxn() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzdwp
    /* renamed from: zzu */
    public final zzdwp<E> subList(int i, int i2) {
        zzdwd.m13098a(i, i2, this.length);
        zzdwp zzdwpVar = this.zzhqn;
        int i3 = this.offset;
        return (zzdwp) zzdwpVar.subList(i + i3, i2 + i3);
    }
}
