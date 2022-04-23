package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cjh.class */
public final class cjh implements cgy<JSONObject> {

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, Object> f25936a;

    public cjh(Map<String, Object> map) {
        this.f25936a = map;
    }

    @Override // com.google.android.gms.internal.ads.cgy
    public final /* synthetic */ void a(JSONObject jSONObject) {
        try {
            jSONObject.put("video_decoders", zzr.zzkv().zzj(this.f25936a));
        } catch (JSONException e) {
            String valueOf = String.valueOf(e.getMessage());
            zzd.zzed(valueOf.length() != 0 ? "Could not encode video decoder properties: ".concat(valueOf) : new String("Could not encode video decoder properties: "));
        }
    }
}
