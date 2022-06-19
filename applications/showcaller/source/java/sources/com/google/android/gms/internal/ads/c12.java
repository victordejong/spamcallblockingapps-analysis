package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/c12.class */
public final class c12 implements qw1<fk1> {

    /* renamed from: a */
    private final Context f21064a;

    /* renamed from: b */
    private final bl1 f21065b;

    /* renamed from: c */
    private final kk1 f21066c;

    /* renamed from: d */
    private final xj2 f21067d;

    /* renamed from: e */
    private final Executor f21068e;

    /* renamed from: f */
    private final zzcgz f21069f;

    /* renamed from: g */
    private final q20 f21070g;

    /* renamed from: h */
    private final boolean f21071h = ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25765o6)).booleanValue();

    public c12(Context context, zzcgz zzcgzVar, xj2 xj2Var, Executor executor, kk1 kk1Var, bl1 bl1Var, q20 q20Var) {
        this.f21064a = context;
        this.f21067d = xj2Var;
        this.f21066c = kk1Var;
        this.f21068e = executor;
        this.f21069f = zzcgzVar;
        this.f21065b = bl1Var;
        this.f21070g = q20Var;
    }

    @Override // com.google.android.gms.internal.ads.qw1
    /* renamed from: a */
    public final boolean mo8628a(rj2 rj2Var, ej2 ej2Var) {
        kj2 kj2Var = ej2Var.f22247s;
        return (kj2Var == null || kj2Var.f25233a == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.qw1
    /* renamed from: b */
    public final r03<fk1> mo8627b(rj2 rj2Var, ej2 ej2Var) {
        el1 el1Var = new el1();
        r03<fk1> m13995i = k03.m13995i(k03.m14003a(null), new uz2(this, ej2Var, rj2Var, el1Var) { // from class: com.google.android.gms.internal.ads.v02

            /* renamed from: a */
            private final c12 f31035a;

            /* renamed from: b */
            private final ej2 f31036b;

            /* renamed from: c */
            private final rj2 f31037c;

            /* renamed from: d */
            private final el1 f31038d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f31035a = this;
                this.f31036b = ej2Var;
                this.f31037c = rj2Var;
                this.f31038d = el1Var;
            }

            @Override // com.google.android.gms.internal.ads.uz2
            /* renamed from: a */
            public final r03 mo8403a(Object obj) {
                return this.f31035a.m16138c(this.f31036b, this.f31037c, this.f31038d, obj);
            }
        }, this.f21068e);
        m13995i.mo10015d(w02.m9814a(el1Var), this.f21068e);
        return m13995i;
    }

    /* renamed from: c */
    public final /* synthetic */ r03 m16138c(ej2 ej2Var, rj2 rj2Var, el1 el1Var, Object obj) {
        wn0 m16322b = this.f21065b.m16322b(this.f21067d.f32078e, ej2Var, rj2Var.f28999b.f28519b);
        m16322b.mo7919a0(ej2Var.f22211S);
        el1Var.m15438a(this.f21064a, (View) m16322b);
        vi0 vi0Var = new vi0();
        gk1 mo13871b = this.f21066c.mo13871b(new mz0(rj2Var, ej2Var, null), new hk1(new b12(this.f21064a, this.f21065b, this.f21067d, this.f21069f, ej2Var, vi0Var, m16322b, this.f21070g, this.f21071h), m16322b));
        vi0Var.m10016c(mo13871b);
        e30.m15592b(m16322b, mo13871b.mo8206k());
        mo13871b.mo8210d().m13341D0(new s31(m16322b) { // from class: com.google.android.gms.internal.ads.x02

            /* renamed from: d */
            private final wn0 f31872d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f31872d = m16322b;
            }

            @Override // com.google.android.gms.internal.ads.s31
            public final void zzg() {
                wn0 wn0Var = this.f31872d;
                if (wn0Var.mo7914c0() != null) {
                    wn0Var.mo7914c0().mo14084g();
                }
            }
        }, qi0.f28500f);
        mo13871b.mo8205l().m16561i(m16322b, true, this.f21071h ? this.f21070g : null);
        mo13871b.mo8205l();
        kj2 kj2Var = ej2Var.f22247s;
        return k03.m13994j(al1.m16560j(m16322b, kj2Var.f25234b, kj2Var.f25233a), new nu2(this, m16322b, ej2Var, mo13871b) { // from class: com.google.android.gms.internal.ads.y02

            /* renamed from: a */
            private final c12 f32377a;

            /* renamed from: b */
            private final wn0 f32378b;

            /* renamed from: c */
            private final ej2 f32379c;

            /* renamed from: d */
            private final gk1 f32380d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32377a = this;
                this.f32378b = m16322b;
                this.f32379c = ej2Var;
                this.f32380d = mo13871b;
            }

            @Override // com.google.android.gms.internal.ads.nu2
            /* renamed from: a */
            public final Object mo8501a(Object obj2) {
                wn0 wn0Var = this.f32378b;
                ej2 ej2Var2 = this.f32379c;
                gk1 gk1Var = this.f32380d;
                if (ej2Var2.f22201I) {
                    wn0Var.mo7962C();
                }
                wn0Var.mo7892p0();
                wn0Var.onPause();
                return gk1Var.mo8209h();
            }
        }, this.f21068e);
    }
}
