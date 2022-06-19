package p193e.p194a.p1011l.p1012a;

import com.truecaller.premium.data.ProductKind;
import com.truecaller.premium.util.PremiumProStatus;
import javax.inject.Inject;
import p193e.p194a.p1011l.AbstractC16832c2;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import s1.z.c.l;
/* renamed from: e.a.l.a.v */
/* loaded from: classes12-dex2jar.jar:e/a/l/a/v.class */
public final class C16601v {

    /* renamed from: a */
    public final AbstractC17197v0 f46633a;

    /* renamed from: b */
    public final AbstractC16832c2 f46634b;

    @Inject
    public C16601v(AbstractC17197v0 abstractC17197v0, AbstractC16832c2 abstractC16832c2) {
        l.e(abstractC17197v0, "premiumStateSettings");
        l.e(abstractC16832c2, "premiumSettings");
        this.f46633a = abstractC17197v0;
        this.f46634b = abstractC16832c2;
    }

    /* renamed from: a */
    public String m17200a() {
        AbstractC17197v0 abstractC17197v0 = this.f46633a;
        return l.a(abstractC17197v0.mo16411D2(), "gold") ? PremiumProStatus.GOLD.name() : (abstractC17197v0.mo16408H() || !this.f46634b.mo16876t1()) ? (abstractC17197v0.mo16408H() || !this.f46634b.mo16898Z()) ? (!abstractC17197v0.mo16408H() || abstractC17197v0.mo16407H2() != ProductKind.CONSUMABLE_YEARLY) ? (!abstractC17197v0.mo16408H() || abstractC17197v0.mo16407H2() != ProductKind.SUBSCRIPTION_MONTHLY) ? (!abstractC17197v0.mo16408H() || abstractC17197v0.mo16407H2() != ProductKind.SUBSCRIPTION_BASIC_MONTHLY) ? (!abstractC17197v0.mo16408H() || abstractC17197v0.mo16407H2() != ProductKind.SUBSCRIPTION_QUARTERLY) ? (!abstractC17197v0.mo16408H() || abstractC17197v0.mo16407H2() != ProductKind.SUBSCRIPTION_HALFYEARLY) ? (!abstractC17197v0.mo16408H() || abstractC17197v0.mo16407H2() != ProductKind.SUBSCRIPTION_YEARLY) ? abstractC17197v0.mo16408H() ? PremiumProStatus.PREMIUM_UNKNOWN.name() : PremiumProStatus.NONE.name() : PremiumProStatus.PREMIUM_YEARLY.name() : PremiumProStatus.PREMIUM_HALF_YEARLY.name() : PremiumProStatus.PREMIUM_QUARTERLY.name() : PremiumProStatus.PREMIUM_BASIC_MONTHLY.name() : PremiumProStatus.PREMIUM_MONTHLY.name() : PremiumProStatus.PREMIUM_CONSUMABLE.name() : PremiumProStatus.GOLD_CHURNED.name() : PremiumProStatus.CHURNED.name();
    }
}
