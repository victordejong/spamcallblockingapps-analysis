package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeml.class */
public final class zzeml implements zzgpr<zzemk> {
    private final zzgqe<Context> zza;
    private final zzgqe<Executor> zzb;
    private final zzgqe<zzdvs> zzc;

    public zzeml(zzgqe<Context> zzgqeVar, zzgqe<Executor> zzgqeVar2, zzgqe<zzdvs> zzgqeVar3) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzemk(this.zza.zzb(), this.zzb.zzb(), this.zzc.zzb());
    }
}
