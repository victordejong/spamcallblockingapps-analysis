package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfbq.class */
public final class zzfbq implements zzepn<zzdmw> {
    private final Context zza;
    private final Executor zzb;
    private final zzcqm zzc;
    private final zzeox zzd;
    private final zzfcq zze;
    private zzbme zzf;
    private final zzfjg zzg;
    @GuardedBy("this")
    private final zzfed zzh;
    @GuardedBy("this")
    private zzfxa<zzdmw> zzi;

    public zzfbq(Context context, Executor executor, zzcqm zzcqmVar, zzeox zzeoxVar, zzfcq zzfcqVar, zzfed zzfedVar) {
        this.zza = context;
        this.zzb = executor;
        this.zzc = zzcqmVar;
        this.zzd = zzeoxVar;
        this.zzh = zzfedVar;
        this.zze = zzfcqVar;
        this.zzg = zzcqmVar.zzA();
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final boolean zza() {
        zzfxa<zzdmw> zzfxaVar = this.zzi;
        return zzfxaVar != null && !zzfxaVar.isDone();
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final boolean zzb(zzbfd zzbfdVar, String str, zzepl zzeplVar, zzepm<? super zzdmw> zzepmVar) {
        zzdnt zzdntVar;
        zzfje zzp = zzfje.zzp(this.zza, 7, 4, zzbfdVar);
        if (str == null) {
            zzciz.zzg("Ad unit ID should not be null for interstitial ad.");
            this.zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfbk
                @Override // java.lang.Runnable
                public final void run() {
                    zzfbq.this.zzh();
                }
            });
            if (zzp == null) {
                return false;
            }
            zzfjg zzfjgVar = this.zzg;
            zzp.zzg(false);
            zzfjgVar.zza(zzp.zzi());
            return false;
        } else if (zza()) {
            if (zzp == null) {
                return false;
            }
            zzfjg zzfjgVar2 = this.zzg;
            zzp.zzg(false);
            zzfjgVar2.zza(zzp.zzi());
            return false;
        } else {
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzgA)).booleanValue() && zzbfdVar.zzf) {
                this.zzc.zzn().zzl(true);
            }
            zzbfi zzbfiVar = ((zzfbj) zzeplVar).zza;
            zzfed zzfedVar = this.zzh;
            zzfedVar.zzs(str);
            zzfedVar.zzr(zzbfiVar);
            zzfedVar.zzD(zzbfdVar);
            zzfef zzF = zzfedVar.zzF();
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzfX)).booleanValue()) {
                zzdns zzi = this.zzc.zzi();
                zzdeb zzdebVar = new zzdeb();
                zzdebVar.zzc(this.zza);
                zzdebVar.zzf(zzF);
                zzi.zze(zzdebVar.zzg());
                zzdkc zzdkcVar = new zzdkc();
                zzdkcVar.zzj(this.zzd, this.zzb);
                zzdkcVar.zzk(this.zzd, this.zzb);
                zzi.zzd(zzdkcVar.zzn());
                zzi.zzc(new zzenh(this.zzf));
                zzdntVar = zzi.zzf();
            } else {
                zzdkc zzdkcVar2 = new zzdkc();
                zzfcq zzfcqVar = this.zze;
                if (zzfcqVar != null) {
                    zzdkcVar2.zze(zzfcqVar, this.zzb);
                    zzdkcVar2.zzf(this.zze, this.zzb);
                    zzdkcVar2.zzb(this.zze, this.zzb);
                }
                zzdns zzi2 = this.zzc.zzi();
                zzdeb zzdebVar2 = new zzdeb();
                zzdebVar2.zzc(this.zza);
                zzdebVar2.zzf(zzF);
                zzi2.zze(zzdebVar2.zzg());
                zzdkcVar2.zzj(this.zzd, this.zzb);
                zzdkcVar2.zze(this.zzd, this.zzb);
                zzdkcVar2.zzf(this.zzd, this.zzb);
                zzdkcVar2.zzb(this.zzd, this.zzb);
                zzdkcVar2.zza(this.zzd, this.zzb);
                zzdkcVar2.zzl(this.zzd, this.zzb);
                zzdkcVar2.zzk(this.zzd, this.zzb);
                zzdkcVar2.zzi(this.zzd, this.zzb);
                zzdkcVar2.zzc(this.zzd, this.zzb);
                zzi2.zzd(zzdkcVar2.zzn());
                zzi2.zzc(new zzenh(this.zzf));
                zzdntVar = zzi2.zzf();
            }
            zzdby<zzdmw> zza = zzdntVar.zza();
            zzfxa<zzdmw> zzh = zza.zzh(zza.zzi());
            this.zzi = zzh;
            zzfwq.zzr(zzh, new zzfbp(this, zzepmVar, zzp, zzdntVar), this.zzb);
            return true;
        }
    }

    public final /* synthetic */ void zzh() {
        this.zzd.zza(zzfey.zzd(6, null, null));
    }

    public final void zzi(zzbme zzbmeVar) {
        this.zzf = zzbmeVar;
    }
}
