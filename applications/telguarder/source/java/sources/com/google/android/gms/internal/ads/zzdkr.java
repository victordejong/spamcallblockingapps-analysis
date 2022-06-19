package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdkr.class */
public final class zzdkr {
    public static zzdkn<zzbkx, zzblg> zza(Context context, zzdov zzdovVar, zzdpq zzdpqVar) {
        return zzc(context, zzdovVar, zzdpqVar);
    }

    public static zzdkn<zzblk, zzblq> zzb(Context context, zzdov zzdovVar, zzdpq zzdpqVar) {
        return zzc(context, zzdovVar, zzdpqVar);
    }

    private static <AppOpenAdRequestComponent extends zzbqv<AppOpenAd>, AppOpenAd extends zzbnt> zzdkn<AppOpenAdRequestComponent, AppOpenAd> zzc(Context context, zzdov zzdovVar, zzdpq zzdpqVar) {
        if (((Integer) zzwr.zzqr().zzd(zzabp.zzcys)).intValue() > 0) {
            zzdpp zza = zzdpqVar.zza(zzdpi.AppOpen, context, zzdovVar, new zzdjv(new zzdjm()));
            return new zzdjr(new zzdke(new zzdkf()), new zzdjw(zza.zzhhi, zzazp.zzeic), zza.zzhol, zzazp.zzeic);
        }
        return new zzdkf();
    }
}
