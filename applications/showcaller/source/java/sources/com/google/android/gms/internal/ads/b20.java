package com.google.android.gms.internal.ads;

import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/b20.class */
final class b20 implements n20<wn0> {
    @Override // com.google.android.gms.internal.ads.n20
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo8404a(wn0 wn0Var, Map map) {
        JSONObject mo9151c;
        wn0 wn0Var2 = wn0Var;
        AbstractC7014ty mo7947L = wn0Var2.mo7947L();
        if (mo7947L == null || (mo9151c = mo7947L.mo9151c()) == null) {
            wn0Var2.mo7920a("nativeAdViewSignalsReady", new JSONObject());
        } else {
            wn0Var2.mo7920a("nativeAdViewSignalsReady", mo9151c);
        }
    }
}
