package p193e.p194a.p1011l.p1012a;

import javax.inject.Inject;
import p193e.p194a.p1011l.AbstractC16832c2;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1272u3.AbstractC20597i;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p613c0.C10912h;
import s1.z.c.l;
import w3.b.a.b;
/* renamed from: e.a.l.a.j0 */
/* loaded from: classes12-dex2jar.jar:e/a/l/a/j0.class */
public final class C16586j0 {

    /* renamed from: a */
    public final C20592g f46602a;

    /* renamed from: b */
    public final AbstractC17197v0 f46603b;

    /* renamed from: c */
    public final AbstractC16832c2 f46604c;

    /* renamed from: d */
    public final C10912h f46605d;

    @Inject
    public C16586j0(C20592g c20592g, AbstractC17197v0 abstractC17197v0, AbstractC16832c2 abstractC16832c2, C10912h c10912h) {
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC17197v0, "premiumStateSettings");
        l.e(abstractC16832c2, "premiumSettings");
        l.e(c10912h, "experimentRegistry");
        this.f46602a = c20592g;
        this.f46603b = abstractC17197v0;
        this.f46604c = abstractC16832c2;
        this.f46605d = c10912h;
    }

    /* renamed from: a */
    public final boolean m17222a() {
        boolean z;
        if (m17221b()) {
            b bVar = new b(this.f46604c.mo16905T0());
            C20592g c20592g = this.f46602a;
            if (bVar.D(((AbstractC20597i) c20592g.f58025s5.m10941a(c20592g, C20592g.f57695p6[336])).getInt(5)).i(new b())) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    /* renamed from: b */
    public final boolean m17221b() {
        boolean z;
        if (!this.f46603b.mo16408H()) {
            C20592g c20592g = this.f46602a;
            if (((AbstractC20597i) c20592g.f58018r5.m10941a(c20592g, C20592g.f57695p6[335])).isEnabled() && this.f46605d.f32402d.m25512g()) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }
}
