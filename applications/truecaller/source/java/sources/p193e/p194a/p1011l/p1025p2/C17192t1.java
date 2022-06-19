package p193e.p194a.p1011l.p1025p2;

import javax.inject.Inject;
import p193e.p194a.p1011l.AbstractC16832c2;
import p193e.p194a.p1011l.AbstractC16965n0;
import p193e.p194a.p1272u3.AbstractC20597i;
import p193e.p194a.p1272u3.C20592g;
import s1.z.c.l;
import w3.b.a.b;
/* renamed from: e.a.l.p2.t1 */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/t1.class */
public final class C17192t1 {

    /* renamed from: a */
    public final AbstractC17197v0 f48231a;

    /* renamed from: b */
    public final AbstractC16832c2 f48232b;

    /* renamed from: c */
    public final C20592g f48233c;

    /* renamed from: d */
    public final AbstractC16965n0 f48234d;

    @Inject
    public C17192t1(AbstractC17197v0 abstractC17197v0, AbstractC16832c2 abstractC16832c2, C20592g c20592g, AbstractC16965n0 abstractC16965n0) {
        l.e(abstractC17197v0, "premiumStateSettings");
        l.e(abstractC16832c2, "premiumSettings");
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC16965n0, "premiumEventsLogger");
        this.f48231a = abstractC17197v0;
        this.f48232b = abstractC16832c2;
        this.f48233c = c20592g;
        this.f48234d = abstractC16965n0;
    }

    /* renamed from: a */
    public final boolean m16424a() {
        return !this.f48231a.mo16408H() && this.f48231a.mo16406M();
    }

    /* renamed from: b */
    public final boolean m16423b() {
        if (!m16424a() || this.f48231a.mo16405M2() == 0) {
            return true;
        }
        b bVar = new b(this.f48231a.mo16405M2());
        C20592g c20592g = this.f48233c;
        b J = bVar.J(((AbstractC20597i) c20592g.f57773L.m10941a(c20592g, C20592g.f57695p6[34])).getInt(10));
        l.d(J, "DateTime(premiumStateSet…ementWaitTime.getInt(10))");
        return J.j();
    }
}
