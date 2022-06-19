package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/z10.class */
final /* synthetic */ class z10 implements n20 {

    /* renamed from: a */
    static final n20 f32761a = new z10();

    private z10() {
    }

    @Override // com.google.android.gms.internal.ads.n20
    /* renamed from: a */
    public final void mo8404a(Object obj, Map map) {
        ep0 ep0Var = (ep0) obj;
        n20<wn0> n20Var = m20.f26383a;
        String str = (String) map.get("tx");
        String str2 = (String) map.get("ty");
        String str3 = (String) map.get("td");
        try {
            int parseInt = Integer.parseInt(str);
            int parseInt2 = Integer.parseInt(str2);
            int parseInt3 = Integer.parseInt(str3);
            C7016u mo7966A = ep0Var.mo7966A();
            if (mo7966A == null) {
                return;
            }
            mo7966A.m10450b().mo11747f(parseInt, parseInt2, parseInt3);
        } catch (NumberFormatException e) {
            ei0.m15464f("Could not parse touch parameters from gmsg.");
        }
    }
}
