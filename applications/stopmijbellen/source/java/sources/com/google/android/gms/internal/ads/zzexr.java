package com.google.android.gms.internal.ads;

import com.google.android.gms.common.GooglePlayServicesUtilLight;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzexr.class */
public final /* synthetic */ class zzexr implements zzevm {
    public static final /* synthetic */ zzexr zza = new zzexr();

    private /* synthetic */ zzexr() {
    }

    @Override // com.google.android.gms.internal.ads.zzevm
    public final void zza(Object obj) {
        try {
            ((JSONObject) obj).getJSONObject("sdk_env").put("container_version", GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE);
        } catch (JSONException e) {
        }
    }
}
