package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzby;
import com.google.android.gms.ads.internal.util.zze;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzews.class */
public final class zzews implements zzevm<JSONObject> {
    private final String zza;

    public zzews(String str) {
        this.zza = str;
    }

    @Override // com.google.android.gms.internal.ads.zzevm
    public final /* bridge */ /* synthetic */ void zza(JSONObject jSONObject) {
        try {
            JSONObject zzf = zzby.zzf(jSONObject, "pii");
            if (TextUtils.isEmpty(this.zza)) {
                return;
            }
            zzf.put("attok", this.zza);
        } catch (JSONException e) {
            zze.zzb("Failed putting attestation token.", e);
        }
    }
}
