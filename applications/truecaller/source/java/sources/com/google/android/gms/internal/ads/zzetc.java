package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzetc.class */
public final class zzetc implements zzery<zzetd> {
    private final Context zza;
    private final zzcge zzb;
    private final ScheduledExecutorService zzc;
    private final Executor zzd;
    private final String zze;
    private final zzcfw zzf;

    public zzetc(zzcfw zzcfwVar, int i, Context context, zzcge zzcgeVar, ScheduledExecutorService scheduledExecutorService, Executor executor, String str, byte[] bArr) {
        this.zzf = zzcfwVar;
        this.zza = context;
        this.zzb = zzcgeVar;
        this.zzc = scheduledExecutorService;
        this.zzd = executor;
        this.zze = str;
    }

    @Override // com.google.android.gms.internal.ads.zzery
    public final zzfsm<zzetd> zza() {
        return zzfsd.zzf((zzfru) zzfsd.zzh(zzfsd.zzj(zzfru.zzw(zzfsd.zze(new zzfrj(this) { // from class: com.google.android.gms.internal.ads.zzesz
            private final zzetc zza;

            {
                this.zza = this;
            }

            @Override // com.google.android.gms.internal.ads.zzfrj
            public final zzfsm zza() {
                return zzfsd.zza(null);
            }
        }, this.zzd)), zzeta.zza, this.zzd), ((Long) zzbet.zzc().zzc(zzbjl.zzaG)).longValue(), TimeUnit.MILLISECONDS, this.zzc), Exception.class, new zzfln(this) { // from class: com.google.android.gms.internal.ads.zzetb
            private final zzetc zza;

            {
                this.zza = this;
            }

            @Override // com.google.android.gms.internal.ads.zzfln
            public final Object apply(Object obj) {
                this.zza.zzb((Exception) obj);
                return null;
            }
        }, zzfst.zza());
    }

    public final /* synthetic */ zzetd zzb(Exception exc) {
        this.zzb.zzk(exc, "AttestationTokenSignal");
        return null;
    }
}
