package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.MuteThisAdListener;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbig.class */
public final class zzbig extends zzbie {
    private final MuteThisAdListener zza;

    public zzbig(MuteThisAdListener muteThisAdListener) {
        this.zza = muteThisAdListener;
    }

    @Override // com.google.android.gms.internal.ads.zzbif
    public final void zze() {
        this.zza.onAdMuted();
    }
}
