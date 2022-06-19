package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.ads.internal.util.zzd;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdgl.class */
public final class zzdgl implements zzdfj<JSONObject> {
    private String zzheg;

    public zzdgl(String str) {
        this.zzheg = str;
    }

    @Override // com.google.android.gms.internal.ads.zzdfj
    public final /* synthetic */ void zzr(JSONObject jSONObject) {
        try {
            JSONObject zzb = zzbh.zzb(jSONObject, "pii");
            if (TextUtils.isEmpty(this.zzheg)) {
                return;
            }
            zzb.put("attok", this.zzheg);
        } catch (JSONException e) {
            zzd.zza("Failed putting attestation token.", e);
        }
    }
}
