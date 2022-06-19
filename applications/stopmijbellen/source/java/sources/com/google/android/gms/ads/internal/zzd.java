package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.ads.zzfvx;
import com.google.android.gms.internal.ads.zzfwq;
import com.google.android.gms.internal.ads.zzfxa;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/zzd.class */
public final /* synthetic */ class zzd implements zzfvx {
    public static final /* synthetic */ zzd zza = new zzd();

    private /* synthetic */ zzd() {
    }

    @Override // com.google.android.gms.internal.ads.zzfvx
    public final zzfxa zza(Object obj) {
        JSONObject jSONObject = (JSONObject) obj;
        if (jSONObject.optBoolean("isSuccessful", false)) {
            zzt.zzo().zzh().zzs(jSONObject.getString("appSettingsJson"));
        }
        return zzfwq.zzi(null);
    }
}
