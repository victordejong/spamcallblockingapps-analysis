package p193e.p194a.p195a.p258m.p267j3;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.C2752R;
import com.truecaller.premium.promotion.PremiumHomeTabPromo;
import java.util.HashMap;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p194a.p1011l.AbstractC16832c2;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19502g;
import p193e.p194a.p195a.p258m.AbstractC6798d1;
import p193e.p194a.p195a.p258m.AbstractC6894i2;
import p193e.p194a.p195a.p258m.AbstractC6900j2;
import p193e.p194a.p195a.p258m.AbstractC6933p0;
import p193e.p194a.p195a.p258m.AbstractC6954t1;
import s1.z.c.l;
import w3.b.a.b;
import w3.b.a.e0.e;
/* renamed from: e.a.a.m.j3.b */
/* loaded from: classes7-dex2jar.jar:e/a/a/m/j3/b.class */
public final class C6902b extends AbstractC6894i2<AbstractC6954t1> implements AbstractC6933p0 {

    /* renamed from: c */
    public boolean f22494c;

    /* renamed from: d */
    public PremiumHomeTabPromo.C4352a f22495d;

    /* renamed from: e */
    public final AbstractC19223c0 f22496e;

    /* renamed from: f */
    public final AbstractC6954t1.AbstractC6955a f22497f;

    /* renamed from: g */
    public final PremiumHomeTabPromo f22498g;

    /* renamed from: h */
    public final AbstractC19462a f22499h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C6902b(AbstractC6900j2 abstractC6900j2, AbstractC19223c0 abstractC19223c0, AbstractC6954t1.AbstractC6955a abstractC6955a, PremiumHomeTabPromo premiumHomeTabPromo, AbstractC19462a abstractC19462a) {
        super(abstractC6900j2);
        l.e(abstractC6900j2, "promoProvider");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC6955a, "actionListener");
        l.e(premiumHomeTabPromo, "premiumHomeTabPromo");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f22496e = abstractC19223c0;
        this.f22497f = abstractC6955a;
        this.f22498g = premiumHomeTabPromo;
        this.f22499h = abstractC19462a;
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6894i2
    /* renamed from: A */
    public boolean mo30360A(AbstractC6798d1 abstractC6798d1) {
        boolean z;
        if (abstractC6798d1 instanceof AbstractC6798d1.C6822r) {
            PremiumHomeTabPromo.C4352a c4352a = ((AbstractC6798d1.C6822r) abstractC6798d1).f22369b;
            z = true;
            if (!l.a(c4352a, this.f22495d)) {
                this.f22495d = c4352a;
                this.f22494c = false;
                z = true;
            }
        } else {
            z = false;
        }
        return z;
    }

    /* renamed from: B */
    public final void m30396B(PremiumHomeTabPromo.C4352a c4352a, String str) {
        AbstractC19462a abstractC19462a = this.f22499h;
        HashMap hashMap = new HashMap();
        hashMap.put("Context", "HomeTab");
        hashMap.put("Type", c4352a.m34814b().getValue());
        hashMap.put("Action", str);
        AbstractC19502g.C19504b.C19505a c19505a = new AbstractC19502g.C19504b.C19505a("PromoView", null, hashMap, null);
        l.d(c19505a, "AnalyticsEvent.Builder(A…\n                .build()");
        abstractC19462a.mo13271e(c19505a);
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(Object obj, int i) {
        AbstractC6954t1 abstractC6954t1 = (AbstractC6954t1) obj;
        l.e(abstractC6954t1, "itemView");
        PremiumHomeTabPromo.C4352a c4352a = this.f22495d;
        if (c4352a != null) {
            int ordinal = c4352a.m34814b().ordinal();
            if (ordinal == 0) {
                String mo13768b = this.f22496e.mo13768b(C2752R.string.PremiumHomeTabPromoGenericTitle, new Object[0]);
                l.d(mo13768b, "resourceProvider.getStri…HomeTabPromoGenericTitle)");
                abstractC6954t1.setTitle(mo13768b);
                String mo13768b2 = this.f22496e.mo13768b(C2752R.string.PremiumHomeTabPromoGenericSubTitle, new Object[0]);
                l.d(mo13768b2, "resourceProvider.getStri…eTabPromoGenericSubTitle)");
                abstractC6954t1.mo30346k(mo13768b2);
                abstractC6954t1.mo30348H3(C2752R.C2753drawable.ic_premium_home_tab_promo_generic);
            } else if (ordinal == 1) {
                String mo13768b3 = this.f22496e.mo13768b(C2752R.string.PremiumHomeTabPromoCampaignTitle, new Object[0]);
                l.d(mo13768b3, "resourceProvider.getStri…omeTabPromoCampaignTitle)");
                abstractC6954t1.setTitle(mo13768b3);
                String mo13768b4 = this.f22496e.mo13768b(C2752R.string.PremiumHomeTabPromoCampaignSubTitle, new Object[0]);
                l.d(mo13768b4, "resourceProvider.getStri…TabPromoCampaignSubTitle)");
                abstractC6954t1.mo30346k(mo13768b4);
                abstractC6954t1.mo30347I3(c4352a.m34813c(), C2752R.C2753drawable.ic_premium_home_tab_promo_campaign);
            }
            if (this.f22494c) {
                return;
            }
            m30396B(c4352a, "Shown");
            this.f22494c = true;
        }
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        l.e(c18900h, "event");
        PremiumHomeTabPromo.C4352a c4352a = this.f22495d;
        if (c4352a != null) {
            PremiumHomeTabPromo premiumHomeTabPromo = this.f22498g;
            Objects.requireNonNull(premiumHomeTabPromo);
            l.e(c4352a, "promo");
            int ordinal = c4352a.m34814b().ordinal();
            if (ordinal == 0) {
                AbstractC16832c2 abstractC16832c2 = premiumHomeTabPromo.f14257e;
                b bVar = new b();
                l.d(bVar, "DateTime.now()");
                abstractC16832c2.mo16912L2(((e) bVar).a);
                AbstractC16832c2 abstractC16832c22 = premiumHomeTabPromo.f14257e;
                abstractC16832c22.mo16895b0(abstractC16832c22.mo16877t0() + 1);
            } else if (ordinal == 1) {
                AbstractC16832c2 abstractC16832c23 = premiumHomeTabPromo.f14257e;
                b bVar2 = new b();
                l.d(bVar2, "DateTime.now()");
                abstractC16832c23.mo16889c2(((e) bVar2).a);
                AbstractC16832c2 abstractC16832c24 = premiumHomeTabPromo.f14257e;
                abstractC16832c24.mo16897a0(abstractC16832c24.mo16914I1() + 1);
            }
            String str = c18900h.f53001a;
            int hashCode = str.hashCode();
            if (hashCode == -1842775196) {
                if (!str.equals("ItemEvent.ACTION_OPEN_PREMIUM")) {
                    return false;
                }
                m30396B(c4352a, "Clicked");
                this.f22497f.mo30355n8(c4352a.m34815a());
                return true;
            } else if (hashCode != -489774080 || !str.equals("ItemEvent.ACTION_DISMISS_PREMIUM")) {
                return false;
            } else {
                m30396B(c4352a, "Dismissed");
                this.f22497f.mo30356Nd();
                return true;
            }
        }
        return false;
    }
}
