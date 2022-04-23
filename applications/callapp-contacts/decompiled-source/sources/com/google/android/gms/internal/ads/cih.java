package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cih.class */
public final class cih implements cgy<JSONObject> {

    /* renamed from: a  reason: collision with root package name */
    private JSONObject f25886a;

    public cih(JSONObject jSONObject) {
        this.f25886a = jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.cgy
    public final /* synthetic */ void a(JSONObject jSONObject) {
        try {
            jSONObject.put("cache_state", this.f25886a);
        } catch (JSONException e) {
            zzd.zzed("Unable to get cache_state");
        }
    }
}
