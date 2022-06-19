package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfiq.class */
public final class zzfiq implements zzgpr<zzfio> {
    private final zzgqe<zzfiv> zza;
    private final zzgqe<zzfjc> zzb;
    private final zzgqe<ScheduledExecutorService> zzc;

    public zzfiq(zzgqe<zzfiv> zzgqeVar, zzgqe<zzfjc> zzgqeVar2, zzgqe<ScheduledExecutorService> zzgqeVar3) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzgpl zza = zzgpq.zza(this.zza);
        zzgpl zza2 = zzgpq.zza(this.zzb);
        zzfis zzfisVar = ((Boolean) zzbgq.zzc().zzb(zzblj.zzgr)).booleanValue() ? new zzfis((zzfio) zza.zzb(), this.zzc.zzb()) : (zzfio) zza2.zzb();
        zzgpz.zzb(zzfisVar);
        return zzfisVar;
    }
}
