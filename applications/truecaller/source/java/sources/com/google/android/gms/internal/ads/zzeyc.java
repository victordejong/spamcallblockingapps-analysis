package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeyc.class */
public final class zzeyc implements zzely<zzdji> {
    private final Context zza;
    private final Executor zzb;
    private final zzcoj zzc;
    private final zzeli zzd;
    private final zzezc zze;
    private zzbkg zzf;
    private final zzfap zzg;
    private zzfsm<zzdji> zzh;

    public zzeyc(Context context, Executor executor, zzcoj zzcojVar, zzeli zzeliVar, zzezc zzezcVar, zzfap zzfapVar) {
        this.zza = context;
        this.zzb = executor;
        this.zzc = zzcojVar;
        this.zzd = zzeliVar;
        this.zzg = zzfapVar;
        this.zze = zzezcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzely
    public final boolean zza(zzbdg zzbdgVar, String str, zzelw zzelwVar, zzelx<? super zzdji> zzelxVar) {
        zzdkf zzdkfVar;
        if (str == null) {
            zzcgt.zzf("Ad unit ID should not be null for interstitial ad.");
            this.zzb.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzexw
                private final zzeyc zza;

                {
                    this.zza = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzh();
                }
            });
            return false;
        } else if (zzb()) {
            return false;
        } else {
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzgp)).booleanValue() && zzbdgVar.zzf) {
                this.zzc.zzz().zzc(true);
            }
            zzbdl zzbdlVar = ((zzexv) zzelwVar).zza;
            zzfap zzfapVar = this.zzg;
            zzfapVar.zzw(str);
            zzfapVar.zzt(zzbdlVar);
            zzfapVar.zzr(zzbdgVar);
            zzfar zzL = zzfapVar.zzL();
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzfQ)).booleanValue()) {
                zzdke zzp = this.zzc.zzp();
                zzdam zzdamVar = new zzdam();
                zzdamVar.zze(this.zza);
                zzdamVar.zzf(zzL);
                zzp.zzc(zzdamVar.zzh());
                zzdgn zzdgnVar = new zzdgn();
                zzdgnVar.zzB(this.zzd, this.zzb);
                zzdgnVar.zzt(this.zzd, this.zzb);
                zzp.zzd(zzdgnVar.zzC());
                zzp.zzb(new zzejq(this.zzf));
                zzdkfVar = zzp.zza();
            } else {
                zzdgn zzdgnVar2 = new zzdgn();
                zzezc zzezcVar = this.zze;
                if (zzezcVar != null) {
                    zzdgnVar2.zzp(zzezcVar, this.zzb);
                    zzdgnVar2.zzq(this.zze, this.zzb);
                    zzdgnVar2.zzr(this.zze, this.zzb);
                }
                zzdke zzp2 = this.zzc.zzp();
                zzdam zzdamVar2 = new zzdam();
                zzdamVar2.zze(this.zza);
                zzdamVar2.zzf(zzL);
                zzp2.zzc(zzdamVar2.zzh());
                zzdgnVar2.zzB(this.zzd, this.zzb);
                zzdgnVar2.zzp(this.zzd, this.zzb);
                zzdgnVar2.zzq(this.zzd, this.zzb);
                zzdgnVar2.zzr(this.zzd, this.zzb);
                zzdgnVar2.zzu(this.zzd, this.zzb);
                zzdgnVar2.zzv(this.zzd, this.zzb);
                zzdgnVar2.zzt(this.zzd, this.zzb);
                zzdgnVar2.zzz(this.zzd, this.zzb);
                zzdgnVar2.zzs(this.zzd, this.zzb);
                zzp2.zzd(zzdgnVar2.zzC());
                zzp2.zzb(new zzejq(this.zzf));
                zzdkfVar = zzp2.zza();
            }
            zzcyj<zzdji> zzP = zzdkfVar.zzP();
            zzfsm<zzdji> zzd = zzP.zzd(zzP.zzc());
            this.zzh = zzd;
            zzfsd.zzp(zzd, new zzeyb(this, zzelxVar, zzdkfVar), this.zzb);
            return true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzely
    public final boolean zzb() {
        zzfsm<zzdji> zzfsmVar = this.zzh;
        return zzfsmVar != null && !zzfsmVar.isDone();
    }

    public final void zzg(zzbkg zzbkgVar) {
        this.zzf = zzbkgVar;
    }

    public final /* synthetic */ void zzh() {
        this.zzd.zzbD(zzfbm.zzd(6, null, null));
    }
}
