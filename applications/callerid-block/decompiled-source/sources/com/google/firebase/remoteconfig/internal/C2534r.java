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
    public void m3179a(String str, C2517f fVar) {
        JSONObject optJSONObject;
        JSONObject f = fVar.m3255f();
        if (f.length() >= 1) {
            JSONObject d = fVar.m3257d();
            if (d.length() >= 1 && (optJSONObject = f.optJSONObject(str)) != null) {
                Bundle bundle = new Bundle();
                bundle.putString("_fpid", optJSONObject.optString("personalizationId"));
                bundle.putString("_fpct", d.optString(str));
                this.f10855a.f("fp", "_fpc", bundle);
            }
        }
    }
}
