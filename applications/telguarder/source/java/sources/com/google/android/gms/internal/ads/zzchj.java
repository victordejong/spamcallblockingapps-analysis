package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzchj.class */
public final class zzchj implements zzeqb<zzcrj<zzchb>> {
    private final zzeqo<zzcwi<zzchb, zzdog, zzctg>> zzfsx;
    private final zzeqo<zzdnp> zzfvf;
    private final zzeqo<zzcwi<zzchb, zzdog, zzctd>> zzgjt;

    public zzchj(zzeqo<zzcwi<zzchb, zzdog, zzctg>> zzeqoVar, zzeqo<zzcwi<zzchb, zzdog, zzctd>> zzeqoVar2, zzeqo<zzdnp> zzeqoVar3) {
        this.zzfsx = zzeqoVar;
        this.zzgjt = zzeqoVar2;
        this.zzfvf = zzeqoVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        zzeqo<zzcwi<zzchb, zzdog, zzctg>> zzeqoVar = this.zzfsx;
        return (zzcrj) zzeqh.zza(zzchk.zzgju[this.zzfvf.get().zzhle.zzhki - 1] != 1 ? this.zzgjt.get() : zzeqoVar.get(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
