package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzd;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdha.class */
public final class zzdha implements zzdfj<JSONObject> {
    private List<String> zzduo;

    public zzdha(List<String> list) {
        this.zzduo = list;
    }

    @Override // com.google.android.gms.internal.ads.zzdfj
    public final /* synthetic */ void zzr(JSONObject jSONObject) {
        try {
            jSONObject.put("eid", TextUtils.join(",", this.zzduo));
        } catch (JSONException e) {
            zzd.zzeb("Failed putting experiment ids.");
        }
    }
}
