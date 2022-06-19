package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeyb.class */
public final class zzeyb implements zzfrz<zzdji> {
    public final /* synthetic */ zzelx zza;
    public final /* synthetic */ zzdkf zzb;
    public final /* synthetic */ zzeyc zzc;

    public zzeyb(zzeyc zzeycVar, zzelx zzelxVar, zzdkf zzdkfVar) {
        this.zzc = zzeycVar;
        this.zza = zzelxVar;
        this.zzb = zzdkfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfrz
    public final void zza(Throwable th) {
        Executor executor;
        Executor executor2;
        zzbcz zzh = this.zzb.zzP().zzh(th);
        synchronized (this.zzc) {
            this.zzc.zzh = null;
            this.zzb.zzO().zzbD(zzh);
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzfQ)).booleanValue()) {
                executor = this.zzc.zzb;
                executor.execute(new Runnable(this, zzh) { // from class: com.google.android.gms.internal.ads.zzexz
                    private final zzeyb zza;
                    private final zzbcz zzb;

                    {
                        this.zza = this;
                        this.zzb = zzh;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        zzeli zzeliVar;
                        zzeyb zzeybVar = this.zza;
                        zzbcz zzbczVar = this.zzb;
                        zzeliVar = zzeybVar.zzc.zzd;
                        zzeliVar.zzbD(zzbczVar);
                    }
                });
                executor2 = this.zzc.zzb;
                executor2.execute(new Runnable(this, zzh) { // from class: com.google.android.gms.internal.ads.zzeya
                    private final zzeyb zza;
                    private final zzbcz zzb;

                    {
                        this.zza = this;
                        this.zzb = zzh;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        zzezc zzezcVar;
                        zzeyb zzeybVar = this.zza;
                        zzbcz zzbczVar = this.zzb;
                        zzezcVar = zzeybVar.zzc.zze;
                        zzezcVar.zzbD(zzbczVar);
                    }
                });
            }
            zzfbh.zza(zzh.zza, th, "InterstitialAdLoader.onFailure");
            this.zza.zza();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfrz
    public final /* bridge */ /* synthetic */ void zzb(zzdji zzdjiVar) {
        Executor executor;
        Executor executor2;
        zzeli zzeliVar;
        zzezc zzezcVar;
        zzdji zzdjiVar2 = zzdjiVar;
        synchronized (this.zzc) {
            this.zzc.zzh = null;
            zzbjd<Boolean> zzbjdVar = zzbjl.zzfQ;
            if (((Boolean) zzbet.zzc().zzc(zzbjdVar)).booleanValue()) {
                zzdfj zzo = zzdjiVar2.zzo();
                zzeliVar = this.zzc.zzd;
                zzo.zza(zzeliVar);
                zzezcVar = this.zzc.zze;
                zzo.zzd(zzezcVar);
            }
            this.zza.zzb(zzdjiVar2);
            if (((Boolean) zzbet.zzc().zzc(zzbjdVar)).booleanValue()) {
                executor = this.zzc.zzb;
                executor.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzexx
                    private final zzeyb zza;

                    {
                        this.zza = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        zzeli zzeliVar2;
                        zzeliVar2 = this.zza.zzc.zzd;
                        zzeliVar2.zzf();
                    }
                });
                executor2 = this.zzc.zzb;
                executor2.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzexy
                    private final zzeyb zza;

                    {
                        this.zza = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        zzezc zzezcVar2;
                        zzezcVar2 = this.zza.zzc.zze;
                        zzezcVar2.zzf();
                    }
                });
            }
        }
    }
}
