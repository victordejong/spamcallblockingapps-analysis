package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zze;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzewz.class */
public final class zzewz implements zzevn<zzevm<JSONObject>> {
    private final JSONObject zza;

    public zzewz(Context context) {
        this.zza = zzcea.zzc(context);
    }

    public final /* synthetic */ void zza(JSONObject jSONObject) {
        try {
            jSONObject.put("gms_sdk_env", this.zza);
        } catch (JSONException e) {
            zze.zza("Failed putting version constants.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzevn
    public final zzfxa<zzevm<JSONObject>> zzb() {
        return zzfwq.zzi(new zzevm() { // from class: com.google.android.gms.internal.ads.zzewy
            @Override // com.google.android.gms.internal.ads.zzevm
            public final void zza(Object obj) {
                zzewz.this.zza((JSONObject) obj);
            }
        });
    }
}
