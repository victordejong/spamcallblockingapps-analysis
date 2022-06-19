package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/cx1.class */
public final class cx1 implements qw1<qw0> {

    /* renamed from: a */
    private final kw0 f21399a;

    /* renamed from: b */
    private final Context f21400b;

    /* renamed from: c */
    private final bl1 f21401c;

    /* renamed from: d */
    private final xj2 f21402d;

    /* renamed from: e */
    private final Executor f21403e;

    /* renamed from: f */
    private final zzcgz f21404f;

    /* renamed from: g */
    private final q20 f21405g;

    /* renamed from: h */
    private final boolean f21406h = ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25765o6)).booleanValue();

    public cx1(kw0 kw0Var, Context context, Executor executor, bl1 bl1Var, xj2 xj2Var, zzcgz zzcgzVar, q20 q20Var) {
        this.f21400b = context;
        this.f21399a = kw0Var;
        this.f21403e = executor;
        this.f21401c = bl1Var;
        this.f21402d = xj2Var;
        this.f21404f = zzcgzVar;
        this.f21405g = q20Var;
    }

    @Override // com.google.android.gms.internal.ads.qw1
    /* renamed from: a */
    public final boolean mo8628a(rj2 rj2Var, ej2 ej2Var) {
        kj2 kj2Var = ej2Var.f22247s;
        return (kj2Var == null || kj2Var.f25233a == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.qw1
    /* renamed from: b */
    public final r03<qw0> mo8627b(rj2 rj2Var, ej2 ej2Var) {
        el1 el1Var = new el1();
        r03<qw0> m13995i = k03.m13995i(k03.m14003a(null), new uz2(this, ej2Var, rj2Var, el1Var) { // from class: com.google.android.gms.internal.ads.yw1

            /* renamed from: a */
            private final cx1 f32683a;

            /* renamed from: b */
            private final ej2 f32684b;

            /* renamed from: c */
            private final rj2 f32685c;

            /* renamed from: d */
            private final el1 f32686d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32683a = this;
                this.f32684b = ej2Var;
                this.f32685c = rj2Var;
                this.f32686d = el1Var;
            }

            @Override // com.google.android.gms.internal.ads.uz2
            /* renamed from: a */
            public final r03 mo8403a(Object obj) {
                return this.f32683a.m15980c(this.f32684b, this.f32685c, this.f32686d, obj);
            }
        }, this.f21403e);
        m13995i.mo10015d(zw1.m8156a(el1Var), this.f21403e);
        return m13995i;
    }

    /* renamed from: c */
    public final /* synthetic */ r03 m15980c(ej2 ej2Var, rj2 rj2Var, el1 el1Var, Object obj) {
        wn0 m16322b = this.f21401c.m16322b(this.f21402d.f32078e, ej2Var, rj2Var.f28999b.f28519b);
        m16322b.mo7919a0(ej2Var.f22211S);
        el1Var.m15438a(this.f21400b, (View) m16322b);
        vi0 vi0Var = new vi0();
        hw0 mo8245a = this.f21399a.mo8245a(new mz0(rj2Var, ej2Var, null), new pb1(new ex1(this.f21404f, vi0Var, ej2Var, m16322b, this.f21402d, this.f21406h, this.f21405g), m16322b), new iw0(ej2Var.f22215W));
        mo8245a.mo9083i().m16561i(m16322b, false, this.f21406h ? this.f21405g : null);
        vi0Var.m10016c(mo8245a);
        mo8245a.mo8210d().m13341D0(new s31(m16322b) { // from class: com.google.android.gms.internal.ads.ax1

            /* renamed from: d */
            private final wn0 f20177d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f20177d = m16322b;
            }

            @Override // com.google.android.gms.internal.ads.s31
            public final void zzg() {
                wn0 wn0Var = this.f20177d;
                if (wn0Var.mo7914c0() != null) {
                    wn0Var.mo7914c0().mo14084g();
                }
            }
        }, qi0.f28500f);
        mo8245a.mo9083i();
        kj2 kj2Var = ej2Var.f22247s;
        return k03.m13994j(al1.m16560j(m16322b, kj2Var.f25234b, kj2Var.f25233a), new nu2(this, m16322b, ej2Var, mo8245a) { // from class: com.google.android.gms.internal.ads.bx1

            /* renamed from: a */
            private final cx1 f21015a;

            /* renamed from: b */
            private final wn0 f21016b;

            /* renamed from: c */
            private final ej2 f21017c;

            /* renamed from: d */
            private final hw0 f21018d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f21015a = this;
                this.f21016b = m16322b;
                this.f21017c = ej2Var;
                this.f21018d = mo8245a;
            }

            @Override // com.google.android.gms.internal.ads.nu2
            /* renamed from: a */
            public final Object mo8501a(Object obj2) {
                wn0 wn0Var = this.f21016b;
                ej2 ej2Var2 = this.f21017c;
                hw0 hw0Var = this.f21018d;
                if (ej2Var2.f22201I) {
                    wn0Var.mo7962C();
                }
                wn0Var.mo7892p0();
                wn0Var.onPause();
                return hw0Var.mo9084h();
            }
        }, this.f21403e);
    }
}
