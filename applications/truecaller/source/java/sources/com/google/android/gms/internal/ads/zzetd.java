package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzbx;
import com.google.android.gms.ads.internal.util.zze;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzetd.class */
public final class zzetd implements zzerx<JSONObject> {
    private final String zza;

    public zzetd(String str) {
        this.zza = str;
    }

    @Override // com.google.android.gms.internal.ads.zzerx
    public final /* bridge */ /* synthetic */ void zzf(JSONObject jSONObject) {
        try {
            JSONObject zzg = zzbx.zzg(jSONObject, "pii");
            if (TextUtils.isEmpty(this.zza)) {
                return;
            }
            zzg.put("attok", this.zza);
        } catch (JSONException e) {
            zze.zzb("Failed putting attestation token.", e);
        }
    }
}
