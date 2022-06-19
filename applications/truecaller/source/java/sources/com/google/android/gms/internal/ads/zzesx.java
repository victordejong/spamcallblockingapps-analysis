package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzbx;
import com.google.android.gms.ads.internal.util.zze;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzesx.class */
public final class zzesx implements zzerx<JSONObject> {
    private final JSONObject zza;

    public zzesx(JSONObject jSONObject) {
        this.zza = jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.zzerx
    public final /* bridge */ /* synthetic */ void zzf(JSONObject jSONObject) {
        try {
            JSONObject zzg = zzbx.zzg(jSONObject, "content_info");
            JSONObject jSONObject2 = this.zza;
            Iterator<String> keys = jSONObject2.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                zzg.put(next, jSONObject2.get(next));
            }
        } catch (JSONException e) {
            zze.zza("Failed putting app indexing json.");
        }
    }
}
