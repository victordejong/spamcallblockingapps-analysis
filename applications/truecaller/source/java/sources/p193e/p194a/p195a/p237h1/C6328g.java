package p193e.p194a.p195a.p237h1;

import javax.inject.Inject;
import p193e.p194a.p1128p4.AbstractC19215b;
import p193e.p194a.p1272u3.AbstractC20597i;
import p193e.p194a.p1272u3.C20592g;
import s1.i;
import s1.z.c.l;
/* renamed from: e.a.a.h1.g */
/* loaded from: classes11-dex2jar.jar:e/a/a/h1/g.class */
public final class C6328g {

    /* renamed from: a */
    public final C20592g f21149a;

    /* renamed from: b */
    public final AbstractC19215b f21150b;

    @Inject
    public C6328g(C20592g c20592g, AbstractC19215b abstractC19215b) {
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC19215b, "qaMenuSettings");
        this.f21149a = c20592g;
        this.f21150b = abstractC19215b;
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* renamed from: a */
    public long m31442a() {
        char c;
        boolean mo13839q1 = this.f21150b.mo13839q1();
        if (mo13839q1) {
            c = C6329h.f21152b;
        } else if (mo13839q1) {
            throw new i();
        } else {
            C20592g c20592g = this.f21149a;
            c = ((AbstractC20597i) c20592g.f57994o3.m10941a(c20592g, C20592g.f57695p6[223])).mo10939d(C6329h.f21151a);
        }
        return c;
    }
}
