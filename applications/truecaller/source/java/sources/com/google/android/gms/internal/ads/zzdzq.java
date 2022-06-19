package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdzq.class */
public final class zzdzq implements zzgla<zzdzp> {
    private final zzgln<zzfar> zza;
    private final zzgln<zzdyq> zzb;
    private final zzgln<zzfsn> zzc;
    private final zzgln<ScheduledExecutorService> zzd;
    private final zzgln<zzecu> zze;

    public zzdzq(zzgln<zzfar> zzglnVar, zzgln<zzdyq> zzglnVar2, zzgln<zzfsn> zzglnVar3, zzgln<ScheduledExecutorService> zzglnVar4, zzgln<zzecu> zzglnVar5) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
        this.zzd = zzglnVar4;
        this.zze = zzglnVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzfar zza = ((zzdat) this.zza).zza();
        zzdyq zzb = ((zzdyr) this.zzb).zzb();
        zzfsn zzfsnVar = zzchg.zza;
        zzgli.zzb(zzfsnVar);
        return new zzdzp(zza, zzb, zzfsnVar, this.zzd.zzb(), this.zze.zzb());
    }
}
