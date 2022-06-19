package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzesd.class */
public final class zzesd implements zzgpr<zzfdm> {
    private final zzgqe<Clock> zza;

    public zzesd(zzgqe<Clock> zzgqeVar) {
        this.zza = zzgqeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzfdm(this.zza.zzb());
    }
}
