package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ix1.class */
public final class ix1 implements qw1<fw0> {

    /* renamed from: a */
    private final zv0 f24530a;

    /* renamed from: b */
    private final Context f24531b;

    /* renamed from: c */
    private final bl1 f24532c;

    /* renamed from: d */
    private final Executor f24533d;

    public ix1(zv0 zv0Var, Context context, Executor executor, bl1 bl1Var) {
        this.f24531b = context;
        this.f24530a = zv0Var;
        this.f24533d = executor;
        this.f24532c = bl1Var;
    }

    @Override // com.google.android.gms.internal.ads.qw1
    /* renamed from: a */
    public final boolean mo8628a(rj2 rj2Var, ej2 ej2Var) {
        kj2 kj2Var = ej2Var.f22247s;
        return (kj2Var == null || kj2Var.f25233a == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.qw1
    /* renamed from: b */
    public final r03<fw0> mo8627b(rj2 rj2Var, ej2 ej2Var) {
        return k03.m13995i(k03.m14003a(null), new uz2(this, rj2Var, ej2Var) { // from class: com.google.android.gms.internal.ads.fx1

            /* renamed from: a */
            private final ix1 f23183a;

            /* renamed from: b */
            private final rj2 f23184b;

            /* renamed from: c */
            private final ej2 f23185c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23183a = this;
                this.f23184b = rj2Var;
                this.f23185c = ej2Var;
            }

            @Override // com.google.android.gms.internal.ads.uz2
            /* renamed from: a */
            public final r03 mo8403a(Object obj) {
                return this.f23183a.m14256c(this.f23184b, this.f23185c, obj);
            }
        }, this.f24533d);
    }

    /* renamed from: c */
    public final /* synthetic */ r03 m14256c(rj2 rj2Var, ej2 ej2Var, Object obj) {
        zzbdl m16326b = bk2.m16326b(this.f24531b, ej2Var.f22249u);
        wn0 m16322b = this.f24532c.m16322b(m16326b, ej2Var, rj2Var.f28999b.f28519b);
        sv0 mo8163a = this.f24530a.mo8163a(new mz0(rj2Var, ej2Var, null), new tv0((View) m16322b, m16322b, bk2.m16325c(m16326b), ej2Var.f22215W, ej2Var.f22220a0, ej2Var.f22203K));
        mo8163a.mo9486i().m16561i(m16322b, false, null);
        q31 mo8210d = mo8163a.mo8210d();
        s31 s31Var = new s31(m16322b) { // from class: com.google.android.gms.internal.ads.gx1

            /* renamed from: d */
            private final wn0 f23729d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23729d = m16322b;
            }

            @Override // com.google.android.gms.internal.ads.s31
            public final void zzg() {
                wn0 wn0Var = this.f23729d;
                if (wn0Var.mo7914c0() != null) {
                    wn0Var.mo7914c0().mo14084g();
                }
            }
        };
        s03 s03Var = qi0.f28500f;
        mo8210d.m13341D0(s31Var, s03Var);
        mo8163a.mo9486i();
        kj2 kj2Var = ej2Var.f22247s;
        return k03.m13994j(al1.m16560j(m16322b, kj2Var.f25234b, kj2Var.f25233a), new nu2(mo8163a) { // from class: com.google.android.gms.internal.ads.hx1

            /* renamed from: a */
            private final sv0 f24069a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24069a = mo8163a;
            }

            @Override // com.google.android.gms.internal.ads.nu2
            /* renamed from: a */
            public final Object mo8501a(Object obj2) {
                return this.f24069a.mo9487h();
            }
        }, s03Var);
    }
}
