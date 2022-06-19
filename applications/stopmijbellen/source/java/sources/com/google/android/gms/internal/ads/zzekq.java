package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzekq.class */
public final class zzekq implements zzgpr<zzekp> {
    private final zzgqe<Context> zza;
    private final zzgqe<zzdop> zzb;
    private final zzgqe<Executor> zzc;

    public zzekq(zzgqe<Context> zzgqeVar, zzgqe<zzdop> zzgqeVar2, zzgqe<Executor> zzgqeVar3) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzekp(this.zza.zzb(), this.zzb.zzb(), this.zzc.zzb());
    }
}
