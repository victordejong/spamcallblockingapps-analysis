package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzevc.class */
public final class zzevc implements zzfrz {
    public final /* synthetic */ zzelx zza;
    public final /* synthetic */ zzevd zzb;
    public final /* synthetic */ zzevf zzc;

    public zzevc(zzevf zzevfVar, zzelx zzelxVar, zzevd zzevdVar) {
        this.zzc = zzevfVar;
        this.zza = zzelxVar;
        this.zzb = zzevdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfrz
    public final void zza(Throwable th) {
        zzexo zzexoVar;
        zzevv zzevvVar;
        zzdak zzk;
        Executor executor;
        zzexoVar = this.zzc.zze;
        zzcup zzcupVar = (zzcup) zzexoVar.zzd();
        zzbcz zzb = zzcupVar == null ? zzfbm.zzb(th, null) : zzcupVar.zzP().zzh(th);
        synchronized (this.zzc) {
            this.zzc.zzh = null;
            if (zzcupVar != null) {
                zzcupVar.zzO().zzbD(zzb);
                if (((Boolean) zzbet.zzc().zzc(zzbjl.zzfP)).booleanValue()) {
                    executor = this.zzc.zzc;
                    executor.execute(new Runnable(this, zzb) { // from class: com.google.android.gms.internal.ads.zzevb
                        private final zzevc zza;
                        private final zzbcz zzb;

                        {
                            this.zza = this;
                            this.zzb = zzb;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            zzevv zzevvVar2;
                            zzevc zzevcVar = this.zza;
                            zzbcz zzbczVar2 = this.zzb;
                            zzevvVar2 = zzevcVar.zzc.zzd;
                            zzevvVar2.zzbD(zzbczVar2);
                        }
                    });
                }
            } else {
                zzevvVar = this.zzc.zzd;
                zzevvVar.zzbD(zzb);
                zzk = this.zzc.zzk(this.zzb);
                ((zzcup) zzk.zzf()).zzP().zze().zzp();
            }
            zzfbh.zza(zzb.zza, th, "AppOpenAdLoader.onFailure");
            this.zza.zza();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfrz
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzevv zzevvVar;
        zzcxg zzcxgVar = (zzcxg) obj;
        synchronized (this.zzc) {
            this.zzc.zzh = null;
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzfP)).booleanValue()) {
                zzdfj zzo = zzcxgVar.zzo();
                zzevvVar = this.zzc.zzd;
                zzo.zzc(zzevvVar);
            }
            this.zza.zzb(zzcxgVar);
        }
    }
}
