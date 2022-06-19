package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzemk.class */
public final class zzemk implements zzery<zzeml> {
    private final Clock zza;
    private final zzfar zzb;

    public zzemk(Clock clock, zzfar zzfarVar) {
        this.zza = clock;
        this.zzb = zzfarVar;
    }

    @Override // com.google.android.gms.internal.ads.zzery
    public final zzfsm<zzeml> zza() {
        return zzfsd.zza(new zzeml(this.zzb, this.zza.mo38787c()));
    }
}
