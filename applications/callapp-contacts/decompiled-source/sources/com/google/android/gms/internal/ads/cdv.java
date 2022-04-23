package com.google.android.gms.internal.ads;

import android.os.Bundle;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cdv.class */
public final class cdv implements cgy<Bundle> {

    /* renamed from: a  reason: collision with root package name */
    private final JSONObject f25656a;

    /* renamed from: b  reason: collision with root package name */
    private final JSONObject f25657b;

    public cdv(JSONObject jSONObject, JSONObject jSONObject2) {
        this.f25656a = jSONObject;
        this.f25657b = jSONObject2;
    }

    @Override // com.google.android.gms.internal.ads.cgy
    public final /* synthetic */ void a(Bundle bundle) {
        Bundle bundle2 = bundle;
        JSONObject jSONObject = this.f25656a;
        if (jSONObject != null) {
            bundle2.putString("fwd_cld", jSONObject.toString());
        }
        JSONObject jSONObject2 = this.f25657b;
        if (jSONObject2 != null) {
            bundle2.putString("fwd_common_cld", jSONObject2.toString());
        }
    }
}
