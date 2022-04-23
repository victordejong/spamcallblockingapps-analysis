package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.initialization.AdapterStatus;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/iu.class */
public final class iu implements AdapterStatus {

    /* renamed from: a  reason: collision with root package name */
    private final AdapterStatus.State f28067a;

    /* renamed from: b  reason: collision with root package name */
    private final String f28068b;

    /* renamed from: c  reason: collision with root package name */
    private final int f28069c;

    public iu(AdapterStatus.State state, String str, int i) {
        this.f28067a = state;
        this.f28068b = str;
        this.f28069c = i;
    }

    @Override // com.google.android.gms.ads.initialization.AdapterStatus
    public final String getDescription() {
        return this.f28068b;
    }

    @Override // com.google.android.gms.ads.initialization.AdapterStatus
    public final AdapterStatus.State getInitializationState() {
        return this.f28067a;
    }

    @Override // com.google.android.gms.ads.initialization.AdapterStatus
    public final int getLatency() {
        return this.f28069c;
    }
}
