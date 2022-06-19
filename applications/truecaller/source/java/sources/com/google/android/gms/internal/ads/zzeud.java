package com.google.android.gms.internal.ads;

import com.google.android.gms.common.GooglePlayServicesUtilLight;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeud.class */
public final /* synthetic */ class zzeud implements zzerx {
    public static final zzerx zza = new zzeud();

    private zzeud() {
    }

    @Override // com.google.android.gms.internal.ads.zzerx
    public final void zzf(Object obj) {
        try {
            ((JSONObject) obj).getJSONObject("sdk_env").put("container_version", GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE);
        } catch (JSONException e) {
        }
    }
}
