package com.google.android.gms.internal.ads;

import com.google.android.gms.common.C6094e;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ed2.class */
final /* synthetic */ class ed2 implements va2 {

    /* renamed from: a */
    static final va2 f22072a = new ed2();

    private ed2() {
    }

    @Override // com.google.android.gms.internal.ads.va2
    /* renamed from: a */
    public final void mo8928a(Object obj) {
        try {
            ((JSONObject) obj).getJSONObject("sdk_env").put("container_version", C6094e.f19409a);
        } catch (JSONException e) {
        }
    }
}
