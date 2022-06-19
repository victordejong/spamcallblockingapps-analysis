package com.google.android.gms.internal.ads;

import android.os.Bundle;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cdv.class */
public final class cdv implements cgy<Bundle> {

    /* renamed from: a */
    private final JSONObject f45591a;

    /* renamed from: b */
    private final JSONObject f45592b;

    public cdv(JSONObject jSONObject, JSONObject jSONObject2) {
        this.f45591a = jSONObject;
        this.f45592b = jSONObject2;
    }

    @Override // com.google.android.gms.internal.ads.cgy
    /* renamed from: a */
    public final /* synthetic */ void mo17450a(Bundle bundle) {
        Bundle bundle2 = bundle;
        JSONObject jSONObject = this.f45591a;
        if (jSONObject != null) {
            bundle2.putString("fwd_cld", jSONObject.toString());
        }
        JSONObject jSONObject2 = this.f45592b;
        if (jSONObject2 != null) {
            bundle2.putString("fwd_common_cld", jSONObject2.toString());
        }
    }
}
