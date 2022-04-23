package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzd;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ciu.class */
public final class ciu implements cgy<JSONObject> {

    /* renamed from: a  reason: collision with root package name */
    private List<String> f25914a;

    public ciu(List<String> list) {
        this.f25914a = list;
    }

    @Override // com.google.android.gms.internal.ads.cgy
    public final /* synthetic */ void a(JSONObject jSONObject) {
        try {
            jSONObject.put("eid", TextUtils.join(",", this.f25914a));
        } catch (JSONException e) {
            zzd.zzed("Failed putting experiment ids.");
        }
    }
}
