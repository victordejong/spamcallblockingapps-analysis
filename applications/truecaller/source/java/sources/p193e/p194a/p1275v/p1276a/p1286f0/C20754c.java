package p193e.p194a.p1275v.p1276a.p1286f0;

import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p1272u3.AbstractC20597i;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1275v.p1276a.p1303z.C20879a;
import s1.g;
import s1.h;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.v.a.f0.c */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/f0/c.class */
public final class C20754c extends AbstractC20576b<AbstractC20753b> implements AbstractC20752a {

    /* renamed from: b */
    public final g f58387b;

    /* renamed from: c */
    public final C20879a f58388c;

    /* renamed from: e.a.v.a.f0.c$a */
    /* loaded from: classes8-dex2jar.jar:e/a/v/a/f0/c$a.class */
    public static final class C20755a extends m implements a<String> {

        /* renamed from: b */
        public final /* synthetic */ C20592g f58389b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20755a(C20592g c20592g) {
            super(0);
            this.f58389b = c20592g;
        }

        public Object invoke() {
            C20592g c20592g = this.f58389b;
            return ((AbstractC20597i) c20592g.f57947i4.m10941a(c20592g, C20592g.f57695p6[272])).mo10938g();
        }
    }

    @Inject
    public C20754c(C20592g c20592g, C20879a c20879a) {
        l.e(c20592g, "featuresRegistry");
        l.e(c20879a, "detailsViewAnalytics");
        this.f58388c = c20879a;
        this.f58387b = C25225a.m3982O1(h.c, new C20755a(c20592g));
    }
}
