package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zze;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdzg.class */
public class zzdzg {
    public final String zza = zzbms.zzb.zze();
    public final Map<String, String> zzb = new HashMap();
    public final Executor zzc;
    public final zzcje zzd;
    public final boolean zze;
    private final zzfiz zzf;

    public zzdzg(Executor executor, zzcje zzcjeVar, zzfiz zzfizVar) {
        this.zzc = executor;
        this.zzd = zzcjeVar;
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzbr)).booleanValue()) {
            this.zze = ((Boolean) zzbgq.zzc().zzb(zzblj.zzbv)).booleanValue();
        } else {
            this.zze = ((double) zzbgo.zze().nextFloat()) <= zzbms.zza.zze().doubleValue();
        }
        this.zzf = zzfizVar;
    }

    public final String zzb(Map<String, String> map) {
        return this.zzf.zza(map);
    }

    public final void zzc(Map<String, String> map) {
        final String zza = this.zzf.zza(map);
        if (this.zze) {
            this.zzc.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdzf
                @Override // java.lang.Runnable
                public final void run() {
                    zzdzg zzdzgVar = zzdzg.this;
                    zzdzgVar.zzd.zza(zza);
                }
            });
        }
        zze.zza(zza);
    }
}
