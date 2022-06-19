package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzemk.class */
public final class zzemk implements zzeib<zzdvn, zzfev, zzejq> {
    private final Context zza;
    private final Executor zzb;
    private final zzdvs zzc;

    public zzemk(Context context, Executor executor, zzdvs zzdvsVar) {
        this.zza = context;
        this.zzb = executor;
        this.zzc = zzdvsVar;
    }

    public static final void zze(zzfdz zzfdzVar, zzfdn zzfdnVar, zzehw<zzfev, zzejq> zzehwVar) {
        try {
            zzehwVar.zzb.zzk(zzfdzVar.zza.zza.zzd, zzfdnVar.zzw.toString());
        } catch (Exception e) {
            String valueOf = String.valueOf(zzehwVar.zza);
            zzciz.zzk(valueOf.length() != 0 ? "Fail to load ad from adapter ".concat(valueOf) : new String("Fail to load ad from adapter "), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeib
    public final /* bridge */ /* synthetic */ zzdvn zza(zzfdz zzfdzVar, zzfdn zzfdnVar, final zzehw<zzfev, zzejq> zzehwVar) throws zzfek, zzelj {
        zzdvo zze = this.zzc.zze(new zzdbk(zzfdzVar, zzfdnVar, zzehwVar.zza), new zzdvp(new zzdob() { // from class: com.google.android.gms.internal.ads.zzemg
            @Override // com.google.android.gms.internal.ads.zzdob
            public final void zza(boolean z, Context context, zzdfe zzdfeVar) {
                zzehw zzehwVar2 = zzehw.this;
                try {
                    ((zzfev) zzehwVar2.zzb).zzu(z);
                    ((zzfev) zzehwVar2.zzb).zzy();
                } catch (zzfek e) {
                    zzciz.zzk("Cannot show rewarded video.", e);
                    throw new zzdoa(e.getCause());
                }
            }
        }));
        zze.zzd().zzj(new zzcwl(zzehwVar.zzb), this.zzb);
        zzdfy zze2 = zze.zze();
        zzdep zzb = zze.zzb();
        zzehwVar.zzc.zzc(new zzemj(this, zze.zza(), zzb, zze2, zze.zzg()));
        return zze.zzk();
    }

    @Override // com.google.android.gms.internal.ads.zzeib
    public final void zzb(zzfdz zzfdzVar, zzfdn zzfdnVar, zzehw<zzfev, zzejq> zzehwVar) throws zzfek {
        if (zzehwVar.zzb.zzA()) {
            zze(zzfdzVar, zzfdnVar, zzehwVar);
            return;
        }
        zzehwVar.zzc.zzd(new zzemi(this, zzfdzVar, zzfdnVar, zzehwVar));
        zzehwVar.zzb.zzh(this.zza, zzfdzVar.zza.zza.zzd, null, zzehwVar.zzc, zzfdnVar.zzw.toString());
    }
}
