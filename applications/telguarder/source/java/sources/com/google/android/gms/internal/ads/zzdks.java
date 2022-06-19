package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdks.class */
public final class zzdks implements zzeqb<zzdkn<zzchi, zzchb>> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzdov> zzeyu;
    private final zzeqo<zzdpq> zzeyv;

    public zzdks(zzeqo<Context> zzeqoVar, zzeqo<zzdov> zzeqoVar2, zzeqo<zzdpq> zzeqoVar3) {
        this.zzewk = zzeqoVar;
        this.zzeyu = zzeqoVar2;
        this.zzeyv = zzeqoVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        zzdjr zzdjrVar;
        Context context = this.zzewk.get();
        zzdov zzdovVar = this.zzeyu.get();
        zzdpq zzdpqVar = this.zzeyv.get();
        if (((Integer) zzwr.zzqr().zzd(zzabp.zzcye)).intValue() > 0) {
            zzdpp zza = zzdpqVar.zza(zzdpi.Rewarded, context, zzdovVar, new zzdjv(new zzdjm()));
            zzdjrVar = new zzdjr(new zzdke(new zzdkf()), new zzdjw(zza.zzhhi, zzazp.zzeic), zza.zzhol, zzazp.zzeic);
        } else {
            zzdjrVar = new zzdkf();
        }
        return (zzdkn) zzeqh.zza(zzdjrVar, "Cannot return null from a non-@Nullable @Provides method");
    }
}
