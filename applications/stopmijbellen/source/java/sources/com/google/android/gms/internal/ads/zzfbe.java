package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfbe.class */
public final class zzfbe {
    public static zzfbc<zzcyk, zzcyp> zza(Context context, zzffj zzffjVar, zzfgb zzfgbVar) {
        return zzc(context, zzffjVar, zzfgbVar);
    }

    public static zzfbc<zzcxz, zzcyf> zzb(Context context, zzffj zzffjVar, zzfgb zzfgbVar) {
        return zzc(context, zzffjVar, zzfgbVar);
    }

    private static <AppOpenAdRequestComponent extends zzdea<AppOpenAd>, AppOpenAd extends zzdav> zzfbc<AppOpenAdRequestComponent, AppOpenAd> zzc(Context context, zzffj zzffjVar, zzfgb zzfgbVar) {
        zzcif zzg = ((Boolean) zzbgq.zzc().zzb(zzblj.zzeM)).booleanValue() ? zzt.zzo().zzh().zzg() : zzt.zzo().zzh().zzh();
        boolean z = false;
        if (zzg != null) {
            z = false;
            if (zzg.zzh()) {
                z = true;
            }
        }
        if (((Integer) zzbgq.zzc().zzb(zzblj.zzfc)).intValue() > 0) {
            if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzeL)).booleanValue() || z) {
                zzfga zza = zzfgbVar.zza(zzffr.AppOpen, context, zzffjVar, new zzfag(new zzfad()));
                zzfas zzfasVar = new zzfas(new zzfar());
                zzffn zzffnVar = zza.zza;
                zzfxb zzfxbVar = zzcjm.zza;
                return new zzfai(zzfasVar, new zzfao(zzffnVar, zzfxbVar), zza.zzb, zza.zza.zza().zzf, zzfxbVar);
            }
        }
        return new zzfar();
    }
}
