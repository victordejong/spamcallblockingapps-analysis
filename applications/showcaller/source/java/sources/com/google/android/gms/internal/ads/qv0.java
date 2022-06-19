package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/qv0.class */
public final class qv0 implements cj3<JSONObject> {

    /* renamed from: a */
    private final pj3<ej2> f28637a;

    public qv0(pj3<ej2> pj3Var) {
        this.f28637a = pj3Var;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        JSONObject jSONObject;
        try {
            jSONObject = new JSONObject(((nz0) this.f28637a).m12777a().f22254z);
        } catch (JSONException e) {
            jSONObject = null;
        }
        return jSONObject;
    }
}
