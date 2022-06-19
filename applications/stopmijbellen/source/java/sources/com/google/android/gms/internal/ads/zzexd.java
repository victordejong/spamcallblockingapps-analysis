package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzby;
import com.google.android.gms.ads.internal.util.zze;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzexd.class */
public final class zzexd implements zzevm<JSONObject> {
    private final String zza;
    private final String zzb;

    public zzexd(String str, String str2) {
        this.zza = str;
        this.zzb = str2;
    }

    @Override // com.google.android.gms.internal.ads.zzevm
    public final /* bridge */ /* synthetic */ void zza(JSONObject jSONObject) {
        try {
            JSONObject zzf = zzby.zzf(jSONObject, "pii");
            zzf.put("doritos", this.zza);
            zzf.put("doritos_v2", this.zzb);
        } catch (JSONException e) {
            zze.zza("Failed putting doritos string.");
        }
    }
}
