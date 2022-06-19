package com.google.android.gms.internal.ads;

import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/c20.class */
final class c20 implements n20<wn0> {
    @Override // com.google.android.gms.internal.ads.n20
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo8404a(wn0 wn0Var, Map map) {
        JSONObject mo9150e;
        wn0 wn0Var2 = wn0Var;
        AbstractC7014ty mo7947L = wn0Var2.mo7947L();
        if (mo7947L == null || (mo9150e = mo7947L.mo9150e()) == null) {
            wn0Var2.mo7920a("nativeClickMetaReady", new JSONObject());
        } else {
            wn0Var2.mo7920a("nativeClickMetaReady", mo9150e);
        }
    }
}
