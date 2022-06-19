package p1727n3.p1909z;

import p1727n3.p1909z.AbstractC27597r0;
import s1.z.c.l;
/* renamed from: n3.z.x0 */
/* loaded from: classes-dex2jar.jar:n3/z/x0.class */
public final class C27611x0 {

    /* renamed from: a */
    public AbstractC27597r0 f77829a;

    /* renamed from: b */
    public AbstractC27597r0 f77830b;

    /* renamed from: c */
    public AbstractC27597r0 f77831c;

    /* renamed from: d */
    public C27600s0 f77832d = C27600s0.f77789d;

    /* renamed from: e */
    public C27600s0 f77833e;

    public C27611x0() {
        AbstractC27597r0.c cVar = AbstractC27597r0.c.c;
        this.f77829a = cVar;
        this.f77830b = cVar;
        this.f77831c = cVar;
        C27600s0 c27600s0 = C27600s0.f77790e;
    }

    /* renamed from: a */
    public final AbstractC27597r0 m17a(AbstractC27597r0 abstractC27597r0, AbstractC27597r0 abstractC27597r02, AbstractC27597r0 abstractC27597r03, AbstractC27597r0 abstractC27597r04) {
        if (abstractC27597r04 == null) {
            return abstractC27597r03;
        }
        if (!(abstractC27597r0 instanceof AbstractC27597r0.b) || (((abstractC27597r02 instanceof AbstractC27597r0.c) && (abstractC27597r04 instanceof AbstractC27597r0.c)) || (abstractC27597r04 instanceof AbstractC27597r0.a))) {
            abstractC27597r0 = abstractC27597r04;
        }
        return abstractC27597r0;
    }

    /* renamed from: b */
    public final AbstractC27597r0 m16b(EnumC27601t0 enumC27601t0, boolean z) {
        l.e(enumC27601t0, "type");
        C27600s0 c27600s0 = z ? this.f77833e : this.f77832d;
        return c27600s0 != null ? c27600s0.m29b(enumC27601t0) : null;
    }

    /* renamed from: c */
    public final void m15c(C27591q c27591q) {
        l.e(c27591q, "combinedLoadStates");
        this.f77829a = c27591q.f77764a;
        this.f77830b = c27591q.f77765b;
        this.f77831c = c27591q.f77766c;
        this.f77832d = c27591q.f77767d;
        this.f77833e = c27591q.f77768e;
    }

    /* renamed from: d */
    public final boolean m14d(EnumC27601t0 enumC27601t0, boolean z, AbstractC27597r0 abstractC27597r0) {
        boolean z2;
        C27600s0 c27600s0;
        l.e(enumC27601t0, "type");
        l.e(abstractC27597r0, "state");
        if (z) {
            C27600s0 c27600s02 = this.f77833e;
            if (c27600s02 != null) {
                c27600s0 = c27600s02;
            } else {
                C27600s0 c27600s03 = C27600s0.f77790e;
                c27600s0 = C27600s0.f77789d;
            }
            C27600s0 m28c = c27600s0.m28c(enumC27601t0, abstractC27597r0);
            this.f77833e = m28c;
            z2 = l.a(m28c, c27600s02);
        } else {
            C27600s0 c27600s04 = this.f77832d;
            C27600s0 m28c2 = c27600s04.m28c(enumC27601t0, abstractC27597r0);
            this.f77832d = m28c2;
            z2 = l.a(m28c2, c27600s04);
        }
        m12f();
        return !z2;
    }

    /* renamed from: e */
    public final C27591q m13e() {
        return new C27591q(this.f77829a, this.f77830b, this.f77831c, this.f77832d, this.f77833e);
    }

    /* renamed from: f */
    public final void m12f() {
        AbstractC27597r0 abstractC27597r0 = this.f77829a;
        AbstractC27597r0 abstractC27597r02 = this.f77832d.f77791a;
        C27600s0 c27600s0 = this.f77833e;
        this.f77829a = m17a(abstractC27597r0, abstractC27597r02, abstractC27597r02, c27600s0 != null ? c27600s0.f77791a : null);
        AbstractC27597r0 abstractC27597r03 = this.f77830b;
        C27600s0 c27600s02 = this.f77832d;
        AbstractC27597r0 abstractC27597r04 = c27600s02.f77791a;
        AbstractC27597r0 abstractC27597r05 = c27600s02.f77792b;
        C27600s0 c27600s03 = this.f77833e;
        this.f77830b = m17a(abstractC27597r03, abstractC27597r04, abstractC27597r05, c27600s03 != null ? c27600s03.f77792b : null);
        AbstractC27597r0 abstractC27597r06 = this.f77831c;
        C27600s0 c27600s04 = this.f77832d;
        AbstractC27597r0 abstractC27597r07 = c27600s04.f77791a;
        AbstractC27597r0 abstractC27597r08 = c27600s04.f77793c;
        C27600s0 c27600s05 = this.f77833e;
        AbstractC27597r0 abstractC27597r09 = null;
        if (c27600s05 != null) {
            abstractC27597r09 = c27600s05.f77793c;
        }
        this.f77831c = m17a(abstractC27597r06, abstractC27597r07, abstractC27597r08, abstractC27597r09);
    }
}
