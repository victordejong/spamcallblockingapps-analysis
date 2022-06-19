package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzr;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzauj.class */
public final class zzauj implements zzatu {
    private zzamb<JSONObject, JSONObject> zzdyy;
    private zzamb<JSONObject, JSONObject> zzdzd;

    public zzauj(Context context) {
        this.zzdzd = zzr.zzle().zza(context, zzazn.zzaab()).zza("google.afma.request.getAdDictionary", zzame.zzdks, zzame.zzdks);
        this.zzdyy = zzr.zzle().zza(context, zzazn.zzaab()).zza("google.afma.sdkConstants.getSdkConstants", zzame.zzdks, zzame.zzdks);
    }

    @Override // com.google.android.gms.internal.ads.zzatu
    public final zzamb<JSONObject, JSONObject> zzwk() {
        return this.zzdyy;
    }
}
