package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeuk.class */
public final class zzeuk implements zzgla<zzeui> {
    private final zzgln<zzcge> zza;
    private final zzgln<Boolean> zzb;
    private final zzgln<zzcfu> zzc;
    private final zzgln<zzfsn> zzd;
    private final zzgln<String> zze;
    private final zzgln<ScheduledExecutorService> zzf;

    public zzeuk(zzgln<zzcge> zzglnVar, zzgln<Boolean> zzglnVar2, zzgln<zzcfu> zzglnVar3, zzgln<zzfsn> zzglnVar4, zzgln<String> zzglnVar5, zzgln<ScheduledExecutorService> zzglnVar6) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
        this.zzd = zzglnVar4;
        this.zze = zzglnVar5;
        this.zzf = zzglnVar6;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzcge zzb = this.zza.zzb();
        boolean booleanValue = ((zzeua) this.zzb).zzb().booleanValue();
        zzcfu zzcfuVar = new zzcfu();
        zzfsn zzfsnVar = zzchg.zza;
        zzgli.zzb(zzfsnVar);
        return new zzeui(zzb, booleanValue, zzcfuVar, zzfsnVar, ((zzety) this.zze).zza(), this.zzf.zzb(), null);
    }
}
