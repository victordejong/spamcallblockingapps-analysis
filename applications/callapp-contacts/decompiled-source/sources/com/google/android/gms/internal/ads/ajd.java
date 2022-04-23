package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ajd.class */
final class ajd implements aix {

    /* renamed from: a  reason: collision with root package name */
    private final wh f23413a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ajd(wh whVar) {
        this.f23413a = whVar;
    }

    @Override // com.google.android.gms.internal.ads.aix
    public final void a(JSONObject jSONObject) {
        this.f23413a.f28468a.a(jSONObject.optBoolean("npa_reset") ? -1 : jSONObject.optBoolean("npa") ? 1 : 0);
    }
}
