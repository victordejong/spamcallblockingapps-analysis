package com.google.android.gms.internal.ads;

import android.content.Context;
import com.freshchat.consumer.sdk.beans.config.DefaultRefreshIntervals;
import com.google.android.gms.ads.internal.util.zzbe;
import com.google.android.gms.ads.internal.util.zzcd;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzt;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbts.class */
public final class zzbts {
    private final Context zzb;
    private final String zzc;
    private final zzcgz zzd;
    private final zzbe<zzbsn> zze;
    private final zzbe<zzbsn> zzf;
    private zzbtr zzg;
    private final Object zza = new Object();
    private int zzh = 1;

    public zzbts(Context context, zzcgz zzcgzVar, String str, zzbe<zzbsn> zzbeVar, zzbe<zzbsn> zzbeVar2) {
        this.zzc = str;
        this.zzb = context.getApplicationContext();
        this.zzd = zzcgzVar;
        this.zze = zzbeVar;
        this.zzf = zzbeVar2;
    }

    public final zzbtr zzf(zzaas zzaasVar) {
        zzbtr zzbtrVar = new zzbtr(this.zzf);
        zzchg.zze.execute(new Runnable(this, null, zzbtrVar) { // from class: com.google.android.gms.internal.ads.zzbsx
            private final zzbts zza;
            private final zzbtr zzb;

            {
                this.zza = this;
                this.zzb = zzbtrVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzi(null, this.zzb);
            }
        });
        zzbtrVar.zzf(new zzbth(this, zzbtrVar), new zzbti(this, zzbtrVar));
        return zzbtrVar;
    }

    public final zzbtm zzg(zzaas zzaasVar) {
        synchronized (this.zza) {
            synchronized (this.zza) {
                zzbtr zzbtrVar = this.zzg;
                if (zzbtrVar != null && this.zzh == 0) {
                    zzbtrVar.zzf(new zzchp(this) { // from class: com.google.android.gms.internal.ads.zzbsy
                        private final zzbts zza;

                        {
                            this.zza = this;
                        }

                        @Override // com.google.android.gms.internal.ads.zzchp
                        public final void zza(Object obj) {
                            this.zza.zzh((zzbsn) obj);
                        }
                    }, zzbsz.zza);
                }
            }
            zzbtr zzbtrVar2 = this.zzg;
            if (zzbtrVar2 != null && zzbtrVar2.zzi() != -1) {
                int i = this.zzh;
                if (i == 0) {
                    return this.zzg.zza();
                } else if (i != 1) {
                    return this.zzg.zza();
                } else {
                    this.zzh = 2;
                    zzf(null);
                    return this.zzg.zza();
                }
            }
            this.zzh = 2;
            zzbtr zzf = zzf(null);
            this.zzg = zzf;
            return zzf.zza();
        }
    }

    public final /* synthetic */ void zzh(zzbsn zzbsnVar) {
        if (zzbsnVar.zzj()) {
            this.zzh = 1;
        }
    }

    public final /* synthetic */ void zzi(zzaas zzaasVar, zzbtr zzbtrVar) {
        try {
            zzbsv zzbsvVar = new zzbsv(this.zzb, this.zzd, null, null);
            zzbsvVar.zzh(new zzbsm(this, zzbtrVar, zzbsvVar) { // from class: com.google.android.gms.internal.ads.zzbta
                private final zzbts zza;
                private final zzbtr zzb;
                private final zzbsn zzc;

                {
                    this.zza = this;
                    this.zzb = zzbtrVar;
                    this.zzc = zzbsvVar;
                }

                @Override // com.google.android.gms.internal.ads.zzbsm
                public final void zza() {
                    final zzbts zzbtsVar = this.zza;
                    final zzbtr zzbtrVar2 = this.zzb;
                    final zzbsn zzbsnVar = this.zzc;
                    zzs.zza.postDelayed(new Runnable(zzbtsVar, zzbtrVar2, zzbsnVar) { // from class: com.google.android.gms.internal.ads.zzbtb
                        private final zzbts zza;
                        private final zzbtr zzb;
                        private final zzbsn zzc;

                        {
                            this.zza = zzbtsVar;
                            this.zzb = zzbtrVar2;
                            this.zzc = zzbsnVar;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.zza.zzj(this.zzb, this.zzc);
                        }
                    }, 10000L);
                }
            });
            zzbsvVar.zzl("/jsLoaded", new zzbtd(this, zzbtrVar, zzbsvVar));
            zzcd zzcdVar = new zzcd();
            zzbte zzbteVar = new zzbte(this, null, zzbsvVar, zzcdVar);
            zzcdVar.zzb(zzbteVar);
            zzbsvVar.zzl("/requestReload", zzbteVar);
            if (this.zzc.endsWith(".js")) {
                zzbsvVar.zzc(this.zzc);
            } else if (this.zzc.startsWith("<html>")) {
                zzbsvVar.zzg(this.zzc);
            } else {
                zzbsvVar.zzf(this.zzc);
            }
            zzs.zza.postDelayed(new zzbtg(this, zzbtrVar, zzbsvVar), DefaultRefreshIntervals.ACTIVE_CONV_MAX_FETCH_INTERVAL);
        } catch (Throwable th) {
            zzcgt.zzg("Error creating webview.", th);
            zzt.zzg().zzk(th, "SdkJavascriptFactory.loadJavascriptEngine");
            zzbtrVar.zzh();
        }
    }

    public final /* synthetic */ void zzj(zzbtr zzbtrVar, zzbsn zzbsnVar) {
        synchronized (this.zza) {
            if (zzbtrVar.zzi() != -1 && zzbtrVar.zzi() != 1) {
                zzbtrVar.zzh();
                zzchg.zze.execute(zzbtc.zza(zzbsnVar));
                zze.zza("Could not receive loaded message in a timely manner. Rejecting.");
            }
        }
    }
}
