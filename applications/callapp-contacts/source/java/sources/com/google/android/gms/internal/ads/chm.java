package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.ads.internal.util.zzd;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/chm.class */
public final class chm implements cgy<JSONObject> {

    /* renamed from: a */
    private final AdvertisingIdClient.Info f45801a;

    /* renamed from: b */
    private final String f45802b;

    public chm(AdvertisingIdClient.Info info, String str) {
        this.f45801a = info;
        this.f45802b = str;
    }

    @Override // com.google.android.gms.internal.ads.cgy
    /* renamed from: a */
    public final /* synthetic */ void mo17450a(JSONObject jSONObject) {
        try {
            JSONObject zzb = zzbh.zzb(jSONObject, "pii");
            AdvertisingIdClient.Info info = this.f45801a;
            if (info == null || TextUtils.isEmpty(info.getId())) {
                zzb.put("pdid", this.f45802b);
                zzb.put("pdidtype", "ssaid");
                return;
            }
            zzb.put("rdid", this.f45801a.getId());
            zzb.put("is_lat", this.f45801a.isLimitAdTrackingEnabled());
            zzb.put("idtype", "adid");
        } catch (JSONException e) {
            zzd.zza("Failed putting Ad ID.", e);
        }
    }
}
