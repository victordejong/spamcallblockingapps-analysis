package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.initialization.AdapterStatus;
/* renamed from: com.google.android.gms.internal.ads.iu */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/iu.class */
public final class C12646iu implements AdapterStatus {

    /* renamed from: a */
    private final AdapterStatus.State f49376a;

    /* renamed from: b */
    private final String f49377b;

    /* renamed from: c */
    private final int f49378c;

    public C12646iu(AdapterStatus.State state, String str, int i) {
        this.f49376a = state;
        this.f49377b = str;
        this.f49378c = i;
    }

    @Override // com.google.android.gms.ads.initialization.AdapterStatus
    public final String getDescription() {
        return this.f49377b;
    }

    @Override // com.google.android.gms.ads.initialization.AdapterStatus
    public final AdapterStatus.State getInitializationState() {
        return this.f49376a;
    }

    @Override // com.google.android.gms.ads.initialization.AdapterStatus
    public final int getLatency() {
        return this.f49378c;
    }
}
