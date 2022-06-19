package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.initialization.AdapterStatus;
import com.google.android.gms.ads.initialization.InitializationStatus;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.iw */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/iw.class */
public final class C12648iw implements InitializationStatus {

    /* renamed from: a */
    private final Map<String, AdapterStatus> f49379a;

    public C12648iw(Map<String, AdapterStatus> map) {
        this.f49379a = map;
    }

    @Override // com.google.android.gms.ads.initialization.InitializationStatus
    public final Map<String, AdapterStatus> getAdapterStatusMap() {
        return this.f49379a;
    }
}
