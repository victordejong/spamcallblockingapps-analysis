package p193e.p194a.p195a.p258m.p264g3;

import android.app.PendingIntent;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p195a.p258m.C6931o2;
import p193e.p194a.p678d4.AbstractC12597c;
import p193e.p194a.p678d4.AbstractC12603e;
import s1.g;
import s1.u.i;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.a.m.g3.f */
/* loaded from: classes7-dex2jar.jar:e/a/a/m/g3/f.class */
public final class C6879f {

    /* renamed from: a */
    public final g f22464a = C25225a.m3978P1(new C6880a());

    /* renamed from: b */
    public final C6931o2 f22465b;

    /* renamed from: c */
    public final AbstractC12597c f22466c;

    /* renamed from: e.a.a.m.g3.f$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/m/g3/f$a.class */
    public static final class C6880a extends m implements a<AbstractC12603e> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6880a() {
            super(0);
            C6879f.this = r4;
        }

        public Object invoke() {
            return (AbstractC12603e) i.C(C6879f.this.f22466c.mo22839e());
        }
    }

    @Inject
    public C6879f(C6931o2 c6931o2, AbstractC12597c abstractC12597c) {
        l.e(c6931o2, "unimportantPromoManager");
        l.e(abstractC12597c, "mobileServicesAvailabilityProvider");
        this.f22465b = c6931o2;
        this.f22466c = abstractC12597c;
    }

    /* renamed from: a */
    public final PendingIntent m30408a() {
        PendingIntent pendingIntent;
        AbstractC12603e abstractC12603e = (AbstractC12603e) this.f22464a.getValue();
        if (abstractC12603e == null) {
            pendingIntent = null;
        } else {
            AbstractC12597c abstractC12597c = this.f22466c;
            pendingIntent = abstractC12597c.mo22843a(abstractC12603e, abstractC12597c.mo22842b(abstractC12603e), 0);
        }
        return pendingIntent;
    }
}
