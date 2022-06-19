package com.google.android.gms.internal.ads;

import java.util.Objects;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfcx.class */
public final class zzfcx implements zzfwm<zzdvn> {
    public final /* synthetic */ zzepm zza;
    public final /* synthetic */ zzfje zzb;
    public final /* synthetic */ zzfcz zzc;
    public final /* synthetic */ zzfda zzd;

    public zzfcx(zzfda zzfdaVar, zzepm zzepmVar, zzfje zzfjeVar, zzfcz zzfczVar) {
        this.zzd = zzfdaVar;
        this.zza = zzepmVar;
        this.zzb = zzfjeVar;
        this.zzc = zzfczVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfwm
    public final void zza(Throwable th) {
        zzfbc zzfbcVar;
        zzfjg zzfjgVar;
        zzfcq zzfcqVar;
        zzdvr zzk;
        Executor executor;
        zzfbcVar = this.zzd.zze;
        zzdvs zzdvsVar = (zzdvs) zzfbcVar.zzd();
        zzbew zzb = zzdvsVar == null ? zzfey.zzb(th, null) : zzdvsVar.zzb().zza(th);
        synchronized (this.zzd) {
            if (zzdvsVar != null) {
                zzdvsVar.zza().zza(zzb);
                executor = this.zzd.zzb;
                final zzbew zzbewVar = zzb;
                executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfcw
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzfcq zzfcqVar2;
                        zzfcx zzfcxVar = zzfcx.this;
                        zzbew zzbewVar2 = zzbewVar;
                        zzfcqVar2 = zzfcxVar.zzd.zzd;
                        zzfcqVar2.zza(zzbewVar2);
                    }
                });
            } else {
                zzfcqVar = this.zzd.zzd;
                zzfcqVar.zza(zzb);
                zzk = this.zzd.zzk(this.zzc);
                zzk.zze().zzb().zzc().zzb();
            }
            zzfeu.zzb(zzb.zza, th, "RewardedAdLoader.onFailure");
            if (this.zzb != null) {
                zzfjgVar = this.zzd.zzg;
                zzfje zzfjeVar = this.zzb;
                zzfjeVar.zzc(zzb);
                zzfjeVar.zzg(false);
                zzfjgVar.zza(zzfjeVar.zzi());
            }
            this.zza.zza();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfwm
    public final /* bridge */ /* synthetic */ void zzb(zzdvn zzdvnVar) {
        zzfcq zzfcqVar;
        Executor executor;
        final zzfcq zzfcqVar2;
        zzfcq zzfcqVar3;
        zzfjg zzfjgVar;
        zzdvn zzdvnVar2 = zzdvnVar;
        synchronized (this.zzd) {
            zzdiz zzn = zzdvnVar2.zzn();
            zzfcqVar = this.zzd.zzd;
            zzn.zzd(zzfcqVar);
            this.zza.zzb(zzdvnVar2);
            executor = this.zzd.zzb;
            zzfcqVar2 = this.zzd.zzd;
            Objects.requireNonNull(zzfcqVar2);
            executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfcv
                @Override // java.lang.Runnable
                public final void run() {
                    zzfcq.this.zzn();
                }
            });
            zzfcqVar3 = this.zzd.zzd;
            zzfcqVar3.zzv();
            if (this.zzb != null) {
                zzfjgVar = this.zzd.zzg;
                zzfje zzfjeVar = this.zzb;
                zzfjeVar.zzd(zzdvnVar2.zzp().zzb);
                zzfjeVar.zze(zzdvnVar2.zzl().zze());
                zzfjeVar.zzg(true);
                zzfjgVar.zza(zzfjeVar.zzi());
            }
        }
    }
}
