package com.google.android.gms.internal.ads;

import android.os.Bundle;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/f72.class */
public final class f72 implements va2<Bundle> {

    /* renamed from: a */
    private final JSONObject f22741a;

    /* renamed from: b */
    private final JSONObject f22742b;

    public f72(JSONObject jSONObject, JSONObject jSONObject2) {
        this.f22741a = jSONObject;
        this.f22742b = jSONObject2;
    }

    @Override // com.google.android.gms.internal.ads.va2
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo8928a(Bundle bundle) {
        Bundle bundle2 = bundle;
        JSONObject jSONObject = this.f22741a;
        if (jSONObject != null) {
            bundle2.putString("fwd_cld", jSONObject.toString());
        }
        JSONObject jSONObject2 = this.f22742b;
        if (jSONObject2 != null) {
            bundle2.putString("fwd_common_cld", jSONObject2.toString());
        }
    }
}
