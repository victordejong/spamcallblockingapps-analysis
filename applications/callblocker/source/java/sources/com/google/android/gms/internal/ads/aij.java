package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aij.class */
public final class aij implements aii {

    /* renamed from: a */
    private AbstractC3558uw f9727a;

    public aij(AbstractC3558uw abstractC3558uw) {
        this.f9727a = abstractC3558uw;
    }

    @Override // com.google.android.gms.internal.ads.aii
    /* renamed from: a */
    public final void mo13094a(Map<String, String> map) {
        this.f9727a.mo7028b(Boolean.parseBoolean(map.get("content_vertical_opted_out")));
    }
}
