package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.eg */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/eg.class */
public final class C3109eg implements AbstractC3131fa<Object> {

    /* renamed from: a */
    private final AbstractC3111ei f16617a;

    public C3109eg(AbstractC3111ei abstractC3111ei) {
        this.f16617a = abstractC3111ei;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3131fa
    /* renamed from: a */
    public final void mo7414a(Object obj, Map<String, String> map) {
        Bundle bundle;
        if (this.f16617a == null) {
            return;
        }
        String str = map.get("name");
        if (str == null) {
            C3556uu.m6747d("Ad metadata with no name parameter.");
            str = "";
        }
        if (map.containsKey("info")) {
            try {
                bundle = C3614wy.m6853a(new JSONObject(map.get("info")));
            } catch (JSONException e) {
                C3556uu.m6748c("Failed to convert ad metadata to JSON.", e);
                bundle = null;
            }
        } else {
            bundle = null;
        }
        if (bundle == null) {
            C3556uu.m6749c("Failed to convert ad metadata to Bundle.");
        } else {
            this.f16617a.mo7860a(str, bundle);
        }
    }
}
