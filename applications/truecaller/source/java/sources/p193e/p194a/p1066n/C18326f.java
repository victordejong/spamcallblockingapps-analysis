package p193e.p194a.p1066n;

import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p678d4.AbstractC12597c;
import p193e.p194a.p678d4.AbstractC12603e;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.n.f */
/* loaded from: classes5-dex2jar.jar:e/a/n/f.class */
public final class C18326f implements AbstractC18320e {

    /* renamed from: a */
    public final g f51774a = C25225a.m3978P1(new C18327a());

    /* renamed from: b */
    public final C20592g f51775b;

    /* renamed from: c */
    public final AbstractC19230g f51776c;

    /* renamed from: d */
    public final AbstractC12597c f51777d;

    /* renamed from: e.a.n.f$a */
    /* loaded from: classes5-dex2jar.jar:e/a/n/f$a.class */
    public static final class C18327a extends m implements a<Boolean> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18327a() {
            super(0);
            C18326f.this = r4;
        }

        public Object invoke() {
            return Boolean.valueOf(C18326f.this.f51777d.mo22840d(AbstractC12603e.C12604a.f36737c));
        }
    }

    @Inject
    public C18326f(@Named("features_registry") C20592g c20592g, AbstractC19230g abstractC19230g, AbstractC12597c abstractC12597c) {
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC19230g, "deviceInfoUtil");
        l.e(abstractC12597c, "mobileServicesAvailabilityProvider");
        this.f51775b = c20592g;
        this.f51776c = abstractC19230g;
        this.f51777d = abstractC12597c;
    }

    @Override // p193e.p194a.p1066n.AbstractC18320e
    /* renamed from: a */
    public boolean mo15284a() {
        C20592g c20592g = this.f51775b;
        boolean z = true;
        if (!c20592g.f57958k.m10941a(c20592g, C20592g.f57695p6[7]).isEnabled() || !(!l.a(this.f51776c.mo13792e(), "kenzo")) || !((Boolean) this.f51774a.getValue()).booleanValue()) {
            z = false;
        }
        return z;
    }

    @Override // p193e.p194a.p1066n.AbstractC18320e
    /* renamed from: b */
    public boolean mo15283b() {
        boolean z;
        if (mo15284a()) {
            C20592g c20592g = this.f51775b;
            if (c20592g.f57966l.m10941a(c20592g, C20592g.f57695p6[8]).isEnabled()) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }
}
