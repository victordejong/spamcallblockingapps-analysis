package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzczg.class */
public final class zzczg implements zzgla<zzdih<zzdbc>> {
    private final zzgln<zzdfm> zza;
    private final zzgln<Executor> zzb;

    public zzczg(zzgln<zzdfm> zzglnVar, zzgln<Executor> zzglnVar2) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdih(this.zza.zzb(), this.zzb.zzb());
    }
}
