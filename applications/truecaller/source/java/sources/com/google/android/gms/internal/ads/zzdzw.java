package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdzw.class */
public final class zzdzw implements zzgla<zzdzv> {
    private final zzgln<zzcoj> zza;
    private final zzgln<Context> zzb;
    private final zzgln<zzcgz> zzc;
    private final zzgln<zzfar> zzd;
    private final zzgln<Executor> zze;
    private final zzgln<String> zzf;
    private final zzgln<zzddv> zzg;
    private final zzgln<zzddz> zzh;

    public zzdzw(zzgln<zzcoj> zzglnVar, zzgln<Context> zzglnVar2, zzgln<zzcgz> zzglnVar3, zzgln<zzfar> zzglnVar4, zzgln<Executor> zzglnVar5, zzgln<String> zzglnVar6, zzgln<zzddv> zzglnVar7, zzgln<zzddz> zzglnVar8) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
        this.zzd = zzglnVar4;
        this.zze = zzglnVar5;
        this.zzf = zzglnVar6;
        this.zzg = zzglnVar7;
        this.zzh = zzglnVar8;
    }

    /* renamed from: zza */
    public final zzdzv zzb() {
        zzcoj zzb = this.zza.zzb();
        Context zza = ((zzfbv) this.zzb).zza();
        zzcgz zza2 = ((zzcox) this.zzc).zza();
        zzfar zza3 = ((zzdat) this.zzd).zza();
        zzfsn zzfsnVar = zzchg.zza;
        zzgli.zzb(zzfsnVar);
        return new zzdzv(zzb, zza, zza2, zza3, zzfsnVar, this.zzf.zzb(), ((zzddw) this.zzg).zzb(), ((zzdea) this.zzh).zzb());
    }
}
