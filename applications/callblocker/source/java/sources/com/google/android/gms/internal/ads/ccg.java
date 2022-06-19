package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.internal.C2341q;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ccg.class */
public final class ccg implements cae<JSONObject> {

    /* renamed from: a */
    private Bundle f12717a;

    public ccg(Bundle bundle) {
        this.f12717a = bundle;
    }

    @Override // com.google.android.gms.internal.ads.cae
    /* renamed from: a */
    public final /* synthetic */ void mo11481a(JSONObject jSONObject) {
        JSONObject jSONObject2 = jSONObject;
        if (this.f12717a != null) {
            try {
                C3614wy.m6852a(C3614wy.m6852a(jSONObject2, "device"), "play_store").put("parental_controls", C2341q.m14744c().m6998a(this.f12717a));
            } catch (JSONException e) {
                C3556uu.m7052a("Failed putting parental controls bundle.");
            }
        }
    }
}
