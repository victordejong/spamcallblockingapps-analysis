package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.ads.internal.util.zzd;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdfx.class */
public final class zzdfx implements zzdfj<JSONObject> {
    private final AdvertisingIdClient.Info zzhdw;
    private final String zzhdx;

    public zzdfx(AdvertisingIdClient.Info info, String str) {
        this.zzhdw = info;
        this.zzhdx = str;
    }

    @Override // com.google.android.gms.internal.ads.zzdfj
    public final /* synthetic */ void zzr(JSONObject jSONObject) {
        try {
            JSONObject zzb = zzbh.zzb(jSONObject, "pii");
            AdvertisingIdClient.Info info = this.zzhdw;
            if (info == null || TextUtils.isEmpty(info.getId())) {
                zzb.put("pdid", this.zzhdx);
                zzb.put("pdidtype", "ssaid");
                return;
            }
            zzb.put("rdid", this.zzhdw.getId());
            zzb.put("is_lat", this.zzhdw.isLimitAdTrackingEnabled());
            zzb.put("idtype", "adid");
        } catch (JSONException e) {
            zzd.zza("Failed putting Ad ID.", e);
        }
    }
}
