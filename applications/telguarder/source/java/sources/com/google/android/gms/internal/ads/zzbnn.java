package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbnn.class */
public final class zzbnn implements zzeqb<zzbno> {
    private final zzeqo<zzdmw> zzfrs;
    private final zzeqo<zzbsd> zzfvu;
    private final zzeqo<zzbtf> zzfvv;

    private zzbnn(zzeqo<zzdmw> zzeqoVar, zzeqo<zzbsd> zzeqoVar2, zzeqo<zzbtf> zzeqoVar3) {
        this.zzfrs = zzeqoVar;
        this.zzfvu = zzeqoVar2;
        this.zzfvv = zzeqoVar3;
    }

    public static zzbnn zzf(zzeqo<zzdmw> zzeqoVar, zzeqo<zzbsd> zzeqoVar2, zzeqo<zzbtf> zzeqoVar3) {
        return new zzbnn(zzeqoVar, zzeqoVar2, zzeqoVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbno(this.zzfrs.get(), this.zzfvu.get(), this.zzfvv.get());
    }
}
