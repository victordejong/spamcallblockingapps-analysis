package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/j20.class */
final class j20 implements n20<wn0> {
    @Override // com.google.android.gms.internal.ads.n20
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo8404a(wn0 wn0Var, Map map) {
        wn0 wn0Var2 = wn0Var;
        String str = (String) map.get("action");
        if ("pause".equals(str)) {
            wn0Var2.mo7939P0();
        } else if (!"resume".equals(str)) {
        } else {
            wn0Var2.mo7921Z0();
        }
    }
}
