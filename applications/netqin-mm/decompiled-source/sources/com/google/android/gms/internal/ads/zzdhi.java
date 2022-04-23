package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdhi.class */
public final class zzdhi implements zzdgu<JSONObject> {

    /* renamed from: a */
    public final AdvertisingIdClient.Info f27329a;

    /* renamed from: b */
    public final String f27330b;

    public zzdhi(AdvertisingIdClient.Info info, String str) {
        this.f27329a = info;
        this.f27330b = str;
    }

    @Override // com.google.android.gms.internal.ads.zzdgu
    /* renamed from: a */
    public final /* synthetic */ void mo13578a(JSONObject jSONObject) {
        try {
            JSONObject a = zzbao.m15955a(jSONObject, "pii");
            if (this.f27329a == null || TextUtils.isEmpty(this.f27329a.getId())) {
                a.put("pdid", this.f27330b);
                a.put("pdidtype", "ssaid");
                return;
            }
            a.put("rdid", this.f27329a.getId());
            a.put("is_lat", this.f27329a.isLimitAdTrackingEnabled());
            a.put("idtype", "adid");
        } catch (JSONException e) {
            zzayp.m16154e("Failed putting Ad ID.", e);
        }
    }
}
