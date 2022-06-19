package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdoa.class */
public final class zzdoa implements zzeqb<zzdnx> {
    private final zzeqo<zzdss> zzexv;
    private final zzeqo<zzdmw> zzfvr;
    private final zzeqo<zzdnb> zzgji;
    private final zzeqo<zzcqr> zzgjo;

    private zzdoa(zzeqo<zzcqr> zzeqoVar, zzeqo<zzdss> zzeqoVar2, zzeqo<zzdmw> zzeqoVar3, zzeqo<zzdnb> zzeqoVar4) {
        this.zzgjo = zzeqoVar;
        this.zzexv = zzeqoVar2;
        this.zzfvr = zzeqoVar3;
        this.zzgji = zzeqoVar4;
    }

    public static zzdoa zzk(zzeqo<zzcqr> zzeqoVar, zzeqo<zzdss> zzeqoVar2, zzeqo<zzdmw> zzeqoVar3, zzeqo<zzdnb> zzeqoVar4) {
        return new zzdoa(zzeqoVar, zzeqoVar2, zzeqoVar3, zzeqoVar4);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdnx(this.zzgjo.get(), this.zzexv.get(), this.zzfvr.get(), this.zzgji.get());
    }
}
