package p193e.p194a.p1275v.p1276a.p1283c0;

import com.truecaller.data.entity.Contact;
import com.truecaller.premium.PremiumLaunchContext;
import javax.inject.Inject;
import p193e.p194a.p1011l.p1012a.AbstractC16596q;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p1275v.p1276a.p1295o0.AbstractC20807a;
import p193e.p194a.p1275v.p1276a.p1303z.C20879a;
import p193e.p194a.p1275v.p1309p.AbstractC20923d;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.v.a.c0.k */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/c0/k.class */
public final class C20713k extends AbstractC20576b<AbstractC20707e> implements AbstractC20706d {

    /* renamed from: b */
    public final C20879a f58316b;

    /* renamed from: c */
    public final AbstractC20923d f58317c;

    /* renamed from: d */
    public final AbstractC20807a f58318d;

    /* renamed from: e */
    public final AbstractC19223c0 f58319e;

    /* renamed from: f */
    public final AbstractC16596q f58320f;

    /* renamed from: e.a.v.a.c0.k$a */
    /* loaded from: classes8-dex2jar.jar:e/a/v/a/c0/k$a.class */
    public static final class C20714a extends m implements a<s> {

        /* renamed from: c */
        public final /* synthetic */ PremiumLaunchContext f58322c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20714a(PremiumLaunchContext premiumLaunchContext) {
            super(0);
            C20713k.this = r4;
            this.f58322c = premiumLaunchContext;
        }

        public Object invoke() {
            AbstractC20707e abstractC20707e = (AbstractC20707e) C20713k.this.f57683a;
            if (abstractC20707e != null) {
                abstractC20707e.mo10804W0(this.f58322c);
            }
            return s.a;
        }
    }

    @Inject
    public C20713k(C20879a c20879a, AbstractC20923d abstractC20923d, AbstractC20807a abstractC20807a, AbstractC19223c0 abstractC19223c0, AbstractC16596q abstractC16596q) {
        l.e(c20879a, "detailsViewAnalytics");
        l.e(abstractC20923d, "contactUtilHelper");
        l.e(abstractC20807a, "socialMediaHelper");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC16596q, "premiumContactFieldsHelper");
        this.f58316b = c20879a;
        this.f58317c = abstractC20923d;
        this.f58318d = abstractC20807a;
        this.f58319e = abstractC19223c0;
        this.f58320f = abstractC16596q;
    }

    /* renamed from: Hj */
    public final String m10813Hj(Contact contact) {
        String m35551P = contact.m35551P();
        return !(m35551P == null || m35551P.length() == 0) ? contact.m35551P() : this.f58318d.mo10481b(contact);
    }

    /* renamed from: Ij */
    public final a<s> m10812Ij(boolean z, PremiumLaunchContext premiumLaunchContext, a<s> aVar) {
        if (z) {
            aVar = new C20714a(premiumLaunchContext);
        }
        return aVar;
    }
}
