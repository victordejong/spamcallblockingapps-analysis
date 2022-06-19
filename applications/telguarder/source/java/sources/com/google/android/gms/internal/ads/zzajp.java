package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.initialization.AdapterStatus;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzajp.class */
public final class zzajp implements AdapterStatus {
    private final String description;
    private final int zzdiv;
    private final AdapterStatus.State zzdix;

    public zzajp(AdapterStatus.State state, String str, int i) {
        this.zzdix = state;
        this.description = str;
        this.zzdiv = i;
    }

    @Override // com.google.android.gms.ads.initialization.AdapterStatus
    public final String getDescription() {
        return this.description;
    }

    @Override // com.google.android.gms.ads.initialization.AdapterStatus
    public final AdapterStatus.State getInitializationState() {
        return this.zzdix;
    }

    @Override // com.google.android.gms.ads.initialization.AdapterStatus
    public final int getLatency() {
        return this.zzdiv;
    }
}
