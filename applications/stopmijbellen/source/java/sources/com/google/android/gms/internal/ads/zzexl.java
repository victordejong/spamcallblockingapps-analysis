package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzexl.class */
public final class zzexl implements zzgpr<zzexj> {
    private final zzgqe<zzcbw> zza;
    private final zzgqe<ScheduledExecutorService> zzb;
    private final zzgqe<Context> zzc;

    public zzexl(zzgqe<zzcbw> zzgqeVar, zzgqe<ScheduledExecutorService> zzgqeVar2, zzgqe<Context> zzgqeVar3) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzexj(new zzcbw(), this.zzb.zzb(), ((zzcqr) this.zzc).zza(), null);
    }
}
