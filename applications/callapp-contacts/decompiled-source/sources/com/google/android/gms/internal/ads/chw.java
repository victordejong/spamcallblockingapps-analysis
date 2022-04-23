package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.ads.internal.util.zzd;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/chw.class */
public final class chw implements cgy<JSONObject> {

    /* renamed from: a  reason: collision with root package name */
    private final JSONObject f25863a;

    public chw(JSONObject jSONObject) {
        this.f25863a = jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.cgy
    public final /* synthetic */ void a(JSONObject jSONObject) {
        try {
            JSONObject zzb = zzbh.zzb(jSONObject, "content_info");
            JSONObject jSONObject2 = this.f25863a;
            Iterator<String> keys = jSONObject2.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                zzb.put(next, jSONObject2.get(next));
            }
        } catch (JSONException e) {
            zzd.zzed("Failed putting app indexing json.");
        }
    }
}
