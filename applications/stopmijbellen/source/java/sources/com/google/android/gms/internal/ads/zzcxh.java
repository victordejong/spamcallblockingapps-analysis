package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcxh.class */
public final class zzcxh implements zzgpr<zzcxa> {
    private final zzgqe<zzaxw> zza;
    private final zzgqe<zzbwq> zzb;
    private final zzgqe<Executor> zzc;

    public zzcxh(zzgqe<zzaxw> zzgqeVar, zzgqe<zzbwq> zzgqeVar2, zzgqe<Executor> zzgqeVar3) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzaxw zzb = this.zza.zzb();
        zzbwq zzb2 = this.zzb.zzb();
        zzfxb zza = zzfgr.zza();
        zzgpz.zzb(zza);
        return new zzcxa(zzb.zzc(), zzb2, zza);
    }
}
