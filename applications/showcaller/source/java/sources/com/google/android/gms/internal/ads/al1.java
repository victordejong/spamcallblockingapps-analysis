package com.google.android.gms.internal.ads;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.internal.C5625b;
import com.google.android.gms.ads.internal.overlay.AbstractC5659u;
import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/al1.class */
public final class al1 {

    /* renamed from: a */
    private final w21 f19989a;

    /* renamed from: b */
    private final oa1 f19990b;

    /* renamed from: c */
    private final g41 f19991c;

    /* renamed from: d */
    private final t41 f19992d;

    /* renamed from: e */
    private final f51 f19993e;

    /* renamed from: f */
    private final y71 f19994f;

    /* renamed from: g */
    private final Executor f19995g;

    /* renamed from: h */
    private final la1 f19996h;

    /* renamed from: i */
    private final ev0 f19997i;

    /* renamed from: j */
    private final C5625b f19998j;

    /* renamed from: k */
    private final hf0 f19999k;

    /* renamed from: l */
    private final C7016u f20000l;

    /* renamed from: m */
    private final p71 f20001m;

    /* renamed from: n */
    private final dw1 f20002n;

    /* renamed from: o */
    private final bp2 f20003o;

    /* renamed from: p */
    private final rn1 f20004p;

    /* renamed from: q */
    private final jo2 f20005q;

    public al1(w21 w21Var, g41 g41Var, t41 t41Var, f51 f51Var, y71 y71Var, Executor executor, la1 la1Var, ev0 ev0Var, C5625b c5625b, hf0 hf0Var, C7016u c7016u, p71 p71Var, dw1 dw1Var, bp2 bp2Var, rn1 rn1Var, jo2 jo2Var, oa1 oa1Var) {
        this.f19989a = w21Var;
        this.f19991c = g41Var;
        this.f19992d = t41Var;
        this.f19993e = f51Var;
        this.f19994f = y71Var;
        this.f19995g = executor;
        this.f19996h = la1Var;
        this.f19997i = ev0Var;
        this.f19998j = c5625b;
        this.f19999k = hf0Var;
        this.f20000l = c7016u;
        this.f20001m = p71Var;
        this.f20002n = dw1Var;
        this.f20003o = bp2Var;
        this.f20004p = rn1Var;
        this.f20005q = jo2Var;
        this.f19990b = oa1Var;
    }

    /* renamed from: j */
    public static final r03<?> m16560j(wn0 wn0Var, String str, String str2) {
        vi0 vi0Var = new vi0();
        wn0Var.mo7914c0().mo14085f0(new hp0(vi0Var) { // from class: com.google.android.gms.internal.ads.yk1

            /* renamed from: d */
            private final vi0 f32529d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32529d = vi0Var;
            }

            @Override // com.google.android.gms.internal.ads.hp0
            /* renamed from: b */
            public final void mo8634b(boolean z) {
                vi0 vi0Var2 = this.f32529d;
                if (z) {
                    vi0Var2.m10016c(null);
                } else {
                    vi0Var2.m10014f(new Exception("Ad Web View failed to load."));
                }
            }
        });
        wn0Var.mo7915b1(str, str2, null);
        return vi0Var;
    }

    /* renamed from: c */
    public final /* synthetic */ void m16567c(wn0 wn0Var, wn0 wn0Var2, Map map) {
        this.f19997i.m15371d(wn0Var);
    }

    /* renamed from: d */
    public final /* synthetic */ void m16566d(View view) {
        this.f19998j.m18223a();
    }

    /* renamed from: e */
    public final /* synthetic */ boolean m16565e(View view, MotionEvent motionEvent) {
        this.f19998j.m18223a();
        return false;
    }

    /* renamed from: f */
    public final /* synthetic */ void m16564f() {
        this.f19991c.m14986b();
    }

    /* renamed from: g */
    public final /* synthetic */ void m16563g(String str, String str2) {
        this.f19994f.mo8902g0(str, str2);
    }

    /* renamed from: h */
    public final /* synthetic */ void m16562h() {
        this.f19989a.mo7877z0();
    }

    /* renamed from: i */
    public final void m16561i(wn0 wn0Var, boolean z, q20 q20Var) {
        AbstractC6868q m10450b;
        wn0Var.mo7914c0().mo14079q0(new AbstractC6673kq(this) { // from class: com.google.android.gms.internal.ads.rk1

            /* renamed from: d */
            private final al1 f29007d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f29007d = this;
            }

            @Override // com.google.android.gms.internal.ads.AbstractC6673kq
            /* renamed from: z0 */
            public final void mo7877z0() {
                this.f29007d.m16562h();
            }
        }, this.f19992d, this.f19993e, new o10(this) { // from class: com.google.android.gms.internal.ads.sk1

            /* renamed from: d */
            private final al1 f29555d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f29555d = this;
            }

            @Override // com.google.android.gms.internal.ads.o10
            /* renamed from: g0 */
            public final void mo8902g0(String str, String str2) {
                this.f29555d.m16563g(str, str2);
            }
        }, new AbstractC5659u(this) { // from class: com.google.android.gms.internal.ads.tk1

            /* renamed from: d */
            private final al1 f30030d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f30030d = this;
            }

            @Override // com.google.android.gms.ads.internal.overlay.AbstractC5659u
            public final void zzg() {
                this.f30030d.m16564f();
            }
        }, z, q20Var, this.f19998j, new zk1(this), this.f19999k, this.f20002n, this.f20003o, this.f20004p, this.f20005q, null, this.f19990b);
        wn0Var.setOnTouchListener(new View.OnTouchListener(this) { // from class: com.google.android.gms.internal.ads.uk1

            /* renamed from: d */
            private final al1 f30654d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f30654d = this;
            }

            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                this.f30654d.m16565e(view, motionEvent);
                return false;
            }
        });
        wn0Var.setOnClickListener(new View.OnClickListener(this) { // from class: com.google.android.gms.internal.ads.vk1

            /* renamed from: d */
            private final al1 f31234d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f31234d = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f31234d.m16566d(view);
            }
        });
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25517K1)).booleanValue() && (m10450b = this.f20000l.m10450b()) != null) {
            m10450b.mo11198c((View) wn0Var);
        }
        this.f19996h.m13341D0(wn0Var, this.f19995g);
        this.f19996h.m13341D0(new AbstractC6888qj(wn0Var) { // from class: com.google.android.gms.internal.ads.wk1

            /* renamed from: d */
            private final wn0 f31600d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f31600d = wn0Var;
            }

            @Override // com.google.android.gms.internal.ads.AbstractC6888qj
            /* renamed from: Y */
            public final void mo7924Y(C6851pj c6851pj) {
                jp0 mo7914c0 = this.f31600d.mo7914c0();
                Rect rect = c6851pj.f28017d;
                mo7914c0.mo14090G0(rect.left, rect.top, false);
            }
        }, this.f19995g);
        this.f19996h.m13619S0((View) wn0Var);
        wn0Var.mo7899l0("/trackActiveViewUnit", new n20(this, wn0Var) { // from class: com.google.android.gms.internal.ads.xk1

            /* renamed from: a */
            private final al1 f32096a;

            /* renamed from: b */
            private final wn0 f32097b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32096a = this;
                this.f32097b = wn0Var;
            }

            @Override // com.google.android.gms.internal.ads.n20
            /* renamed from: a */
            public final void mo8404a(Object obj, Map map) {
                this.f32096a.m16567c(this.f32097b, (wn0) obj, map);
            }
        });
        this.f19997i.m15370i(wn0Var);
    }
}
