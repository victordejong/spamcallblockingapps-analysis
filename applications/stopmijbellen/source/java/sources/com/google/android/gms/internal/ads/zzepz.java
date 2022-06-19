package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzepz.class */
public final class zzepz implements zzevn<zzeqa> {
    private final Clock zza;
    private final zzfef zzb;

    public zzepz(Clock clock, zzfef zzfefVar) {
        this.zza = clock;
        this.zzb = zzfefVar;
    }

    @Override // com.google.android.gms.internal.ads.zzevn
    public final zzfxa<zzeqa> zzb() {
        return zzfwq.zzi(new zzeqa(this.zzb, this.zza.currentTimeMillis()));
    }
}
