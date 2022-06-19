package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C2341q;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ccu.class */
public final class ccu implements cae<JSONObject> {

    /* renamed from: a */
    private final Map<String, Object> f12738a;

    public ccu(Map<String, Object> map) {
        this.f12738a = map;
    }

    @Override // com.google.android.gms.internal.ads.cae
    /* renamed from: a */
    public final /* synthetic */ void mo11481a(JSONObject jSONObject) {
        try {
            jSONObject.put("video_decoders", C2341q.m14744c().m6982a(this.f12738a));
        } catch (JSONException e) {
            String valueOf = String.valueOf(e.getMessage());
            C3556uu.m7052a(valueOf.length() != 0 ? "Could not encode video decoder properties: ".concat(valueOf) : new String("Could not encode video decoder properties: "));
        }
    }
}
