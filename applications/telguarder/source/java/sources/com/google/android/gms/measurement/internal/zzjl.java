package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzjl.class */
public final class zzjl implements Runnable {
    final long zza;
    final long zzb;
    final /* synthetic */ zzjm zzc;

    public zzjl(zzjm zzjmVar, long j, long j2) {
        this.zzc = zzjmVar;
        this.zza = j;
        this.zzb = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzc.zza.zzx.zzau().zzh(new Runnable(this) { // from class: com.google.android.gms.measurement.internal.zzjk
            private final zzjl zza;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zza = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzjl zzjlVar = this.zza;
                zzjm zzjmVar = zzjlVar.zzc;
                long j = zzjlVar.zza;
                long j2 = zzjlVar.zzb;
                zzjmVar.zza.zzg();
                zzjmVar.zza.zzx.zzat().zzj().zza("Application going to the background");
                boolean z = true;
                if (zzjmVar.zza.zzx.zzc().zzn(null, zzdw.zzat)) {
                    zzjmVar.zza.zzx.zzd().zzq.zzb(true);
                }
                Bundle bundle = new Bundle();
                if (!zzjmVar.zza.zzx.zzc().zzt()) {
                    zzjmVar.zza.zzb.zzb(j2);
                    if (zzjmVar.zza.zzx.zzc().zzn(null, zzdw.zzak)) {
                        zzjo zzjoVar = zzjmVar.zza.zzb;
                        long j3 = zzjoVar.zzb;
                        zzjoVar.zzb = j2;
                        bundle.putLong("_et", j2 - j3);
                        zzib.zzm(zzjmVar.zza.zzx.zzx().zzh(true), bundle, true);
                    } else {
                        z = false;
                    }
                    zzjmVar.zza.zzb.zzd(false, z, j2);
                }
                zzjmVar.zza.zzx.zzk().zzt("auto", "_ab", j, bundle);
            }
        });
    }
}
