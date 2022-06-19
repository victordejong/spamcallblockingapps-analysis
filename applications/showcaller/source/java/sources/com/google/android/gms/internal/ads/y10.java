package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.C5678c1;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/y10.class */
final /* synthetic */ class y10 implements n20 {

    /* renamed from: a */
    static final n20 f32387a = new y10();

    private y10() {
    }

    @Override // com.google.android.gms.internal.ads.n20
    /* renamed from: a */
    public final void mo8404a(Object obj, Map map) {
        xo0 xo0Var = (xo0) obj;
        n20<wn0> n20Var = m20.f26383a;
        String str = (String) map.get("u");
        if (str == null) {
            ei0.m15464f("URL missing from httpTrack GMSG.");
        } else {
            new C5678c1(xo0Var.getContext(), ((fp0) xo0Var).zzt().f33854d, str).mo16320c();
        }
    }
}
