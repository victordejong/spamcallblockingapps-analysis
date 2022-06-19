package p193e.p194a.p1011l.p1025p2;

import javax.inject.Inject;
import s1.z.c.l;
import w3.b.a.p;
/* renamed from: e.a.l.p2.f0 */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/f0.class */
public final class C17087f0 {

    /* renamed from: a */
    public final AbstractC17197v0 f47963a;

    /* renamed from: b */
    public final C17030a1 f47964b;

    @Inject
    public C17087f0(AbstractC17197v0 abstractC17197v0, C17030a1 c17030a1) {
        l.e(abstractC17197v0, "state");
        l.e(c17030a1, "subscriptionProblemHelper");
        this.f47963a = abstractC17197v0;
        this.f47964b = c17030a1;
    }

    /* renamed from: a */
    public final boolean m16547a() {
        boolean z;
        if (this.f47963a.mo16403R1()) {
            z = true;
            if (!m16543e(this.f47963a.mo16409G1())) {
                if (m16544d(this.f47963a.mo16409G1())) {
                    z = true;
                }
                z = false;
            }
        } else {
            if (!m16545c()) {
                z = true;
                if (!m16543e(this.f47963a.mo16391w0())) {
                    if (m16544d(this.f47963a.mo16391w0())) {
                        z = true;
                    }
                }
            }
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public final boolean m16546b() {
        return this.f47963a.mo16403R1() ? m16543e(this.f47963a.mo16409G1()) : m16545c() ? false : m16543e(this.f47963a.mo16391w0());
    }

    /* renamed from: c */
    public final boolean m16545c() {
        boolean z = true;
        if (this.f47963a.mo16404P() != 1 || this.f47964b.m16620c()) {
            z = false;
        }
        return z;
    }

    /* renamed from: d */
    public final boolean m16544d(long j) {
        return p.h().a(new p(j)) == 0;
    }

    /* renamed from: e */
    public final boolean m16543e(long j) {
        boolean z = true;
        if (p.h().i(1).a(new p(j)) != 0) {
            z = false;
        }
        return z;
    }
}
