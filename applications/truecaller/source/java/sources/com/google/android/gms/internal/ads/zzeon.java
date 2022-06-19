package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeon.class */
public final class zzeon implements zzgla<zzeoh<zzesd>> {
    private final zzgln<zzesf> zza;
    private final zzgln<Clock> zzb;

    public zzeon(zzgln<zzesf> zzglnVar, zzgln<Clock> zzglnVar2) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzeoh(((zzesg) this.zza).zzb(), zzbkq.zza.zze().longValue(), this.zzb.zzb());
    }
}
