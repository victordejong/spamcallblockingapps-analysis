package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.AbstractC5728q1;
import com.google.android.gms.common.util.AbstractC6227e;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/rf0.class */
public final class rf0 extends mg0 {

    /* renamed from: b */
    private final AbstractC6227e f28915b;

    /* renamed from: c */
    private final rf0 f28916c = this;

    /* renamed from: d */
    private final pj3<Context> f28917d;

    /* renamed from: e */
    private final pj3<AbstractC5728q1> f28918e;

    /* renamed from: f */
    private final pj3<lg0> f28919f;

    /* renamed from: g */
    private final pj3<if0> f28920g;

    /* renamed from: h */
    private final pj3<AbstractC6227e> f28921h;

    /* renamed from: i */
    private final pj3<lf0> f28922i;

    /* renamed from: j */
    private final pj3<nf0> f28923j;

    /* renamed from: k */
    private final pj3<rg0> f28924k;

    public /* synthetic */ rf0(Context context, AbstractC6227e abstractC6227e, AbstractC5728q1 abstractC5728q1, lg0 lg0Var, qf0 qf0Var) {
        this.f28915b = abstractC6227e;
        cj3 m15781a = dj3.m15781a(context);
        this.f28917d = m15781a;
        cj3 m15781a2 = dj3.m15781a(abstractC5728q1);
        this.f28918e = m15781a2;
        cj3 m15781a3 = dj3.m15781a(lg0Var);
        this.f28919f = m15781a3;
        this.f28920g = aj3.m16584a(new kf0(m15781a, m15781a2, m15781a3));
        cj3 m15781a4 = dj3.m15781a(abstractC6227e);
        this.f28921h = m15781a4;
        pj3<lf0> m16584a = aj3.m16584a(new mf0(m15781a4, m15781a2, m15781a3));
        this.f28922i = m16584a;
        of0 of0Var = new of0(m15781a4, m16584a);
        this.f28923j = of0Var;
        this.f28924k = aj3.m16584a(new sg0(m15781a, of0Var));
    }

    @Override // com.google.android.gms.internal.ads.mg0
    /* renamed from: a */
    final if0 mo11486a() {
        return this.f28920g.mo8141b();
    }

    @Override // com.google.android.gms.internal.ads.mg0
    /* renamed from: b */
    public final nf0 mo11485b() {
        return new nf0(this.f28915b, this.f28922i.mo8141b());
    }

    @Override // com.google.android.gms.internal.ads.mg0
    /* renamed from: c */
    final rg0 mo11484c() {
        return this.f28924k.mo8141b();
    }
}
