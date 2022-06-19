package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzby;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeka.class */
public final class zzeka implements zzeib<zzdmw, zzfev, zzejp> {
    private final Context zza;
    private final zzdnt zzb;
    private final zzcjf zzc;
    private final Executor zzd;

    public zzeka(Context context, zzcjf zzcjfVar, zzdnt zzdntVar, Executor executor) {
        this.zza = context;
        this.zzc = zzcjfVar;
        this.zzb = zzdntVar;
        this.zzd = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzeib
    public final /* bridge */ /* synthetic */ zzdmw zza(zzfdz zzfdzVar, zzfdn zzfdnVar, final zzehw<zzfev, zzejp> zzehwVar) throws zzfek, zzelj {
        zzdmx zze = this.zzb.zze(new zzdbk(zzfdzVar, zzfdnVar, zzehwVar.zza), new zzdna(new zzdob() { // from class: com.google.android.gms.internal.ads.zzejz
            @Override // com.google.android.gms.internal.ads.zzdob
            public final void zza(boolean z, Context context, zzdfe zzdfeVar) {
                zzeka.this.zzc(zzehwVar, z, context, zzdfeVar);
            }
        }, null));
        zze.zzd().zzj(new zzcwl(zzehwVar.zzb), this.zzd);
        zzehwVar.zzc.zzc(zze.zzi());
        return zze.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzeib
    public final void zzb(zzfdz zzfdzVar, zzfdn zzfdnVar, zzehw<zzfev, zzejp> zzehwVar) throws zzfek {
        zzehwVar.zzb.zzn(this.zza, zzfdzVar.zza.zza.zzd, zzfdnVar.zzw.toString(), zzby.zzl(zzfdnVar.zzt), zzehwVar.zzc);
    }

    public final /* synthetic */ void zzc(zzehw zzehwVar, boolean z, Context context, zzdfe zzdfeVar) throws zzdoa {
        try {
            ((zzfev) zzehwVar.zzb).zzu(z);
            if (this.zzc.zzc < ((Integer) zzbgq.zzc().zzb(zzblj.zzax)).intValue()) {
                ((zzfev) zzehwVar.zzb).zzv();
            } else {
                ((zzfev) zzehwVar.zzb).zzw(context);
            }
        } catch (zzfek e) {
            zzciz.zzi("Cannot show interstitial.");
            throw new zzdoa(e.getCause());
        }
    }
}
