package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Handler;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/tr1.class */
public final class tr1 {

    /* renamed from: d */
    private static tr1 f8713d;

    /* renamed from: a */
    private float f8714a = 0.0f;

    /* renamed from: b */
    private kr1 f8715b;

    /* renamed from: c */
    private mr1 f8716c;

    public tr1(lr1 lr1Var, jr1 jr1Var) {
    }

    /* renamed from: a */
    public static tr1 m5490a() {
        if (f8713d == null) {
            f8713d = new tr1(new lr1(), new jr1());
        }
        return f8713d;
    }

    /* renamed from: b */
    public final void m5489b(Context context) {
        this.f8715b = new kr1(new Handler(), context, new hr1(), this, null);
    }

    /* renamed from: c */
    public final void m5488c() {
        or1.m6266a().m6260g(this);
        or1.m6266a().m6264c();
        if (or1.m6266a().m6262e()) {
            qs1.b().c();
        }
        this.f8715b.m6769a();
    }

    /* renamed from: d */
    public final void m5487d() {
        qs1.b().d();
        or1.m6266a().m6263d();
        this.f8715b.m6768b();
    }

    /* renamed from: e */
    public final void m5486e(float f) {
        this.f8714a = f;
        if (this.f8716c == null) {
            this.f8716c = mr1.m6521a();
        }
        for (er1 er1Var : this.f8716c.m6516f()) {
            er1Var.h().m4536j(f);
        }
    }

    /* renamed from: f */
    public final float m5485f() {
        return this.f8714a;
    }
}
