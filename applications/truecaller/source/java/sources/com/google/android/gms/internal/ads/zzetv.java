package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zzbx;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzt;
import com.razorpay.AnalyticsConstants;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzetv.class */
public final class zzetv implements zzerx<JSONObject> {
    private final Bundle zza;

    public zzetv(Bundle bundle) {
        this.zza = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzerx
    public final /* bridge */ /* synthetic */ void zzf(JSONObject jSONObject) {
        JSONObject jSONObject2 = jSONObject;
        if (this.zza != null) {
            try {
                zzbx.zzg(zzbx.zzg(jSONObject2, AnalyticsConstants.DEVICE), "play_store").put("parental_controls", zzt.zzc().zzl(this.zza));
            } catch (JSONException e) {
                zze.zza("Failed putting parental controls bundle.");
            }
        }
    }
}
