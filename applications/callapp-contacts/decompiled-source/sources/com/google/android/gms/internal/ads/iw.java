package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.initialization.AdapterStatus;
import com.google.android.gms.ads.initialization.InitializationStatus;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/iw.class */
public final class iw implements InitializationStatus {

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, AdapterStatus> f28070a;

    public iw(Map<String, AdapterStatus> map) {
        this.f28070a = map;
    }

    @Override // com.google.android.gms.ads.initialization.InitializationStatus
    public final Map<String, AdapterStatus> getAdapterStatusMap() {
        return this.f28070a;
    }
}
