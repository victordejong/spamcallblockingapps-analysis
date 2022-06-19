package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfda.class */
public final class zzfda implements zzepn<zzdvn> {
    private final Context zza;
    private final Executor zzb;
    private final zzcqm zzc;
    private final zzfcq zzd;
    private final zzfbc<zzdvs, zzdvn> zze;
    private final zzfea zzf;
    private final zzfjg zzg;
    @GuardedBy("this")
    private final zzfed zzh;
    @GuardedBy("this")
    private zzfxa<zzdvn> zzi;

    public zzfda(Context context, Executor executor, zzcqm zzcqmVar, zzfbc<zzdvs, zzdvn> zzfbcVar, zzfcq zzfcqVar, zzfed zzfedVar, zzfea zzfeaVar) {
        this.zza = context;
        this.zzb = executor;
        this.zzc = zzcqmVar;
        this.zze = zzfbcVar;
        this.zzd = zzfcqVar;
        this.zzh = zzfedVar;
        this.zzf = zzfeaVar;
        this.zzg = zzcqmVar.zzA();
    }

    public final zzdvr zzk(zzfba zzfbaVar) {
        zzdvr zzk = this.zzc.zzk();
        zzdeb zzdebVar = new zzdeb();
        zzdebVar.zzc(this.zza);
        zzdebVar.zzf(((zzfcz) zzfbaVar).zza);
        zzdebVar.zze(this.zzf);
        zzk.zzd(zzdebVar.zzg());
        zzk.zzc(new zzdkc().zzn());
        return zzk;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final boolean zza() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final boolean zzb(zzbfd zzbfdVar, String str, zzepl zzeplVar, zzepm<? super zzdvn> zzepmVar) throws RemoteException {
        zzcen zzcenVar = new zzcen(zzbfdVar, str);
        zzfje zzp = zzfje.zzp(this.zza, 7, 5, zzcenVar.zza);
        boolean z = true;
        if (zzcenVar.zzb == null) {
            zzciz.zzg("Ad unit ID should not be null for rewarded video ad.");
            this.zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfcu
                @Override // java.lang.Runnable
                public final void run() {
                    zzfda.this.zzi();
                }
            });
            if (zzp != null) {
                zzfjg zzfjgVar = this.zzg;
                zzp.zzg(false);
                zzfjgVar.zza(zzp.zzi());
                return false;
            }
        } else {
            zzfxa<zzdvn> zzfxaVar = this.zzi;
            if (zzfxaVar == null || zzfxaVar.isDone()) {
                zzfeu.zza(this.zza, zzcenVar.zza.zzf);
                if (((Boolean) zzbgq.zzc().zzb(zzblj.zzgA)).booleanValue() && zzcenVar.zza.zzf) {
                    this.zzc.zzn().zzl(true);
                }
                zzfed zzfedVar = this.zzh;
                zzfedVar.zzs(zzcenVar.zzb);
                zzfedVar.zzr(zzbfi.zzd());
                zzfedVar.zzD(zzcenVar.zza);
                zzfef zzF = zzfedVar.zzF();
                zzfcz zzfczVar = new zzfcz(null);
                zzfczVar.zza = zzF;
                zzfczVar.zzb = null;
                zzfxa<zzdvn> zzc = this.zze.zzc(new zzfbd(zzfczVar, null), new zzfbb() { // from class: com.google.android.gms.internal.ads.zzfct
                    @Override // com.google.android.gms.internal.ads.zzfbb
                    public final zzddz zza(zzfba zzfbaVar) {
                        zzdvr zzk;
                        zzk = zzfda.this.zzk(zzfbaVar);
                        return zzk;
                    }
                }, null);
                this.zzi = zzc;
                zzfwq.zzr(zzc, new zzfcx(this, zzepmVar, zzp, zzfczVar), this.zzb);
                return z;
            } else if (zzp != null) {
                zzfjg zzfjgVar2 = this.zzg;
                zzp.zzg(false);
                zzfjgVar2.zza(zzp.zzi());
                return false;
            }
        }
        z = false;
        return z;
    }

    public final /* synthetic */ void zzi() {
        this.zzd.zza(zzfey.zzd(6, null, null));
    }

    public final void zzj(int i) {
        this.zzh.zzo().zza(i);
    }
}
