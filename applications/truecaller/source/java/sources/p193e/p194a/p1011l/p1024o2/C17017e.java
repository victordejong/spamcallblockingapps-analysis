package p193e.p194a.p1011l.p1024o2;

import com.truecaller.C2752R;
import com.truecaller.log.AssertionUtil;
import com.truecaller.premium.data.ProductKind;
import com.truecaller.premium.provider.Store;
import javax.inject.Inject;
import p193e.p194a.p1011l.AbstractC16832c2;
import p193e.p194a.p1011l.p1023n2.C16993f;
import p193e.p194a.p1011l.p1025p2.AbstractC17180s1;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1011l.p1032u2.AbstractC17246a;
import p193e.p194a.p1011l.p1033v2.p1037i.p1038a.C17280b;
import p193e.p194a.p1129p5.AbstractC19233h0;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.l.o2.e */
/* loaded from: classes12-dex2jar.jar:e/a/l/o2/e.class */
public final class C17017e {

    /* renamed from: a */
    public final AbstractC19233h0 f47749a;

    /* renamed from: b */
    public final AbstractC17197v0 f47750b;

    /* renamed from: c */
    public final AbstractC16832c2 f47751c;

    /* renamed from: d */
    public final AbstractC17246a f47752d;

    @Inject
    public C17017e(AbstractC19233h0 abstractC19233h0, AbstractC17197v0 abstractC17197v0, AbstractC16832c2 abstractC16832c2, AbstractC17246a abstractC17246a) {
        l.e(abstractC19233h0, "resourceProvider");
        l.e(abstractC17197v0, "premiumStateSettings");
        l.e(abstractC16832c2, "premiumSettings");
        l.e(abstractC17246a, "productStoreProvider");
        this.f47749a = abstractC19233h0;
        this.f47750b = abstractC17197v0;
        this.f47751c = abstractC16832c2;
        this.f47752d = abstractC17246a;
    }

    /* renamed from: a */
    public final void m16631a(AbstractC17020h abstractC17020h, C16993f c16993f, AbstractC17180s1.C17182b c17182b) {
        boolean z;
        l.e(c16993f, "purchaseCancelled");
        l.e(c17182b, "subscriptionResult");
        if (this.f47750b.mo16408H()) {
            return;
        }
        ProductKind productKind = c16993f.f47672k;
        if (productKind == ProductKind.SUBSCRIPTION_BASIC_MONTHLY) {
            return;
        }
        switch (productKind.ordinal()) {
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
                z = true;
                break;
            default:
                z = false;
                break;
        }
        if (z) {
            return;
        }
        if (c16993f.f47672k == ProductKind.SUBSCRIPTION_GOLD) {
            C16993f m16629c = m16629c(true, c16993f, c17182b);
            if (m16629c == null) {
                return;
            }
            m16630b(abstractC17020h, true, m16629c, c16993f);
        } else if (i.z0(new ProductKind[]{ProductKind.SUBSCRIPTION_YEARLY, ProductKind.SUBSCRIPTION_WELCOME_OFFER_YEARLY, ProductKind.SUBSCRIPTION_MONTHLY, ProductKind.SUBSCRIPTION_QUARTERLY, ProductKind.SUBSCRIPTION_HALFYEARLY}).contains(c16993f.f47672k)) {
            C16993f m16629c2 = m16629c(false, c16993f, c17182b);
            if (m16629c2 == null) {
                return;
            }
            m16630b(abstractC17020h, false, m16629c2, c16993f);
        } else {
            AssertionUtil.reportWeirdnessButNeverCrash(c16993f.f47672k + " is not handled in consumable purchase flow.");
        }
    }

    /* renamed from: b */
    public final void m16630b(AbstractC17020h abstractC17020h, boolean z, C16993f c16993f, C16993f c16993f2) {
        String str;
        String str2;
        this.f47751c.mo16915H0((c16993f2 == null || (str2 = c16993f2.f47667f) == null || str2.length() <= 0) ? false : true);
        String mo13768b = z ? this.f47749a.mo13768b(C2752R.string.GoldConsumablePromptText, new Object[0]) : this.f47749a.mo13768b(2131887218, new Object[0]);
        l.d(mo13768b, "if (isGold) {\n          …ablePromptText)\n        }");
        int mo13765e = z ? this.f47749a.mo13765e(C2752R.attr.tcx_consumablePurchaseGoldIcon) : this.f47749a.mo13765e(C2752R.attr.tcx_consumablePurchasePremiumIcon);
        if (abstractC17020h != null) {
            switch (c16993f.f47672k.ordinal()) {
                case 7:
                    str = this.f47749a.mo13768b(C2752R.string.PremiumYearlyOfferDuration, new Object[0]);
                    break;
                case 8:
                default:
                    str = this.f47749a.mo13768b(C2752R.string.PremiumYearlyOfferDuration, new Object[0]);
                    break;
                case 9:
                    str = this.f47749a.mo13768b(C2752R.string.PremiumMonthlyOfferDuration, new Object[0]);
                    break;
                case 10:
                    str = this.f47749a.mo13768b(C2752R.string.PremiumQuarterlyOfferDuration, new Object[0]);
                    break;
                case 11:
                    str = this.f47749a.mo13768b(C2752R.string.PremiumHalfYearlyOfferDuration, new Object[0]);
                    break;
            }
            l.d(str, "when (subscription.produ…yOfferDuration)\n        }");
            String mo13768b2 = this.f47749a.mo13768b(C2752R.string.PremiumConsumablePricingOverPeriod, str, c16993f.m16657b());
            l.d(mo13768b2, "resourceProvider.getStri…bscription.obtainPrice())");
            abstractC17020h.mo16626Qy(mo13768b, mo13765e, c16993f, new C17280b(mo13768b2, null, null, Integer.valueOf(z ? this.f47749a.mo13758l(2130970090) : this.f47749a.mo13769a(2131101221)), z ? null : 2131236711, z, null, null, 198));
        }
    }

    /* renamed from: c */
    public final C16993f m16629c(boolean z, C16993f c16993f, AbstractC17180s1.C17182b c17182b) {
        C16993f c16993f2;
        l.e(c16993f, "purchaseCancelled");
        l.e(c17182b, "subscriptionResult");
        if (this.f47752d.mo16331a() == Store.GOOGLE_PLAY) {
            l.e(c17182b, "subscriptionResult");
            return z ? c17182b.f48212l : c17182b.f48211k;
        }
        int ordinal = c16993f.f47672k.ordinal();
        if (ordinal == 1) {
            c16993f2 = c17182b.f48215o;
        } else if (ordinal == 2) {
            c16993f2 = c17182b.f48214n;
        } else if (ordinal == 3) {
            c16993f2 = c17182b.f48213m;
        } else if (ordinal == 4) {
            c16993f2 = c17182b.f48211k;
        } else if (ordinal != 6) {
            l.e(c17182b, "subscriptionResult");
            c16993f2 = z ? c17182b.f48212l : c17182b.f48211k;
        } else {
            c16993f2 = c17182b.f48212l;
        }
        return c16993f2;
    }
}
