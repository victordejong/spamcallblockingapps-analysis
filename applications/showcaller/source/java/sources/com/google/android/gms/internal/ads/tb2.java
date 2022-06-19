package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.C5722o1;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/tb2.class */
public final class tb2 implements va2<JSONObject> {

    /* renamed from: a */
    private final String f29888a;

    public tb2(String str) {
        this.f29888a = str;
    }

    @Override // com.google.android.gms.internal.ads.va2
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo8928a(JSONObject jSONObject) {
        try {
            jSONObject.put("ms", this.f29888a);
        } catch (JSONException e) {
            C5722o1.m17989l("Failed putting Ad ID.", e);
        }
    }
}
