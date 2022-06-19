package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.g21;
import com.google.android.gms.internal.ads.xy0;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/sf2.class */
public final class sf2<R extends g21<AdT>, AdT extends xy0> implements sg2<R, ql2<R, AdT>> {

    /* renamed from: a */
    private R f29480a;

    /* renamed from: b */
    private final Executor f29481b = y03.m9007a();

    @Override // com.google.android.gms.internal.ads.sg2
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ r03 mo9227a(tg2 tg2Var, rg2 rg2Var, Object obj) {
        return m11059c(tg2Var, rg2Var, null);
    }

    /* renamed from: b */
    public final R m11060b() {
        return this.f29480a;
    }

    /* renamed from: c */
    public final r03<ql2<R, AdT>> m11059c(tg2 tg2Var, rg2<R> rg2Var, R r) {
        f21<R> mo11470a = rg2Var.mo11470a(tg2Var.f29969b);
        mo11470a.mo8737s(new yg2(true));
        R mo8739d = mo11470a.mo8739d();
        this.f29480a = mo8739d;
        b01 mo8231o = mo8739d.mo8231o();
        ql2 ql2Var = new ql2();
        return k03.m13994j(k03.m13995i(a03.m16718E(mo8231o.m16460c()), new uz2(this, ql2Var, mo8231o) { // from class: com.google.android.gms.internal.ads.qf2

            /* renamed from: a */
            private final sf2 f28457a;

            /* renamed from: b */
            private final ql2 f28458b;

            /* renamed from: c */
            private final b01 f28459c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f28457a = this;
                this.f28458b = ql2Var;
                this.f28459c = mo8231o;
            }

            @Override // com.google.android.gms.internal.ads.uz2
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final com.google.android.gms.internal.ads.r03 mo8403a(java.lang.Object r4) {
                /*
                    r3 = this;
                    r0 = r3
                    com.google.android.gms.internal.ads.ql2 r0 = r0.f28458b
                    r5 = r0
                    r0 = r3
                    com.google.android.gms.internal.ads.b01 r0 = r0.f28459c
                    r6 = r0
                    r0 = r4
                    com.google.android.gms.internal.ads.rj2 r0 = (com.google.android.gms.internal.ads.rj2) r0
                    r4 = r0
                    r0 = r5
                    r1 = r4
                    r0.f28550b = r1
                    r0 = r4
                    com.google.android.gms.internal.ads.qj2 r0 = r0.f28999b
                    java.util.List<com.google.android.gms.internal.ads.ej2> r0 = r0.f28518a
                    java.util.Iterator r0 = r0.iterator()
                    r5 = r0
                    r0 = 0
                    r7 = r0
                L24:
                    r0 = r5
                    boolean r0 = r0.hasNext()
                    if (r0 == 0) goto L65
                    r0 = r5
                    java.lang.Object r0 = r0.next()
                    com.google.android.gms.internal.ads.ej2 r0 = (com.google.android.gms.internal.ads.ej2) r0
                    java.util.List<java.lang.String> r0 = r0.f22219a
                    java.util.Iterator r0 = r0.iterator()
                    r8 = r0
                L40:
                    r0 = r8
                    boolean r0 = r0.hasNext()
                    if (r0 == 0) goto L24
                    r0 = r8
                    java.lang.Object r0 = r0.next()
                    java.lang.String r0 = (java.lang.String) r0
                    java.lang.String r1 = "FirstPartyRenderer"
                    boolean r0 = r0.contains(r1)
                    if (r0 != 0) goto L5f
                    goto L76
                L5f:
                    r0 = 1
                    r7 = r0
                    goto L40
                L65:
                    r0 = r7
                    if (r0 == 0) goto L76
                    r0 = r6
                    r1 = r4
                    com.google.android.gms.internal.ads.r03 r1 = com.google.android.gms.internal.ads.k03.m14003a(r1)
                    com.google.android.gms.internal.ads.r03 r0 = r0.m16459d(r1)
                    r4 = r0
                    goto L7b
                L76:
                    r0 = 0
                    com.google.android.gms.internal.ads.r03 r0 = com.google.android.gms.internal.ads.k03.m14003a(r0)
                    r4 = r0
                L7b:
                    r0 = r4
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.qf2.mo8403a(java.lang.Object):com.google.android.gms.internal.ads.r03");
            }
        }, this.f29481b), new nu2(ql2Var) { // from class: com.google.android.gms.internal.ads.rf2

            /* renamed from: a */
            private final ql2 f28935a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f28935a = ql2Var;
            }

            @Override // com.google.android.gms.internal.ads.nu2
            /* renamed from: a */
            public final Object mo8501a(Object obj) {
                ql2 ql2Var2 = this.f28935a;
                ql2Var2.f28551c = (AdT) obj;
                return ql2Var2;
            }
        }, this.f29481b);
    }

    @Override // com.google.android.gms.internal.ads.sg2
    /* renamed from: e */
    public final /* bridge */ /* synthetic */ Object mo9223e() {
        return this.f29480a;
    }
}
