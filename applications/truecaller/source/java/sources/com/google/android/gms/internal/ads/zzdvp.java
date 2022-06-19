package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zze;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdvp.class */
public class zzdvp {
    public final String zza = zzbkt.zzb.zze();
    public final Map<String, String> zzb = new HashMap();
    public final Executor zzc;
    public final zzcgy zzd;
    public final boolean zze;
    private final zzffm zzf;

    public zzdvp(Executor executor, zzcgy zzcgyVar, zzffm zzffmVar) {
        this.zzc = executor;
        this.zzd = zzcgyVar;
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzbl)).booleanValue()) {
            this.zze = ((Boolean) zzbet.zzc().zzc(zzbjl.zzbp)).booleanValue();
        } else {
            this.zze = ((double) zzber.zze().nextFloat()) <= zzbkt.zza.zze().doubleValue();
        }
        this.zzf = zzffmVar;
    }

    public final void zzb(Map<String, String> map) {
        String zza = this.zzf.zza(map);
        if (this.zze) {
            this.zzc.execute(new Runnable(this, zza) { // from class: com.google.android.gms.internal.ads.zzdvo
                private final zzdvp zza;
                private final String zzb;

                {
                    this.zza = this;
                    this.zzb = zza;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zzdvp zzdvpVar = this.zza;
                    zzdvpVar.zzd.zza(this.zzb);
                }
            });
        }
        zze.zza(zza);
    }

    public final String zzc(Map<String, String> map) {
        return this.zzf.zza(map);
    }
}
