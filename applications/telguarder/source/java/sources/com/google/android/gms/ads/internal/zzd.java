package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.ads.zzdyu;
import com.google.android.gms.internal.ads.zzdzk;
import com.google.android.gms.internal.ads.zzdzw;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/zzd.class */
public final /* synthetic */ class zzd implements zzdyu {
    static final zzdyu zzboq = new zzd();

    private zzd() {
    }

    @Override // com.google.android.gms.internal.ads.zzdyu
    public final zzdzw zzf(Object obj) {
        JSONObject jSONObject = (JSONObject) obj;
        if (jSONObject.optBoolean("isSuccessful", false)) {
            zzr.zzkv().zzxs().zzee(jSONObject.getString("appSettingsJson"));
        }
        return zzdzk.zzag(null);
    }
}
