package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzelo.class */
public final class zzelo implements zzeib<zzdvn, zzfev, zzejp> {
    private final Context zza;
    private final Executor zzb;
    private final zzdvs zzc;

    public zzelo(Context context, Executor executor, zzdvs zzdvsVar) {
        this.zza = context;
        this.zzb = executor;
        this.zzc = zzdvsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeib
    public final /* bridge */ /* synthetic */ zzdvn zza(zzfdz zzfdzVar, zzfdn zzfdnVar, final zzehw<zzfev, zzejp> zzehwVar) throws zzfek, zzelj {
        zzdvo zze = this.zzc.zze(new zzdbk(zzfdzVar, zzfdnVar, zzehwVar.zza), new zzdvp(new zzdob() { // from class: com.google.android.gms.internal.ads.zzeln
            @Override // com.google.android.gms.internal.ads.zzdob
            public final void zza(boolean z, Context context, zzdfe zzdfeVar) {
                zzehw zzehwVar2 = zzehw.this;
                try {
                    ((zzfev) zzehwVar2.zzb).zzu(z);
                    ((zzfev) zzehwVar2.zzb).zzx(context);
                } catch (zzfek e) {
                    throw new zzdoa(e.getCause());
                }
            }
        }));
        zze.zzd().zzj(new zzcwl(zzehwVar.zzb), this.zzb);
        zzehwVar.zzc.zzc(zze.zzm());
        return zze.zzk();
    }

    @Override // com.google.android.gms.internal.ads.zzeib
    public final void zzb(zzfdz zzfdzVar, zzfdn zzfdnVar, zzehw<zzfev, zzejp> zzehwVar) throws zzfek {
        try {
            zzfef zzfefVar = zzfdzVar.zza.zza;
            if (zzfefVar.zzo.zza == 3) {
                zzehwVar.zzb.zzq(this.zza, zzfefVar.zzd, zzfdnVar.zzw.toString(), zzehwVar.zzc);
            } else {
                zzehwVar.zzb.zzp(this.zza, zzfefVar.zzd, zzfdnVar.zzw.toString(), zzehwVar.zzc);
            }
        } catch (Exception e) {
            String valueOf = String.valueOf(zzehwVar.zza);
            zzciz.zzk(valueOf.length() != 0 ? "Fail to load ad from adapter ".concat(valueOf) : new String("Fail to load ad from adapter "), e);
        }
    }
}
