package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbmw.class */
public final class zzbmw implements zzeqb<zzcrj<zzblv>> {
    private final zzeqo<zzcwi<zzblv, zzdog, zzctd>> zzfde;
    private final zzeqo<Boolean> zzfnm;
    private final zzeqo<zzcuq> zzfno;

    public zzbmw(zzeqo<Boolean> zzeqoVar, zzeqo<zzcuq> zzeqoVar2, zzeqo<zzcwi<zzblv, zzdog, zzctd>> zzeqoVar3) {
        this.zzfnm = zzeqoVar;
        this.zzfno = zzeqoVar2;
        this.zzfde = zzeqoVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        boolean booleanValue = this.zzfnm.get().booleanValue();
        zzcwi<zzblv, zzdog, zzctd> zzcwiVar = this.zzfno.get();
        zzcwi<zzblv, zzdog, zzctd> zzcwiVar2 = this.zzfde.get();
        if (!booleanValue) {
            zzcwiVar = zzcwiVar2;
        }
        return (zzcrj) zzeqh.zza(zzcwiVar, "Cannot return null from a non-@Nullable @Provides method");
    }
}
