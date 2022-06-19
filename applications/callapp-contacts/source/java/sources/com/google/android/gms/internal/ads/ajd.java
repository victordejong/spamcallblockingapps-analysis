package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ajd.class */
final class ajd implements aix {

    /* renamed from: a */
    private final C13012wh f42199a;

    public ajd(C13012wh c13012wh) {
        this.f42199a = c13012wh;
    }

    @Override // com.google.android.gms.internal.ads.aix
    /* renamed from: a */
    public final void mo18643a(JSONObject jSONObject) {
        this.f42199a.f49964a.m14047a(jSONObject.optBoolean("npa_reset") ? -1 : jSONObject.optBoolean("npa") ? 1 : 0);
    }
}
