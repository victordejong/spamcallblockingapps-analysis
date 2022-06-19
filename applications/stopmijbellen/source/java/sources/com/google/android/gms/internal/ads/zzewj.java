package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zze;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzewj.class */
public final class zzewj implements zzevm<JSONObject> {
    private final String zza;

    public zzewj(String str) {
        this.zza = str;
    }

    @Override // com.google.android.gms.internal.ads.zzevm
    public final /* bridge */ /* synthetic */ void zza(JSONObject jSONObject) {
        try {
            jSONObject.put("ms", this.zza);
        } catch (JSONException e) {
            zze.zzb("Failed putting Ad ID.", e);
        }
    }
}
