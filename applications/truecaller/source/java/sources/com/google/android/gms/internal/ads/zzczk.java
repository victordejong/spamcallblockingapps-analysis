package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzczk.class */
public final class zzczk implements zzgla<zzdih<zzddb>> {
    private final zzgln<zzdfm> zza;
    private final zzgln<Executor> zzb;

    public zzczk(zzgln<zzdfm> zzglnVar, zzgln<Executor> zzglnVar2) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdih(this.zza.zzb(), this.zzb.zzb());
    }
}
