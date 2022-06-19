package com.google.android.gms.internal.ads;

import android.os.Binder;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzt;
import java.io.InputStream;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdzk.class */
public final class zzdzk {
    private final ScheduledExecutorService zza;
    private final zzfsn zzb;
    private final zzeac zzc;
    private final zzgku<zzebq> zzd;

    public zzdzk(ScheduledExecutorService scheduledExecutorService, zzfsn zzfsnVar, zzeac zzeacVar, zzgku<zzebq> zzgkuVar) {
        this.zza = scheduledExecutorService;
        this.zzb = zzfsnVar;
        this.zzc = zzeacVar;
        this.zzd = zzgkuVar;
    }

    public final zzfsm<InputStream> zza(zzcbj zzcbjVar) {
        zzchl<InputStream> zzchlVar;
        String str = zzcbjVar.zzd;
        zzt.zzc();
        if (zzs.zzF(str)) {
            zzchlVar = zzfsd.zzc(new zzeap(1));
        } else {
            zzeac zzeacVar = this.zzc;
            synchronized (zzeacVar.zzb) {
                if (zzeacVar.zzc) {
                    zzchlVar = zzeacVar.zza;
                } else {
                    zzeacVar.zzc = true;
                    zzeacVar.zze = zzcbjVar;
                    zzeacVar.zzf.checkAvailabilityAndConnect();
                    zzeacVar.zza.zze(new Runnable(zzeacVar) { // from class: com.google.android.gms.internal.ads.zzeab
                        private final zzeac zza;

                        {
                            this.zza = zzeacVar;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.zza.zza();
                        }
                    }, zzchg.zzf);
                    zzchlVar = zzeacVar.zza;
                }
            }
        }
        int callingUid = Binder.getCallingUid();
        return zzfsd.zzg((zzfru) zzfsd.zzh(zzfru.zzw((zzfsm) zzchlVar), ((Integer) zzbet.zzc().zzc(zzbjl.zzdP)).intValue(), TimeUnit.SECONDS, this.zza), Throwable.class, new zzfrk(this, zzcbjVar, callingUid) { // from class: com.google.android.gms.internal.ads.zzdzj
            private final zzdzk zza;
            private final zzcbj zzb;
            private final int zzc;

            {
                this.zza = this;
                this.zzb = zzcbjVar;
                this.zzc = callingUid;
            }

            @Override // com.google.android.gms.internal.ads.zzfrk
            public final zzfsm zza(Object obj) {
                return this.zza.zzb(this.zzb, this.zzc, (Throwable) obj);
            }
        }, this.zzb);
    }

    public final /* synthetic */ zzfsm zzb(zzcbj zzcbjVar, int i, Throwable th) throws Exception {
        return this.zzd.zzb().zzi(zzcbjVar, i);
    }
}
