package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zze;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzebf.class */
public final /* synthetic */ class zzebf implements zzfdw {
    public static final zzfdw zza = new zzebf();

    private zzebf() {
    }

    @Override // com.google.android.gms.internal.ads.zzfdw
    public final Object zza(Object obj) {
        JSONObject jSONObject = (JSONObject) obj;
        zze.zza("Ad request signals:");
        zze.zza(jSONObject.toString(2));
        return jSONObject;
    }
}
