package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.initialization.AdapterStatus;
import com.google.android.gms.ads.initialization.InitializationStatus;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbtw.class */
public final class zzbtw implements InitializationStatus {
    private final Map<String, AdapterStatus> zza;

    public zzbtw(Map<String, AdapterStatus> map) {
        this.zza = map;
    }

    @Override // com.google.android.gms.ads.initialization.InitializationStatus
    public final Map<String, AdapterStatus> getAdapterStatusMap() {
        return this.zza;
    }
}
