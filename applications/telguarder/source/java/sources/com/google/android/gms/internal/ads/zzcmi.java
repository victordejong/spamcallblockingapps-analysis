package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcmi.class */
public final class zzcmi implements zzeqb<zzcme> {
    private final zzeqo<zzdzv> zzewf;
    private final zzeqo<zzdzv> zzgnu;
    private final zzeqo<zzcnj> zzgnv;
    private final zzeqo<zzcol> zzgnw;

    private zzcmi(zzeqo<zzdzv> zzeqoVar, zzeqo<zzdzv> zzeqoVar2, zzeqo<zzcnj> zzeqoVar3, zzeqo<zzcol> zzeqoVar4) {
        this.zzgnu = zzeqoVar;
        this.zzewf = zzeqoVar2;
        this.zzgnv = zzeqoVar3;
        this.zzgnw = zzeqoVar4;
    }

    public static zzcmi zzd(zzeqo<zzdzv> zzeqoVar, zzeqo<zzdzv> zzeqoVar2, zzeqo<zzcnj> zzeqoVar3, zzeqo<zzcol> zzeqoVar4) {
        return new zzcmi(zzeqoVar, zzeqoVar2, zzeqoVar3, zzeqoVar4);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcme(this.zzgnu.get(), this.zzewf.get(), this.zzgnv.get(), zzeqc.zzav(this.zzgnw));
    }
}
