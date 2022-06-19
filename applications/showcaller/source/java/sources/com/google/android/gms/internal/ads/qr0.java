package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/qr0.class */
public final class qr0 implements bp1 {

    /* renamed from: a */
    private final Context f28610a;

    /* renamed from: b */
    private final h30 f28611b;

    /* renamed from: c */
    private final fs0 f28612c;

    /* renamed from: d */
    private final qr0 f28613d = this;

    /* renamed from: e */
    private final pj3<bp1> f28614e;

    /* renamed from: f */
    private final pj3<h30> f28615f;

    /* renamed from: g */
    private final pj3<wo1> f28616g;

    /* renamed from: h */
    private final pj3<yo1> f28617h;

    public /* synthetic */ qr0(fs0 fs0Var, Context context, h30 h30Var, wr0 wr0Var) {
        this.f28612c = fs0Var;
        this.f28610a = context;
        this.f28611b = h30Var;
        cj3 m15781a = dj3.m15781a(this);
        this.f28614e = m15781a;
        cj3 m15781a2 = dj3.m15781a(h30Var);
        this.f28615f = m15781a2;
        xo1 xo1Var = new xo1(m15781a2);
        this.f28616g = xo1Var;
        this.f28617h = aj3.m16584a(new zo1(m15781a, xo1Var));
    }

    @Override // com.google.android.gms.internal.ads.bp1
    /* renamed from: c */
    public final yo1 mo11819c() {
        return this.f28617h.mo8141b();
    }

    @Override // com.google.android.gms.internal.ads.bp1
    /* renamed from: e */
    public final so1 mo11818e() {
        return new nr0(this.f28612c, this.f28613d, null);
    }
}
