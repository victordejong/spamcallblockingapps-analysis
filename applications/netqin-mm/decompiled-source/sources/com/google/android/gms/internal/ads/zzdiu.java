package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.internal.zzp;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdiu.class */
public final class zzdiu implements zzdgu<JSONObject> {

    /* renamed from: a */
    public Bundle f27392a;

    public zzdiu(Bundle bundle) {
        this.f27392a = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzdgu
    /* renamed from: a */
    public final /* synthetic */ void mo13578a(JSONObject jSONObject) {
        JSONObject jSONObject2 = jSONObject;
        if (this.f27392a != null) {
            try {
                zzbao.m15955a(zzbao.m15955a(jSONObject2, "device"), "play_store").put("parental_controls", zzp.m17969c().m16134a(this.f27392a));
            } catch (JSONException e) {
                zzayp.m16153g("Failed putting parental controls bundle.");
            }
        }
    }
}
