package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aip.class */
public final class aip implements aii {

    /* renamed from: a */
    private final AbstractC3558uw f9746a;

    public aip(AbstractC3558uw abstractC3558uw) {
        this.f9746a = abstractC3558uw;
    }

    @Override // com.google.android.gms.internal.ads.aii
    /* renamed from: a */
    public final void mo13094a(Map<String, String> map) {
        String str = map.get("key");
        String str2 = map.get("value");
        if ("auto_collect_location".equals(str)) {
            this.f9746a.mo7025c(Boolean.parseBoolean(str2));
        }
    }
}
