package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzt;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzexq.class */
public final class zzexq {
    public static zzexo<zzcuk, zzcuq> zza(Context context, zzfby zzfbyVar, zzfcq zzfcqVar) {
        return zzc(context, zzfbyVar, zzfcqVar);
    }

    public static zzexo<zzcuv, zzcva> zzb(Context context, zzfby zzfbyVar, zzfcq zzfcqVar) {
        return zzc(context, zzfbyVar, zzfcqVar);
    }

    private static <AppOpenAdRequestComponent extends zzdal<AppOpenAd>, AppOpenAd extends zzcxg> zzexo<AppOpenAdRequestComponent, AppOpenAd> zzc(Context context, zzfby zzfbyVar, zzfcq zzfcqVar) {
        zzcfz zzn = ((Boolean) zzbet.zzc().zzc(zzbjl.zzeF)).booleanValue() ? zzt.zzg().zzp().zzn() : zzt.zzg().zzp().zzo();
        boolean z = false;
        if (zzn != null) {
            z = false;
            if (zzn.zzi()) {
                z = true;
            }
        }
        if (((Integer) zzbet.zzc().zzc(zzbjl.zzeV)).intValue() > 0) {
            if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzeE)).booleanValue() || z) {
                zzfcp zza = zzfcqVar.zza(zzfcg.AppOpen, context, zzfbyVar, new zzews(new zzewp()));
                zzexe zzexeVar = new zzexe(new zzexd());
                zzfcc zzfccVar = zza.zza;
                zzfsn zzfsnVar = zzchg.zza;
                return new zzewu(zzexeVar, new zzexa(zzfccVar, zzfsnVar), zza.zzb, zza.zza.zze().zzf, zzfsnVar);
            }
        }
        return new zzexd();
    }
}
