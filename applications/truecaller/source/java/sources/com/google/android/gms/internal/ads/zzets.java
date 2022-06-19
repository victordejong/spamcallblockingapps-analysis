package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zze;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzets.class */
public final class zzets implements zzerx<JSONObject> {
    private final List<String> zza;

    public zzets(List<String> list) {
        this.zza = list;
    }

    @Override // com.google.android.gms.internal.ads.zzerx
    public final /* bridge */ /* synthetic */ void zzf(JSONObject jSONObject) {
        try {
            jSONObject.put("eid", TextUtils.join(",", this.zza));
        } catch (JSONException e) {
            zze.zza("Failed putting experiment ids.");
        }
    }
}
