package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.initialization.InitializationStatus;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbjj.class */
public final /* synthetic */ class zzbjj implements InitializationStatus {
    public final /* synthetic */ zzbjq zza;

    public /* synthetic */ zzbjj(zzbjq zzbjqVar) {
        this.zza = zzbjqVar;
    }

    @Override // com.google.android.gms.ads.initialization.InitializationStatus
    public final Map getAdapterStatusMap() {
        zzbjq zzbjqVar = this.zza;
        HashMap hashMap = new HashMap();
        hashMap.put("com.google.android.gms.ads.MobileAds", new zzbjl(zzbjqVar));
        return hashMap;
    }
}
