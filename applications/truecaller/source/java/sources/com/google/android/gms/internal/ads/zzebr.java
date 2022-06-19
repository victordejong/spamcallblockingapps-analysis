package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.ArrayDeque;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzebr.class */
public final class zzebr implements zzgla<zzebq> {
    private final zzgln<Context> zza;
    private final zzgln<Executor> zzb;
    private final zzgln<zzcbv> zzc;
    private final zzgln<zzcrz> zzd;
    private final zzgln<zzcbu> zze;
    private final zzgln<ArrayDeque<zzebn>> zzf;
    private final zzgln<zzebv> zzg;

    public zzebr(zzgln<Context> zzglnVar, zzgln<Executor> zzglnVar2, zzgln<zzcbv> zzglnVar3, zzgln<zzcrz> zzglnVar4, zzgln<zzcbu> zzglnVar5, zzgln<ArrayDeque<zzebn>> zzglnVar6, zzgln<zzebv> zzglnVar7) {
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
        return new zzebq(((zzcoo) this.zza).zza(), this.zzb.zzb(), new zzcbv(), ((zzcou) this.zzd).zzb(), ((zzcpf) this.zze).zzb(), this.zzf.zzb(), new zzebv(), null);
    }
}
