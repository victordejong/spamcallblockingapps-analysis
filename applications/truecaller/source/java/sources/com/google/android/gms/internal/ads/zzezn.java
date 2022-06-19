package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzezn.class */
public final class zzezn implements zzgla<zzezm> {
    private final zzgln<Context> zza;
    private final zzgln<Executor> zzb;
    private final zzgln<zzcoj> zzc;
    private final zzgln<zzexo<zzdsb, zzdrw>> zzd;
    private final zzgln<zzezc> zze;
    private final zzgln<zzfap> zzf;
    private final zzgln<zzfam> zzg;

    public zzezn(zzgln<Context> zzglnVar, zzgln<Executor> zzglnVar2, zzgln<zzcoj> zzglnVar3, zzgln<zzexo<zzdsb, zzdrw>> zzglnVar4, zzgln<zzezc> zzglnVar5, zzgln<zzfap> zzglnVar6, zzgln<zzfam> zzglnVar7) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
        this.zzd = zzglnVar4;
        this.zze = zzglnVar5;
        this.zzf = zzglnVar6;
        this.zzg = zzglnVar7;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzezm(this.zza.zzb(), this.zzb.zzb(), this.zzc.zzb(), ((zzext) this.zzd).zzb(), this.zze.zzb(), new zzfap(), this.zzg.zzb());
    }
}
