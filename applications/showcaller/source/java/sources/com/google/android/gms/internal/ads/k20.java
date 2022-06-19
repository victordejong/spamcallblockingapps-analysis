package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/k20.class */
final class k20 implements n20<wn0> {
    @Override // com.google.android.gms.internal.ads.n20
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo8404a(wn0 wn0Var, Map map) {
        wn0 wn0Var2 = wn0Var;
        if (map.keySet().contains("start")) {
            wn0Var2.mo7914c0().mo14083h();
        } else if (map.keySet().contains("stop")) {
            wn0Var2.mo7914c0().mo14082i();
        } else if (!map.keySet().contains("cancel")) {
        } else {
            wn0Var2.mo7914c0().mo14081j();
        }
    }
}
