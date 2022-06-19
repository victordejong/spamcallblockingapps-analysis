package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdzd.class */
public final class zzdzd implements zzgpr<zzdzc> {
    private final zzgqe<zzdyv> zza;
    private final zzgqe<Set<zzdzb>> zzb;
    private final zzgqe<Clock> zzc;

    public zzdzd(zzgqe<zzdyv> zzgqeVar, zzgqe<Set<zzdzb>> zzgqeVar2, zzgqe<Clock> zzgqeVar3) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdzc(this.zza.zzb(), ((zzgqc) this.zzb).zzb(), this.zzc.zzb());
    }
}
