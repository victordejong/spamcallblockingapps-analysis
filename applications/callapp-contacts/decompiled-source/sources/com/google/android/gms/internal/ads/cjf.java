package com.google.android.gms.internal.ads;

import com.google.android.gms.common.d;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cjf.class */
final /* synthetic */ class cjf implements cgy {

    /* renamed from: a  reason: collision with root package name */
    static final cgy f25934a = new cjf();

    private cjf() {
    }

    @Override // com.google.android.gms.internal.ads.cgy
    public final void a(Object obj) {
        try {
            ((JSONObject) obj).getJSONObject("sdk_env").put("container_version", d.GOOGLE_PLAY_SERVICES_VERSION_CODE);
        } catch (JSONException e) {
        }
    }
}
