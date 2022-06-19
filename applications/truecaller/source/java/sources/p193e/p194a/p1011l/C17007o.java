package p193e.p194a.p1011l;

import com.truecaller.premium.data.ProductKind;
import javax.inject.Inject;
import p193e.p194a.p1011l.p1023n2.C16993f;
import p193e.p194a.p1146q2.p1151d1.AbstractC19494d;
import s1.z.c.l;
/* renamed from: e.a.l.o */
/* loaded from: classes12-dex2jar.jar:e/a/l/o.class */
public final class C17007o implements AbstractC16965n0 {

    /* renamed from: a */
    public final String f47705a = "PremiumPurchasedMonthly";

    /* renamed from: b */
    public final String f47706b = "PremiumPurchasedQuarterly";

    /* renamed from: c */
    public final String f47707c = "PremiumPurchasedHalfYearly";

    /* renamed from: d */
    public final String f47708d = "PremiumPurchasedYearly";

    /* renamed from: e */
    public final String f47709e = "PremiumPurchasedGold";

    /* renamed from: f */
    public final AbstractC19494d f47710f;

    @Inject
    public C17007o(AbstractC19494d abstractC19494d) {
        l.e(abstractC19494d, "fireBaseLogger");
        this.f47710f = abstractC19494d;
    }

    @Override // p193e.p194a.p1011l.AbstractC16965n0
    /* renamed from: a */
    public void mo16647a(C16956m0 c16956m0) {
        l.e(c16956m0, "params");
        l.e(c16956m0, "params");
    }

    @Override // p193e.p194a.p1011l.AbstractC16965n0
    /* renamed from: b */
    public void mo16646b(C16956m0 c16956m0) {
        l.e(c16956m0, "params");
        l.e(c16956m0, "params");
    }

    @Override // p193e.p194a.p1011l.AbstractC16965n0
    /* renamed from: c */
    public void mo16645c(C16993f c16993f) {
        l.e(c16993f, "subscription");
        l.e(c16993f, "subscription");
    }

    @Override // p193e.p194a.p1011l.AbstractC16965n0
    /* renamed from: d */
    public void mo16644d(C16956m0 c16956m0) {
        ProductKind productKind;
        l.e(c16956m0, "params");
        C16993f c16993f = c16956m0.f47563d;
        ProductKind productKind2 = c16993f != null ? c16993f.f47672k : null;
        if (productKind2 != null) {
            switch (productKind2.ordinal()) {
                case 1:
                    this.f47710f.mo13282c(this.f47705a);
                    break;
                case 2:
                    this.f47710f.mo13282c(this.f47706b);
                    break;
                case 3:
                    this.f47710f.mo13282c(this.f47707c);
                    break;
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                    this.f47710f.mo13282c(this.f47708d);
                    break;
            }
        }
        C16993f c16993f2 = c16956m0.f47563d;
        if (c16993f2 == null || (productKind = c16993f2.f47672k) == null) {
            return;
        }
        ProductKind productKind3 = null;
        if (productKind == ProductKind.SUBSCRIPTION_GOLD) {
            productKind3 = productKind;
        }
        if (productKind3 == null) {
            return;
        }
        this.f47710f.mo13282c(this.f47709e);
    }
}
