package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzbs;
import com.google.android.gms.common.util.Clock;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdsl.class */
public final class zzdsl implements zzgpr<zzdsk> {
    private final zzgqe<zzbs> zza;
    private final zzgqe<Clock> zzb;
    private final zzgqe<Executor> zzc;

    public zzdsl(zzgqe<zzbs> zzgqeVar, zzgqe<Clock> zzgqeVar2, zzgqe<Executor> zzgqeVar3) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzbs zzb = this.zza.zzb();
        Clock zzb2 = this.zzb.zzb();
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        return new zzdsk(zzb, zzb2, zzfxbVar);
    }
}
