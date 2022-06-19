package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzby;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzexx.class */
public final class zzexx implements zzevm<JSONObject> {
    private final String zza;

    public zzexx(String str) {
        this.zza = str;
    }

    @Override // com.google.android.gms.internal.ads.zzevm
    public final /* bridge */ /* synthetic */ void zza(JSONObject jSONObject) {
        JSONObject jSONObject2 = jSONObject;
        try {
            if (TextUtils.isEmpty(this.zza)) {
                return;
            }
            zzby.zzf(jSONObject2, "pii").put("adsid", this.zza);
        } catch (JSONException e) {
            zzciz.zzk("Failed putting trustless token.", e);
        }
    }
}
