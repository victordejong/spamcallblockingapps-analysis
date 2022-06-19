package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5722o1;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/od2.class */
public final class od2 implements va2<JSONObject> {

    /* renamed from: a */
    private final Map<String, Object> f27505a;

    public od2(Map<String, Object> map) {
        this.f27505a = map;
    }

    @Override // com.google.android.gms.internal.ads.va2
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo8928a(JSONObject jSONObject) {
        try {
            jSONObject.put("video_decoders", C5667s.m18160d().m18091Q(this.f27505a));
        } catch (JSONException e) {
            String valueOf = String.valueOf(e.getMessage());
            C5722o1.m17990k(valueOf.length() != 0 ? "Could not encode video decoder properties: ".concat(valueOf) : new String("Could not encode video decoder properties: "));
        }
    }
}
