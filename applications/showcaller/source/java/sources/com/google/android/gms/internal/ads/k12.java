package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/k12.class */
public final class k12 implements sw1<r90, my1> {

    /* renamed from: a */
    private final p22 f25055a;

    public k12(p22 p22Var) {
        this.f25055a = p22Var;
    }

    @Override // com.google.android.gms.internal.ads.sw1
    /* renamed from: a */
    public final tw1<r90, my1> mo10443a(String str, JSONObject jSONObject) {
        r90 m12460b = this.f25055a.m12460b(str);
        if (m12460b == null) {
            return null;
        }
        return new tw1<>(m12460b, new my1(), str);
    }
}
