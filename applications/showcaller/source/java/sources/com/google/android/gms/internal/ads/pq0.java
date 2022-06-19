package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C5667s;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/pq0.class */
public final class pq0 implements cj3<id0> {

    /* renamed from: a */
    private final pj3<Context> f28092a;

    public pq0(pj3<Context> pj3Var) {
        this.f28092a = pj3Var;
    }

    /* renamed from: a */
    public final id0 mo8141b() {
        Context m9095a = ((xp0) this.f28092a).m9095a();
        r60 m14748a = C5667s.m18147q().m14748a(m9095a, zzcgz.m8066k0());
        l60<JSONObject> l60Var = o60.f27442b;
        m14748a.m11677a("google.afma.request.getAdDictionary", l60Var, l60Var);
        return new hd0(m9095a, C5667s.m18147q().m14748a(m9095a, zzcgz.m8066k0()).m11677a("google.afma.sdkConstants.getSdkConstants", l60Var, l60Var));
    }
}
