package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zze;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzexh.class */
public final class zzexh implements zzevm<JSONObject> {
    private final List<String> zza;

    public zzexh(List<String> list) {
        this.zza = list;
    }

    @Override // com.google.android.gms.internal.ads.zzevm
    public final /* bridge */ /* synthetic */ void zza(JSONObject jSONObject) {
        try {
            jSONObject.put("eid", TextUtils.join(",", this.zza));
        } catch (JSONException e) {
            zze.zza("Failed putting experiment ids.");
        }
    }
}
