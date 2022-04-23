package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.internal.C1379b;
import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ro0.class */
public final class ro0 {

    /* renamed from: a */
    private final q70 f8375a;

    /* renamed from: b */
    private final y80 f8376b;

    /* renamed from: c */
    private final l90 f8377c;

    /* renamed from: d */
    private final x90 f8378d;

    /* renamed from: e */
    private final fc0 f8379e;

    /* renamed from: f */
    private final Executor f8380f;

    /* renamed from: g */
    private final pe0 f8381g;

    /* renamed from: h */
    private final b00 f8382h;

    /* renamed from: i */
    private final C1379b f8383i;

    /* renamed from: j */
    private final AbstractC1960tl f8384j;

    /* renamed from: k */
    private final zh2 f8385k;

    /* renamed from: l */
    private final wb0 f8386l;

    /* renamed from: m */
    private final jz0 f8387m;

    /* renamed from: n */
    private final tq1 f8388n;

    /* renamed from: o */
    private final jr0 f8389o;

    /* renamed from: p */
    private final aq1 f8390p;

    public ro0(q70 q70Var, y80 y80Var, l90 l90Var, x90 x90Var, fc0 fc0Var, Executor executor, pe0 pe0Var, b00 b00Var, C1379b bVar, AbstractC1960tl tlVar, zh2 zh2Var, wb0 wb0Var, jz0 jz0Var, tq1 tq1Var, jr0 jr0Var, aq1 aq1Var) {
        this.f8375a = q70Var;
        this.f8376b = y80Var;
        this.f8377c = l90Var;
        this.f8378d = x90Var;
        this.f8379e = fc0Var;
        this.f8380f = executor;
        this.f8381g = pe0Var;
        this.f8382h = b00Var;
        this.f8383i = bVar;
        this.f8384j = tlVar;
        this.f8385k = zh2Var;
        this.f8386l = wb0Var;
        this.f8387m = jz0Var;
        this.f8388n = tq1Var;
        this.f8389o = jr0Var;
        this.f8390p = aq1Var;
    }

    /* renamed from: j */
    public static final rz1<?> m5882j(jt jtVar, String str, String str2) {
        fp fpVar = new fp();
        jtVar.b1().k0(new po0(fpVar));
        jtVar.W0(str, str2, (String) null);
        return fpVar;
    }

    /* renamed from: a */
    final /* synthetic */ void m5891a(jt jtVar, jt jtVar2, Map map) {
        this.f8382h.c(jtVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final /* synthetic */ void m5890b(View view) {
        this.f8383i.m8956a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final /* synthetic */ boolean m5889c(View view, MotionEvent motionEvent) {
        this.f8383i.m8956a();
        return false;
    }

    /* renamed from: d */
    final /* synthetic */ void m5888d() {
        this.f8376b.H0();
    }

    /* renamed from: e */
    final /* synthetic */ void m5887e(String str, String str2) {
        this.f8379e.k(str, str2);
    }

    /* renamed from: f */
    final /* synthetic */ void m5886f() {
        this.f8375a.F();
    }

    /* renamed from: i */
    public final void m5883i(jt jtVar, boolean z, C1815k9 k9Var) {
        xf2 b;
        jtVar.b1().V0(new io0(this), this.f8377c, this.f8378d, new jo0(this), new ko0(this), z, k9Var, this.f8383i, new qo0(this), this.f8384j, this.f8387m, this.f8388n, this.f8389o, this.f8390p, (i9) null);
        jtVar.setOnTouchListener(new View.OnTouchListener(this) { // from class: com.google.android.gms.internal.ads.lo0

            /* renamed from: b */
            private final ro0 f7133b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7133b = this;
            }

            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                this.f7133b.m5889c(view, motionEvent);
                return false;
            }
        });
        jtVar.setOnClickListener(new View.OnClickListener(this) { // from class: com.google.android.gms.internal.ads.mo0

            /* renamed from: b */
            private final ro0 f7601b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7601b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f7601b.m5890b(view);
            }
        });
        if (((Boolean) C1674c.m7906c().m6878b(C1842m3.f7526w1)).booleanValue() && (b = this.f8385k.m4633b()) != null) {
            b.m4904f((View) jtVar);
        }
        this.f8381g.m5530t0(jtVar, this.f8380f);
        this.f8381g.m5530t0(new no0(jtVar), this.f8380f);
        this.f8381g.H0((View) jtVar);
        jtVar.T0("/trackActiveViewUnit", new oo0(this, jtVar));
        this.f8382h.d(jtVar);
    }
}
