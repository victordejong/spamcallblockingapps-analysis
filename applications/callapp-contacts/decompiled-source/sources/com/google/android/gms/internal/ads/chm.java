package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.ads.internal.util.zzd;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/chm.class */
public final class chm implements cgy<JSONObject> {

    /* renamed from: a  reason: collision with root package name */
    private final AdvertisingIdClient.Info f25843a;

    /* renamed from: b  reason: collision with root package name */
    private final String f25844b;

    public chm(AdvertisingIdClient.Info info, String str) {
        this.f25843a = info;
        this.f25844b = str;
    }

    @Override // com.google.android.gms.internal.ads.cgy
    public final /* synthetic */ void a(JSONObject jSONObject) {
        try {
            JSONObject zzb = zzbh.zzb(jSONObject, "pii");
            AdvertisingIdClient.Info info = this.f25843a;
            if (info == null || TextUtils.isEmpty(info.getId())) {
                zzb.put("pdid", this.f25844b);
                zzb.put("pdidtype", "ssaid");
                return;
            }
            zzb.put("rdid", this.f25843a.getId());
            zzb.put("is_lat", this.f25843a.isLimitAdTrackingEnabled());
            zzb.put("idtype", "adid");
        } catch (JSONException e) {
            zzd.zza("Failed putting Ad ID.", e);
        }
    }
}
