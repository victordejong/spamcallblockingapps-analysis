package com.google.android.gms.ads.nonagon.signalgeneration;

import com.google.android.gms.internal.ads.zzfln;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/nonagon/signalgeneration/zzn.class */
public final /* synthetic */ class zzn implements zzfln {
    public static final zzfln zza = new zzn();

    private zzn() {
    }

    @Override // com.google.android.gms.internal.ads.zzfln
    public final Object apply(Object obj) {
        int i = zzv.zze;
        return ((JSONObject) obj).optString("nas");
    }
}
