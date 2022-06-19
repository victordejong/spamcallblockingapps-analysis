package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.ads.internal.util.zzd;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdgw.class */
public final class zzdgw implements zzdfj<JSONObject> {
    private String zzhen;
    private String zzheo;

    public zzdgw(String str, String str2) {
        this.zzhen = str;
        this.zzheo = str2;
    }

    @Override // com.google.android.gms.internal.ads.zzdfj
    public final /* synthetic */ void zzr(JSONObject jSONObject) {
        try {
            JSONObject zzb = zzbh.zzb(jSONObject, "pii");
            zzb.put("doritos", this.zzhen);
            zzb.put("doritos_v2", this.zzheo);
        } catch (JSONException e) {
            zzd.zzeb("Failed putting doritos string.");
        }
    }
}
