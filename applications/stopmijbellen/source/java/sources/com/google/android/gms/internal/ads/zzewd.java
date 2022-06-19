package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.ads.internal.util.zzby;
import com.google.android.gms.ads.internal.util.zze;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzewd.class */
public final class zzewd implements zzevm<JSONObject> {
    private final AdvertisingIdClient.Info zza;
    private final String zzb;

    public zzewd(AdvertisingIdClient.Info info, String str) {
        this.zza = info;
        this.zzb = str;
    }

    @Override // com.google.android.gms.internal.ads.zzevm
    public final /* bridge */ /* synthetic */ void zza(JSONObject jSONObject) {
        try {
            JSONObject zzf = zzby.zzf(jSONObject, "pii");
            AdvertisingIdClient.Info info = this.zza;
            if (info == null || TextUtils.isEmpty(info.getId())) {
                zzf.put("pdid", this.zzb);
                zzf.put("pdidtype", "ssaid");
                return;
            }
            zzf.put("rdid", this.zza.getId());
            zzf.put("is_lat", this.zza.isLimitAdTrackingEnabled());
            zzf.put("idtype", "adid");
        } catch (JSONException e) {
            zze.zzb("Failed putting Ad ID.", e);
        }
    }
}
