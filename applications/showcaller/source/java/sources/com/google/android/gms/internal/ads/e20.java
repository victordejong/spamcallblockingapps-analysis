package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.BinderC5650l;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/e20.class */
final class e20 implements n20<wn0> {
    @Override // com.google.android.gms.internal.ads.n20
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo8404a(wn0 wn0Var, Map map) {
        wn0 wn0Var2 = wn0Var;
        if (wn0Var2.mo7880x() != null) {
            wn0Var2.mo7880x().zza();
        }
        BinderC5650l mo7938Q = wn0Var2.mo7938Q();
        if (mo7938Q != null) {
            mo7938Q.m18189b();
            return;
        }
        BinderC5650l mo7888s = wn0Var2.mo7888s();
        if (mo7888s != null) {
            mo7888s.m18189b();
        } else {
            ei0.m15464f("A GMSG tried to close something that wasn't an overlay.");
        }
    }
}
