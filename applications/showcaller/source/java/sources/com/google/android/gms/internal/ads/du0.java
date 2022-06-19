package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/du0.class */
final class du0 implements qt0 {

    /* renamed from: a */
    private final nf0 f21863a;

    public du0(nf0 nf0Var) {
        this.f21863a = nf0Var;
    }

    @Override // com.google.android.gms.internal.ads.qt0
    /* renamed from: s */
    public final void mo11799s(JSONObject jSONObject) {
        this.f21863a.m12936d(jSONObject.optBoolean("npa_reset") ? true : jSONObject.optBoolean("npa") ? 1 : 0, jSONObject.optLong("timestamp"));
    }
}
