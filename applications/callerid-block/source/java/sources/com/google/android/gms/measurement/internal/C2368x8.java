package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.q9;
/* renamed from: com.google.android.gms.measurement.internal.x8 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/x8.class */
final class C2368x8 {

    /* renamed from: a */
    protected long f10477a;

    /* renamed from: b */
    protected long f10478b;

    /* renamed from: c */
    private final AbstractC2288l f10479c;

    /* renamed from: d */
    final /* synthetic */ z8 f10480d;

    public C2368x8(z8 z8Var) {
        this.f10480d = z8Var;
        this.f10479c = new w8(this, ((m5) z8Var).a);
        long m8245c = ((m5) z8Var).a.v().m8245c();
        this.f10477a = m8245c;
        this.f10478b = m8245c;
    }

    /* renamed from: a */
    final void m3811a(long j) {
        this.f10480d.f();
        this.f10479c.m3881d();
        this.f10477a = j;
        this.f10478b = j;
    }

    /* renamed from: b */
    public final void m3810b(long j) {
        this.f10479c.m3881d();
    }

    /* renamed from: c */
    final void m3809c() {
        this.f10479c.m3881d();
        this.f10477a = 0L;
        this.f10478b = 0L;
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v57, types: [long] */
    /* renamed from: d */
    public final boolean m3808d(boolean z, boolean z2, long j) {
        this.f10480d.f();
        this.f10480d.h();
        q9.a();
        if (!((m5) this.f10480d).a.z().w((String) null, C2232c3.f10067o0) || ((m5) this.f10480d).a.i()) {
            ((m5) this.f10480d).a.A().o.m4025b(((m5) this.f10480d).a.v().m8247a());
        }
        char c = j - this.f10477a;
        if (!z && c < 1000) {
            ((m5) this.f10480d).a.t().w().m3875b("Screen exposed for less than 1000 ms. Event not sent. time", Long.valueOf(c));
            return false;
        }
        if (!z2) {
            c = j - this.f10478b;
            this.f10478b = j;
        }
        ((m5) this.f10480d).a.t().w().m3875b("Recording user engagement, ms", Long.valueOf(c));
        Bundle bundle = new Bundle();
        bundle.putLong("_et", c);
        k7.x(((m5) this.f10480d).a.Q().q(!((m5) this.f10480d).a.z().C()), bundle, true);
        e z3 = ((m5) this.f10480d).a.z();
        C2219a3<Boolean> c2219a3 = C2232c3.f10032U;
        if (!z3.w((String) null, c2219a3) && z2) {
            bundle.putLong("_fr", 1L);
        }
        if (!((m5) this.f10480d).a.z().w((String) null, c2219a3) || !z2) {
            ((m5) this.f10480d).a.F().X("auto", "_e", bundle);
        }
        this.f10477a = j;
        this.f10479c.m3881d();
        this.f10479c.m3883b(3600000L);
        return true;
    }
}
