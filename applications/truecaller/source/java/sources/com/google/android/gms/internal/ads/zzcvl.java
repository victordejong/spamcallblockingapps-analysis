package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcvl.class */
public final class zzcvl implements zzgla<zzcvk> {
    private final zzgln<zzcxf> zza;
    private final zzgln<Context> zzb;
    private final zzgln<zzfaa> zzc;
    private final zzgln<View> zzd;
    private final zzgln<zzcml> zze;
    private final zzgln<zzcxe> zzf;
    private final zzgln<zzdmx> zzg;
    private final zzgln<zzdiq> zzh;
    private final zzgln<zzekj> zzi;
    private final zzgln<Executor> zzj;

    public zzcvl(zzgln<zzcxf> zzglnVar, zzgln<Context> zzglnVar2, zzgln<zzfaa> zzglnVar3, zzgln<View> zzglnVar4, zzgln<zzcml> zzglnVar5, zzgln<zzcxe> zzglnVar6, zzgln<zzdmx> zzglnVar7, zzgln<zzdiq> zzglnVar8, zzgln<zzekj> zzglnVar9, zzgln<Executor> zzglnVar10) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
        this.zzd = zzglnVar4;
        this.zze = zzglnVar5;
        this.zzf = zzglnVar6;
        this.zzg = zzglnVar7;
        this.zzh = zzglnVar8;
        this.zzi = zzglnVar9;
        this.zzj = zzglnVar10;
    }

    public static zzcvk zzc(zzcxf zzcxfVar, Context context, zzfaa zzfaaVar, View view, zzcml zzcmlVar, zzcxe zzcxeVar, zzdmx zzdmxVar, zzdiq zzdiqVar, zzgku<zzekj> zzgkuVar, Executor executor) {
        return new zzcvk(zzcxfVar, context, zzfaaVar, view, zzcmlVar, zzcxeVar, zzdmxVar, zzdiqVar, zzgkuVar, executor);
    }

    /* renamed from: zza */
    public final zzcvk zzb() {
        return new zzcvk(((zzczb) this.zza).zzb(), this.zzb.zzb(), ((zzcvr) this.zzc).zza(), ((zzcvq) this.zzd).zza(), ((zzcwc) this.zze).zza(), ((zzcvs) this.zzf).zza(), ((zzdkz) this.zzg).zza(), this.zzh.zzb(), zzgkz.zzc(this.zzi), this.zzj.zzb());
    }
}
