package com.google.android.gms.ads.nonagon.signalgeneration;

import com.google.android.gms.internal.ads.zzfpv;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/nonagon/signalgeneration/zzk.class */
public final /* synthetic */ class zzk implements zzfpv {
    public static final /* synthetic */ zzk zza = new zzk();

    private /* synthetic */ zzk() {
    }

    @Override // com.google.android.gms.internal.ads.zzfpv
    public final Object apply(Object obj) {
        int i = zzv.zze;
        return ((JSONObject) obj).optString("nas");
    }
}
