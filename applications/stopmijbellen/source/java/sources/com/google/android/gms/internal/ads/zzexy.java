package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzexy.class */
public final class zzexy implements zzgpr<zzexw> {
    private final zzgqe<zzcik> zza;
    private final zzgqe<Boolean> zzb;
    private final zzgqe<zzcia> zzc;
    private final zzgqe<zzfxb> zzd;
    private final zzgqe<String> zze;
    private final zzgqe<ScheduledExecutorService> zzf;

    public zzexy(zzgqe<zzcik> zzgqeVar, zzgqe<Boolean> zzgqeVar2, zzgqe<zzcia> zzgqeVar3, zzgqe<zzfxb> zzgqeVar4, zzgqe<String> zzgqeVar5, zzgqe<ScheduledExecutorService> zzgqeVar6) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
        this.zzd = zzgqeVar4;
        this.zze = zzgqeVar5;
        this.zzf = zzgqeVar6;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzcik zzb = this.zza.zzb();
        boolean booleanValue = ((zzexp) this.zzb).zzb().booleanValue();
        zzcia zzciaVar = new zzcia();
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        return new zzexw(zzb, booleanValue, zzciaVar, zzfxbVar, ((zzexn) this.zze).zza(), this.zzf.zzb(), null);
    }
}
