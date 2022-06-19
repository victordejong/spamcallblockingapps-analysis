package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.initialization.AdapterStatus;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzzr.class */
public final class zzzr implements AdapterStatus {
    public zzzr(zzzn zzznVar) {
    }

    @Override // com.google.android.gms.ads.initialization.AdapterStatus
    public final String getDescription() {
        return "Google Mobile Ads SDK initialization functionality unavailable for this session. Ad requests can be made at any time.";
    }

    @Override // com.google.android.gms.ads.initialization.AdapterStatus
    public final AdapterStatus.State getInitializationState() {
        return AdapterStatus.State.READY;
    }

    @Override // com.google.android.gms.ads.initialization.AdapterStatus
    public final int getLatency() {
        return 0;
    }
}
