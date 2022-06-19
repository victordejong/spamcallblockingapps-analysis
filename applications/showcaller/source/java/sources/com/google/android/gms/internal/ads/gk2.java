package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C5667s;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/gk2.class */
public final class gk2 {
    /* renamed from: a */
    public static n20<wn0> m14916a(dw1 dw1Var, bp2 bp2Var, qa1 qa1Var) {
        return new n20(qa1Var, bp2Var, dw1Var) { // from class: com.google.android.gms.internal.ads.ck2

            /* renamed from: a */
            private final qa1 f21274a;

            /* renamed from: b */
            private final bp2 f21275b;

            /* renamed from: c */
            private final dw1 f21276c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f21274a = qa1Var;
                this.f21275b = bp2Var;
                this.f21276c = dw1Var;
            }

            @Override // com.google.android.gms.internal.ads.n20
            /* renamed from: a */
            public final void mo8404a(Object obj, Map map) {
                qa1 qa1Var2 = this.f21274a;
                bp2 bp2Var2 = this.f21275b;
                dw1 dw1Var2 = this.f21276c;
                wn0 wn0Var = (wn0) obj;
                m20.m13373c(map, qa1Var2);
                String str = (String) map.get("u");
                if (str == null) {
                    ei0.m15464f("URL missing from click GMSG.");
                } else {
                    k03.m13988p(m20.m13375a(wn0Var, str), new ek2(wn0Var, bp2Var2, dw1Var2), qi0.f28495a);
                }
            }
        };
    }

    /* renamed from: b */
    public static <T extends nn0 & so0 & xo0 & fp0> n20<T> m14915b(dw1 dw1Var, bp2 bp2Var) {
        return new n20(bp2Var, dw1Var) { // from class: com.google.android.gms.internal.ads.dk2

            /* renamed from: a */
            private final bp2 f21662a;

            /* renamed from: b */
            private final dw1 f21663b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f21662a = bp2Var;
                this.f21663b = dw1Var;
            }

            @Override // com.google.android.gms.internal.ads.n20
            /* renamed from: a */
            public final void mo8404a(Object obj, Map map) {
                bp2 bp2Var2 = this.f21662a;
                dw1 dw1Var2 = this.f21663b;
                nn0 nn0Var = (nn0) obj;
                String str = (String) map.get("u");
                if (str == null) {
                    ei0.m15464f("URL missing from httpTrack GMSG.");
                } else if (!nn0Var.mo7878z().f22230f0) {
                    bp2Var2.m16302b(str);
                } else {
                    dw1Var2.m15669k(new fw1(C5667s.m18153k().mo16807a(), ((so0) nn0Var).mo7964B().f24897b, str, 2));
                }
            }
        };
    }
}
