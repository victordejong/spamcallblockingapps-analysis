package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5722o1;
import com.google.android.gms.ads.internal.util.C5748x0;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/vc2.class */
public final class vc2 implements va2<JSONObject> {

    /* renamed from: a */
    private final Bundle f31135a;

    public vc2(Bundle bundle) {
        this.f31135a = bundle;
    }

    @Override // com.google.android.gms.internal.ads.va2
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo8928a(JSONObject jSONObject) {
        JSONObject jSONObject2 = jSONObject;
        if (this.f31135a != null) {
            try {
                C5748x0.m17918g(C5748x0.m17918g(jSONObject2, "device"), "play_store").put("parental_controls", C5667s.m18160d().m18089S(this.f31135a));
            } catch (JSONException e) {
                C5722o1.m17990k("Failed putting parental controls bundle.");
            }
        }
    }
}
