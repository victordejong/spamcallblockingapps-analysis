package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ccb.class */
public final class ccb implements cae<JSONObject> {

    /* renamed from: a */
    private List<String> f12709a;

    public ccb(List<String> list) {
        this.f12709a = list;
    }

    @Override // com.google.android.gms.internal.ads.cae
    /* renamed from: a */
    public final /* synthetic */ void mo11481a(JSONObject jSONObject) {
        try {
            jSONObject.put("eid", TextUtils.join(",", this.f12709a));
        } catch (JSONException e) {
            C3556uu.m7052a("Failed putting experiment ids.");
        }
    }
}
