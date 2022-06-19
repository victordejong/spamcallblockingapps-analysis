package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzg;
import com.google.android.gms.common.util.Clock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcgj.class */
public final class zzcgj implements zzgpr<zzcgi> {
    private final zzgqe<Clock> zza;
    private final zzgqe<zzg> zzb;
    private final zzgqe<zzchh> zzc;

    public zzcgj(zzgqe<Clock> zzgqeVar, zzgqe<zzg> zzgqeVar2, zzgqe<zzchh> zzgqeVar3) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzcgi(this.zza.zzb(), this.zzb.zzb(), this.zzc.zzb());
    }
}
