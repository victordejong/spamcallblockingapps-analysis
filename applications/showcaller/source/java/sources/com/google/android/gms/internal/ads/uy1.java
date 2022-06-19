package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/uy1.class */
public final class uy1 implements qw1<lb1> {

    /* renamed from: a */
    private final Context f31014a;

    /* renamed from: b */
    private final bl1 f31015b;

    /* renamed from: c */
    private final jc1 f31016c;

    /* renamed from: d */
    private final xj2 f31017d;

    /* renamed from: e */
    private final Executor f31018e;

    /* renamed from: f */
    private final zzcgz f31019f;

    /* renamed from: g */
    private final q20 f31020g;

    /* renamed from: h */
    private final boolean f31021h = ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25765o6)).booleanValue();

    public uy1(Context context, zzcgz zzcgzVar, xj2 xj2Var, Executor executor, jc1 jc1Var, bl1 bl1Var, q20 q20Var) {
        this.f31014a = context;
        this.f31017d = xj2Var;
        this.f31016c = jc1Var;
        this.f31018e = executor;
        this.f31019f = zzcgzVar;
        this.f31015b = bl1Var;
        this.f31020g = q20Var;
    }

    @Override // com.google.android.gms.internal.ads.qw1
    /* renamed from: a */
    public final boolean mo8628a(rj2 rj2Var, ej2 ej2Var) {
        kj2 kj2Var = ej2Var.f22247s;
        return (kj2Var == null || kj2Var.f25233a == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.qw1
    /* renamed from: b */
    public final r03<lb1> mo8627b(rj2 rj2Var, ej2 ej2Var) {
        el1 el1Var = new el1();
        r03<lb1> m13995i = k03.m13995i(k03.m14003a(null), new uz2(this, ej2Var, rj2Var, el1Var) { // from class: com.google.android.gms.internal.ads.py1

            /* renamed from: a */
            private final uy1 f28246a;

            /* renamed from: b */
            private final ej2 f28247b;

            /* renamed from: c */
            private final rj2 f28248c;

            /* renamed from: d */
            private final el1 f28249d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f28246a = this;
                this.f28247b = ej2Var;
                this.f28248c = rj2Var;
                this.f28249d = el1Var;
            }

            @Override // com.google.android.gms.internal.ads.uz2
            /* renamed from: a */
            public final r03 mo8403a(Object obj) {
                return this.f28246a.m10150c(this.f28247b, this.f28248c, this.f28249d, obj);
            }
        }, this.f31018e);
        m13995i.mo10015d(qy1.m11756a(el1Var), this.f31018e);
        return m13995i;
    }

    /* renamed from: c */
    public final /* synthetic */ r03 m10150c(ej2 ej2Var, rj2 rj2Var, el1 el1Var, Object obj) {
        wn0 m16322b = this.f31015b.m16322b(this.f31017d.f32078e, ej2Var, rj2Var.f28999b.f28519b);
        m16322b.mo7919a0(ej2Var.f22211S);
        el1Var.m15438a(this.f31014a, (View) m16322b);
        vi0 vi0Var = new vi0();
        mb1 mo10542c = this.f31016c.mo10542c(new mz0(rj2Var, ej2Var, null), new pb1(new ty1(this.f31014a, this.f31019f, vi0Var, ej2Var, m16322b, this.f31017d, this.f31021h, this.f31020g), m16322b));
        vi0Var.m10016c(mo10542c);
        mo10542c.mo8210d().m13341D0(new s31(m16322b) { // from class: com.google.android.gms.internal.ads.ry1

            /* renamed from: d */
            private final wn0 f29310d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f29310d = m16322b;
            }

            @Override // com.google.android.gms.internal.ads.s31
            public final void zzg() {
                wn0 wn0Var = this.f29310d;
                if (wn0Var.mo7914c0() != null) {
                    wn0Var.mo7914c0().mo14084g();
                }
            }
        }, qi0.f28500f);
        mo10542c.mo11319k().m16561i(m16322b, true, this.f31021h ? this.f31020g : null);
        mo10542c.mo11319k();
        kj2 kj2Var = ej2Var.f22247s;
        return k03.m13994j(al1.m16560j(m16322b, kj2Var.f25234b, kj2Var.f25233a), new nu2(this, m16322b, ej2Var, mo10542c) { // from class: com.google.android.gms.internal.ads.sy1

            /* renamed from: a */
            private final uy1 f29737a;

            /* renamed from: b */
            private final wn0 f29738b;

            /* renamed from: c */
            private final ej2 f29739c;

            /* renamed from: d */
            private final mb1 f29740d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f29737a = this;
                this.f29738b = m16322b;
                this.f29739c = ej2Var;
                this.f29740d = mo10542c;
            }

            @Override // com.google.android.gms.internal.ads.nu2
            /* renamed from: a */
            public final Object mo8501a(Object obj2) {
                wn0 wn0Var = this.f29738b;
                ej2 ej2Var2 = this.f29739c;
                mb1 mb1Var = this.f29740d;
                if (ej2Var2.f22201I) {
                    wn0Var.mo7962C();
                }
                wn0Var.mo7892p0();
                wn0Var.onPause();
                return mb1Var.mo11322h();
            }
        }, this.f31018e);
    }
}
