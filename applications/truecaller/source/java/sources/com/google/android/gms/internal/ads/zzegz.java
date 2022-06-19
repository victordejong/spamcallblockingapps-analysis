package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzegz.class */
public final class zzegz implements zzgla<zzegy> {
    private final zzgln<Context> zza;
    private final zzgln<zzdlb> zzb;
    private final zzgln<Executor> zzc;

    public zzegz(zzgln<Context> zzglnVar, zzgln<zzdlb> zzglnVar2, zzgln<Executor> zzglnVar3) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzegy(this.zza.zzb(), this.zzb.zzb(), this.zzc.zzb());
    }
}
