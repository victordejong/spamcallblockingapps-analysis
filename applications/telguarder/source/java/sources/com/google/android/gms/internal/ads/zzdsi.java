package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdsi.class */
public final class zzdsi implements zzeqb<zzdsf> {
    private final zzeqo<zzdsh> zzewt;
    private final zzeqo<zzdsj> zzgme;
    private final zzeqo<zzdrw> zzhru;

    public zzdsi(zzeqo<zzdrw> zzeqoVar, zzeqo<zzdsj> zzeqoVar2, zzeqo<zzdsh> zzeqoVar3) {
        this.zzhru = zzeqoVar;
        this.zzgme = zzeqoVar2;
        this.zzewt = zzeqoVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdsf(this.zzhru.get(), this.zzgme.get(), this.zzewt.get());
    }
}
