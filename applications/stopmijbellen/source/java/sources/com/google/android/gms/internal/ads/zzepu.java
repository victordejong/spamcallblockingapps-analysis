package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.zzt;
import java.util.concurrent.ScheduledExecutorService;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzepu.class */
public final class zzepu implements zzepn<zzdav> {
    @GuardedBy("this")
    private final zzfed zza;
    private final zzcqm zzb;
    private final Context zzc;
    private final zzepk zzd;
    private final zzfjg zze;
    @GuardedBy("this")
    private zzdbj zzf;

    public zzepu(zzcqm zzcqmVar, Context context, zzepk zzepkVar, zzfed zzfedVar) {
        this.zzb = zzcqmVar;
        this.zzc = context;
        this.zzd = zzepkVar;
        this.zza = zzfedVar;
        this.zze = zzcqmVar.zzA();
        zzfedVar.zzu(zzepkVar.zzd());
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final boolean zza() {
        zzdbj zzdbjVar = this.zzf;
        return zzdbjVar != null && zzdbjVar.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final boolean zzb(zzbfd zzbfdVar, String str, zzepl zzeplVar, zzepm<? super zzdav> zzepmVar) throws RemoteException {
        zzfje zzp = zzfje.zzp(this.zzc, 7, 8, zzbfdVar);
        zzt.zzp();
        if (com.google.android.gms.ads.internal.util.zzt.zzL(this.zzc) && zzbfdVar.zzs == null) {
            zzciz.zzg("Failed to load the ad because app ID is missing.");
            this.zzb.zzC().execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzepp
                @Override // java.lang.Runnable
                public final void run() {
                    zzepu.this.zzf();
                }
            });
            if (zzp == null) {
                return false;
            }
            zzfjg zzfjgVar = this.zze;
            zzp.zzg(false);
            zzfjgVar.zza(zzp.zzi());
            return false;
        } else if (str == null) {
            zzciz.zzg("Ad unit ID should not be null for NativeAdLoader.");
            this.zzb.zzC().execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzepq
                @Override // java.lang.Runnable
                public final void run() {
                    zzepu.this.zzg();
                }
            });
            if (zzp == null) {
                return false;
            }
            zzfjg zzfjgVar2 = this.zze;
            zzp.zzg(false);
            zzfjgVar2.zza(zzp.zzi());
            return false;
        } else {
            zzfeu.zza(this.zzc, zzbfdVar.zzf);
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzgA)).booleanValue() && zzbfdVar.zzf) {
                this.zzb.zzn().zzl(true);
            }
            int i = ((zzepo) zzeplVar).zza;
            zzfed zzfedVar = this.zza;
            zzfedVar.zzD(zzbfdVar);
            zzfedVar.zzy(i);
            zzfef zzF = zzfedVar.zzF();
            if (zzF.zzn != null) {
                this.zzd.zzd().zzs(zzF.zzn);
            }
            zzdoo zzj = this.zzb.zzj();
            zzdeb zzdebVar = new zzdeb();
            zzdebVar.zzc(this.zzc);
            zzdebVar.zzf(zzF);
            zzj.zzf(zzdebVar.zzg());
            zzdkc zzdkcVar = new zzdkc();
            zzdkcVar.zzk(this.zzd.zzd(), this.zzb.zzC());
            zzj.zze(zzdkcVar.zzn());
            zzj.zzd(this.zzd.zzc());
            zzj.zzc(new zzcyt(null));
            zzdop zzg = zzj.zzg();
            this.zzb.zzy().zzc(1);
            zzfxb zzfxbVar = zzcjm.zza;
            zzgpz.zzb(zzfxbVar);
            ScheduledExecutorService zzD = this.zzb.zzD();
            zzdby<zzdbc> zza = zzg.zza();
            zzdbj zzdbjVar = new zzdbj(zzfxbVar, zzD, zza.zzh(zza.zzi()));
            this.zzf = zzdbjVar;
            zzdbjVar.zze(new zzept(this, zzepmVar, zzp, zzg));
            return true;
        }
    }

    public final /* synthetic */ void zzf() {
        this.zzd.zza().zza(zzfey.zzd(4, null, null));
    }

    public final /* synthetic */ void zzg() {
        this.zzd.zza().zza(zzfey.zzd(6, null, null));
    }
}
