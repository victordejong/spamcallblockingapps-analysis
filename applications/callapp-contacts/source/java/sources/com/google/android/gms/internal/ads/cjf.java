package com.google.android.gms.internal.ads;

import com.google.android.gms.common.C11943d;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cjf.class */
final /* synthetic */ class cjf implements cgy {

    /* renamed from: a */
    static final cgy f45901a = new cjf();

    private cjf() {
    }

    @Override // com.google.android.gms.internal.ads.cgy
    /* renamed from: a */
    public final void mo17450a(Object obj) {
        try {
            ((JSONObject) obj).getJSONObject("sdk_env").put("container_version", C11943d.GOOGLE_PLAY_SERVICES_VERSION_CODE);
        } catch (JSONException e) {
        }
    }
}
