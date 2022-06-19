package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.C5722o1;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/sc2.class */
public final class sc2 implements va2<JSONObject> {

    /* renamed from: a */
    private final List<String> f29449a;

    public sc2(List<String> list) {
        this.f29449a = list;
    }

    @Override // com.google.android.gms.internal.ads.va2
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo8928a(JSONObject jSONObject) {
        try {
            jSONObject.put("eid", TextUtils.join(",", this.f29449a));
        } catch (JSONException e) {
            C5722o1.m17990k("Failed putting experiment ids.");
        }
    }
}
