package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzbx;
import com.google.android.gms.ads.internal.util.zze;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeto.class */
public final class zzeto implements zzerx<JSONObject> {
    private final String zza;
    private final String zzb;

    public zzeto(String str, String str2) {
        this.zza = str;
        this.zzb = str2;
    }

    @Override // com.google.android.gms.internal.ads.zzerx
    public final /* bridge */ /* synthetic */ void zzf(JSONObject jSONObject) {
        try {
            JSONObject zzg = zzbx.zzg(jSONObject, "pii");
            zzg.put("doritos", this.zza);
            zzg.put("doritos_v2", this.zzb);
        } catch (JSONException e) {
            zze.zza("Failed putting doritos string.");
        }
    }
}
