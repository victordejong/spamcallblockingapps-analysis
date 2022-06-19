package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aih.class */
public final class aih implements aii {

    /* renamed from: a */
    private AbstractC3558uw f9726a;

    public aih(AbstractC3558uw abstractC3558uw) {
        this.f9726a = abstractC3558uw;
    }

    @Override // com.google.android.gms.internal.ads.aii
    /* renamed from: a */
    public final void mo13094a(Map<String, String> map) {
        this.f9726a.mo7033a(Boolean.parseBoolean(map.get("content_url_opted_out")));
    }
}
