package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cjh.class */
public final class cjh implements cgy<JSONObject> {

    /* renamed from: a */
    private final Map<String, Object> f45903a;

    public cjh(Map<String, Object> map) {
        this.f45903a = map;
    }

    @Override // com.google.android.gms.internal.ads.cgy
    /* renamed from: a */
    public final /* synthetic */ void mo17450a(JSONObject jSONObject) {
        try {
            jSONObject.put("video_decoders", zzr.zzkv().zzj(this.f45903a));
        } catch (JSONException e) {
            String valueOf = String.valueOf(e.getMessage());
            zzd.zzed(valueOf.length() != 0 ? "Could not encode video decoder properties: ".concat(valueOf) : new String("Could not encode video decoder properties: "));
        }
    }
}
