package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.initialization.InitializationStatus;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbhn.class */
public final /* synthetic */ class zzbhn implements InitializationStatus {
    private final zzbhs zza;

    public zzbhn(zzbhs zzbhsVar) {
        this.zza = zzbhsVar;
    }

    @Override // com.google.android.gms.ads.initialization.InitializationStatus
    public final Map getAdapterStatusMap() {
        zzbhs zzbhsVar = this.zza;
        HashMap hashMap = new HashMap();
        hashMap.put("com.google.android.gms.ads.MobileAds", new zzbho(zzbhsVar));
        return hashMap;
    }
}
