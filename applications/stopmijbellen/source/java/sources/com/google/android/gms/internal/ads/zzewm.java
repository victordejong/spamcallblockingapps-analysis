package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzby;
import com.google.android.gms.ads.internal.util.zze;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzewm.class */
public final class zzewm implements zzevm<JSONObject> {
    private final JSONObject zza;

    public zzewm(JSONObject jSONObject) {
        this.zza = jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.zzevm
    public final /* bridge */ /* synthetic */ void zza(JSONObject jSONObject) {
        try {
            JSONObject zzf = zzby.zzf(jSONObject, "content_info");
            JSONObject jSONObject2 = this.zza;
            Iterator<String> keys = jSONObject2.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                zzf.put(next, jSONObject2.get(next));
            }
        } catch (JSONException e) {
            zze.zza("Failed putting app indexing json.");
        }
    }
}
