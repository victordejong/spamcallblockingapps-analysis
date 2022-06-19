package com.google.firebase.remoteconfig.internal;

import android.os.Bundle;
import com.google.firebase.analytics.a.a;
import org.json.JSONObject;
/* renamed from: com.google.firebase.remoteconfig.internal.r */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/remoteconfig/internal/r.class */
public class C2534r {

    /* renamed from: a */
    private final a f10855a;

    public C2534r(a aVar) {
        this.f10855a = aVar;
    }

    /* renamed from: a */
    public void m3179a(String str, C2517f c2517f) {
        JSONObject optJSONObject;
        JSONObject m3255f = c2517f.m3255f();
        if (m3255f.length() < 1) {
            return;
        }
        JSONObject m3257d = c2517f.m3257d();
        if (m3257d.length() < 1 || (optJSONObject = m3255f.optJSONObject(str)) == null) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("_fpid", optJSONObject.optString("personalizationId"));
        bundle.putString("_fpct", m3257d.optString(str));
        this.f10855a.f("fp", "_fpc", bundle);
    }
}
