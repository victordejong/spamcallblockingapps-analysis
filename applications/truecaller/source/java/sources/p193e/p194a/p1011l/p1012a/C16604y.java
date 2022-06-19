package p193e.p194a.p1011l.p1012a;

import javax.inject.Inject;
import p193e.p194a.p1011l.p1032u2.AbstractC17248c;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p678d4.AbstractC12597c;
import p193e.p194a.p678d4.AbstractC12603e;
import s1.z.c.l;
/* renamed from: e.a.l.a.y */
/* loaded from: classes12-dex2jar.jar:e/a/l/a/y.class */
public final class C16604y implements AbstractC17248c {

    /* renamed from: a */
    public final AbstractC12597c f46637a;

    /* renamed from: b */
    public final C20592g f46638b;

    @Inject
    public C16604y(AbstractC12597c abstractC12597c, C20592g c20592g) {
        l.e(abstractC12597c, "mobileServicesAvailabilityProvider");
        l.e(c20592g, "featuresRegistry");
        this.f46637a = abstractC12597c;
        this.f46638b = c20592g;
    }

    @Override // p193e.p194a.p1011l.p1032u2.AbstractC17248c
    /* renamed from: a */
    public boolean mo16330a() {
        return this.f46637a.mo22840d(AbstractC12603e.C12604a.f36737c);
    }

    /* renamed from: b */
    public boolean m17198b() {
        boolean z;
        if (!this.f46637a.mo22840d(AbstractC12603e.C12604a.f36737c)) {
            C20592g c20592g = this.f46638b;
            if (!c20592g.f58061y.m10941a(c20592g, C20592g.f57695p6[21]).isEnabled()) {
                z = false;
                return z;
            }
        }
        z = true;
        return z;
    }
}
