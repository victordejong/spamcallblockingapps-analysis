package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdzl.class */
public final class zzdzl implements zzgpr<zzdzk> {
    private final zzgqe<Clock> zza;

    public zzdzl(zzgqe<Clock> zzgqeVar) {
        this.zza = zzgqeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdzk(this.zza.zzb());
    }
}
