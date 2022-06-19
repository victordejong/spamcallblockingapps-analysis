package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.android.gms.ads.internal.util.C5744w;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/rx1.class */
public final class rx1 implements qw1<xw0> {

    /* renamed from: a */
    private final vx0 f29292a;

    /* renamed from: b */
    private final Context f29293b;

    /* renamed from: c */
    private final bl1 f29294c;

    /* renamed from: d */
    private final xj2 f29295d;

    /* renamed from: e */
    private final Executor f29296e;

    /* renamed from: f */
    private final nu2<ej2, C5744w> f29297f;

    public rx1(vx0 vx0Var, Context context, Executor executor, bl1 bl1Var, xj2 xj2Var, nu2<ej2, C5744w> nu2Var) {
        this.f29293b = context;
        this.f29292a = vx0Var;
        this.f29296e = executor;
        this.f29294c = bl1Var;
        this.f29295d = xj2Var;
        this.f29297f = nu2Var;
    }

    @Override // com.google.android.gms.internal.ads.qw1
    /* renamed from: a */
    public final boolean mo8628a(rj2 rj2Var, ej2 ej2Var) {
        kj2 kj2Var = ej2Var.f22247s;
        return (kj2Var == null || kj2Var.f25233a == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.qw1
    /* renamed from: b */
    public final r03<xw0> mo8627b(rj2 rj2Var, ej2 ej2Var) {
        return k03.m13995i(k03.m14003a(null), new uz2(this, rj2Var, ej2Var) { // from class: com.google.android.gms.internal.ads.kx1

            /* renamed from: a */
            private final rx1 f25876a;

            /* renamed from: b */
            private final rj2 f25877b;

            /* renamed from: c */
            private final ej2 f25878c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25876a = this;
                this.f25877b = rj2Var;
                this.f25878c = ej2Var;
            }

            @Override // com.google.android.gms.internal.ads.uz2
            /* renamed from: a */
            public final r03 mo8403a(Object obj) {
                return this.f25876a.m11260d(this.f25877b, this.f25878c, obj);
            }
        }, this.f29296e);
    }

    /* renamed from: c */
    public final /* synthetic */ void m11261c(wn0 wn0Var) {
        wn0Var.mo7892p0();
        ro0 mo7909f = wn0Var.mo7909f();
        zzbis zzbisVar = this.f29295d.f32074a;
        if (zzbisVar == null || mo7909f == null) {
            return;
        }
        mo7909f.m11363F6(zzbisVar);
    }

    /* renamed from: d */
    public final /* synthetic */ r03 m11260d(rj2 rj2Var, ej2 ej2Var, Object obj) {
        zzcwv zzcwvVar;
        zzbdl m16326b = bk2.m16326b(this.f29293b, ej2Var.f22249u);
        wn0 m16322b = this.f29294c.m16322b(m16326b, ej2Var, rj2Var.f28999b.f28519b);
        m16322b.mo7919a0(ej2Var.f22211S);
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25449B5)).booleanValue() || !ej2Var.f22226d0) {
            zzcwvVar = new zzdsv(this.f29293b, (View) m16322b, this.f29297f.mo8501a(ej2Var));
        } else {
            zzcwvVar = zzcwv.m7876a(this.f29293b, (View) m16322b, ej2Var);
        }
        yw0 mo9840d = this.f29292a.mo9840d(new mz0(rj2Var, ej2Var, null), new ex0(zzcwvVar, m16322b, lx1.m13404a(m16322b), bk2.m16325c(m16326b)));
        mo9840d.mo8674i().m16561i(m16322b, false, null);
        q31 mo8210d = mo9840d.mo8210d();
        s31 s31Var = new s31(m16322b) { // from class: com.google.android.gms.internal.ads.mx1

            /* renamed from: d */
            private final wn0 f26902d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f26902d = m16322b;
            }

            @Override // com.google.android.gms.internal.ads.s31
            public final void zzg() {
                wn0 wn0Var = this.f26902d;
                if (wn0Var.mo7914c0() != null) {
                    wn0Var.mo7914c0().mo14084g();
                }
            }
        };
        s03 s03Var = qi0.f28500f;
        mo8210d.m13341D0(s31Var, s03Var);
        mo9840d.mo8674i();
        kj2 kj2Var = ej2Var.f22247s;
        r03<?> m16560j = al1.m16560j(m16322b, kj2Var.f25234b, kj2Var.f25233a);
        if (ej2Var.f22201I) {
            m16560j.mo10015d(ox1.m12478a(m16322b), this.f29296e);
        }
        m16560j.mo10015d(new Runnable(this, m16322b) { // from class: com.google.android.gms.internal.ads.px1

            /* renamed from: d */
            private final rx1 f28211d;

            /* renamed from: e */
            private final wn0 f28212e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f28211d = this;
                this.f28212e = m16322b;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f28211d.m11261c(this.f28212e);
            }
        }, this.f29296e);
        return k03.m13994j(m16560j, new nu2(mo9840d) { // from class: com.google.android.gms.internal.ads.qx1

            /* renamed from: a */
            private final yw0 f28678a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f28678a = mo9840d;
            }

            @Override // com.google.android.gms.internal.ads.nu2
            /* renamed from: a */
            public final Object mo8501a(Object obj2) {
                return this.f28678a.mo8675h();
            }
        }, s03Var);
    }
}
