package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.ads.daq;
import com.google.android.gms.internal.ads.dbh;
import com.google.android.gms.internal.ads.dbt;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/zzd.class */
public final /* synthetic */ class zzd implements daq {
    static final daq zzbpa = new zzd();

    private zzd() {
    }

    @Override // com.google.android.gms.internal.ads.daq
    public final dbt zzf(Object obj) {
        JSONObject jSONObject = (JSONObject) obj;
        if (jSONObject.optBoolean("isSuccessful", false)) {
            zzr.zzkz().d().zzeg(jSONObject.getString("appSettingsJson"));
        }
        return dbh.a((Object) null);
    }
}
