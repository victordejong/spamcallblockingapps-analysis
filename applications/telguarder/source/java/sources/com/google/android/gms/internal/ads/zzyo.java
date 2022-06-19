package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.MuteThisAdListener;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzyo.class */
public final class zzyo extends zzym {
    private final MuteThisAdListener zzcjw;

    public zzyo(MuteThisAdListener muteThisAdListener) {
        this.zzcjw = muteThisAdListener;
    }

    @Override // com.google.android.gms.internal.ads.zzyj
    public final void onAdMuted() {
        this.zzcjw.onAdMuted();
    }
}
