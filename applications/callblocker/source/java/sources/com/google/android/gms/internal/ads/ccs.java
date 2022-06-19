package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ccs.class */
final /* synthetic */ class ccs implements cae {

    /* renamed from: a */
    static final cae f12736a = new ccs();

    private ccs() {
    }

    @Override // com.google.android.gms.internal.ads.cae
    /* renamed from: a */
    public final void mo11481a(Object obj) {
        try {
            ((JSONObject) obj).getJSONObject("sdk_env").put("container_version", 12451009);
        } catch (JSONException e) {
        }
    }
}
