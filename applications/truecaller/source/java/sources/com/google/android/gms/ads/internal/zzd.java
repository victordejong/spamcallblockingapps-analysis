package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.ads.zzfrk;
import com.google.android.gms.internal.ads.zzfsd;
import com.google.android.gms.internal.ads.zzfsm;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/internal/zzd.class */
public final /* synthetic */ class zzd implements zzfrk {
    public static final zzfrk zza = new zzd();

    private zzd() {
    }

    @Override // com.google.android.gms.internal.ads.zzfrk
    public final zzfsm zza(Object obj) {
        JSONObject jSONObject = (JSONObject) obj;
        if (jSONObject.optBoolean("isSuccessful", false)) {
            zzt.zzg().zzp().zzm(jSONObject.getString("appSettingsJson"));
        }
        return zzfsd.zza(null);
    }
}
