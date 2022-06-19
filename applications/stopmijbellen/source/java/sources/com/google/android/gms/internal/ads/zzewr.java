package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzewr.class */
public final class zzewr implements zzevn<zzews> {
    private final Context zza;
    private final zzcik zzb;
    private final ScheduledExecutorService zzc;
    private final Executor zzd;
    private final String zze;
    private final zzcic zzf;

    public zzewr(zzcic zzcicVar, int i, Context context, zzcik zzcikVar, ScheduledExecutorService scheduledExecutorService, Executor executor, String str, byte[] bArr) {
        this.zzf = zzcicVar;
        this.zza = context;
        this.zzb = zzcikVar;
        this.zzc = scheduledExecutorService;
        this.zzd = executor;
        this.zze = str;
    }

    public final /* synthetic */ zzews zza(Exception exc) {
        this.zzb.zzs(exc, "AttestationTokenSignal");
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzevn
    public final zzfxa<zzews> zzb() {
        return zzfwq.zzf((zzfwh) zzfwq.zzo(zzfwq.zzm(zzfwh.zzw(zzfwq.zzl(new zzfvw() { // from class: com.google.android.gms.internal.ads.zzewq
            @Override // com.google.android.gms.internal.ads.zzfvw
            public final zzfxa zza() {
                return zzfwq.zzi(null);
            }
        }, this.zzd)), zzewp.zza, this.zzd), ((Long) zzbgq.zzc().zzb(zzblj.zzaJ)).longValue(), TimeUnit.MILLISECONDS, this.zzc), Exception.class, new zzfpv() { // from class: com.google.android.gms.internal.ads.zzewo
            @Override // com.google.android.gms.internal.ads.zzfpv
            public final Object apply(Object obj) {
                zzewr.this.zza((Exception) obj);
                return null;
            }
        }, zzfxh.zzb());
    }
}
