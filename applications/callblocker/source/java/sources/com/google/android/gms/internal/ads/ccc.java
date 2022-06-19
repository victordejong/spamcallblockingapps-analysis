package com.google.android.gms.internal.ads;

import android.location.Location;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ccc.class */
public final class ccc implements cae<JSONObject> {

    /* renamed from: a */
    private final Location f12710a;

    public ccc(Location location) {
        this.f12710a = location;
    }

    @Override // com.google.android.gms.internal.ads.cae
    /* renamed from: a */
    public final /* synthetic */ void mo11481a(JSONObject jSONObject) {
        JSONObject jSONObject2 = jSONObject;
        try {
            if (this.f12710a == null) {
                return;
            }
            JSONObject jSONObject3 = new JSONObject();
            float accuracy = this.f12710a.getAccuracy();
            long time = this.f12710a.getTime();
            long latitude = (long) (this.f12710a.getLatitude() * 1.0E7d);
            jSONObject3.put("radius", Float.valueOf(accuracy * 1000.0f));
            jSONObject3.put("lat", Long.valueOf(latitude));
            jSONObject3.put("long", Long.valueOf((long) (this.f12710a.getLongitude() * 1.0E7d)));
            jSONObject3.put("time", Long.valueOf(time * 1000));
            jSONObject2.put("uule", jSONObject3);
        } catch (JSONException e) {
            C3556uu.m7051a("Failed adding location to the request JSON.", e);
        }
    }
}
