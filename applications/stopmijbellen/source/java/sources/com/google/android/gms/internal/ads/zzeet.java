package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zze;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeet.class */
public final /* synthetic */ class zzeet implements zzfhh {
    public static final /* synthetic */ zzeet zza = new zzeet();

    private /* synthetic */ zzeet() {
    }

    @Override // com.google.android.gms.internal.ads.zzfhh
    public final Object zza(Object obj) {
        JSONObject jSONObject = (JSONObject) obj;
        zze.zza("Ad request signals:");
        zze.zza(jSONObject.toString(2));
        return jSONObject;
    }
}
