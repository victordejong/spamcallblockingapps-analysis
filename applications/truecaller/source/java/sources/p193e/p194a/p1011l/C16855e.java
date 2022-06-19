package p193e.p194a.p1011l;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.C2752R;
import com.truecaller.premium.PremiumLaunchContext;
import com.truecaller.premium.data.PremiumType;
import com.truecaller.premium.data.ProductKind;
import com.truecaller.premium.data.SubscriptionPromoEventMetaData;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1011l.p1012a.AbstractC16567c0;
import p193e.p194a.p1011l.p1012a.C16588k0;
import p193e.p194a.p1011l.p1012a.C16590l0;
import p193e.p194a.p1011l.p1012a.C16593n;
import p193e.p194a.p1011l.p1012a.C16595p;
import p193e.p194a.p1011l.p1022m2.C16961c;
import p193e.p194a.p1011l.p1023n2.C16993f;
import p193e.p194a.p1011l.p1024o2.C17013c;
import p193e.p194a.p1011l.p1024o2.C17017e;
import p193e.p194a.p1011l.p1025p2.AbstractC17050d1;
import p193e.p194a.p1011l.p1025p2.AbstractC17168r0;
import p193e.p194a.p1011l.p1025p2.AbstractC17180s1;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1011l.p1025p2.C17030a1;
import p193e.p194a.p1011l.p1025p2.C17098h1;
import p193e.p194a.p1011l.p1025p2.C17118j1;
import p193e.p194a.p1011l.p1025p2.C17162q0;
import p193e.p194a.p1011l.p1025p2.C17192t1;
import p193e.p194a.p1011l.p1025p2.C17206y;
import p193e.p194a.p1011l.p1032u2.AbstractC17246a;
import p193e.p194a.p1011l.p1033v2.p1037i.p1038a.C17280b;
import p193e.p194a.p1011l.p1033v2.p1037i.p1038a.C17281c;
import p193e.p194a.p1011l.p1033v2.p1037i.p1038a.C17282d;
import p193e.p194a.p1011l.p1033v2.p1037i.p1038a.C17284f;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1410z4.AbstractC21881d;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p613c0.C10912h;
import s1.i;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.z.c.l;
/* renamed from: e.a.l.e */
/* loaded from: classes12-dex2jar.jar:e/a/l/e.class */
public final class C16855e extends AbstractC16856e0<AbstractC17307z1> implements AbstractC17304y1 {

    /* renamed from: W */
    public C17098h1 f47257W;

    /* renamed from: X */
    public PremiumType f47258X;

    /* renamed from: Y */
    public boolean f47259Y;

    /* renamed from: Z */
    public C17282d f47260Z = new C17282d(null, null, false, null, null, 0, 63);

    /* renamed from: g0 */
    public C17282d f47261g0 = new C17282d(null, null, false, null, null, 0, 63);

    /* renamed from: h0 */
    public AbstractC17180s1.C17182b f47262h0;

    /* renamed from: i0 */
    public final PremiumLaunchContext f47263i0;

    /* renamed from: j0 */
    public final String f47264j0;

    /* renamed from: k0 */
    public final AbstractC17197v0 f47265k0;

    /* renamed from: l0 */
    public final AbstractC17050d1 f47266l0;

    /* renamed from: m0 */
    public final C16961c f47267m0;

    /* renamed from: n0 */
    public final AbstractC16951l1 f47268n0;

    /* renamed from: o0 */
    public final C17281c f47269o0;

    /* renamed from: p0 */
    public final C17284f f47270p0;

    /* renamed from: q0 */
    public final C16588k0 f47271q0;

    /* renamed from: r0 */
    public final C16593n f47272r0;

    /* renamed from: s0 */
    public final f f47273s0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C16855e(@Named("HiltPremiumFragmentParamsModule.LAUNCH_CONTEXT") PremiumLaunchContext premiumLaunchContext, @Named("HiltPremiumFragmentParamsModule.SUBSCRIPTION_PROMO_EVENT_METADATA") SubscriptionPromoEventMetaData subscriptionPromoEventMetaData, @Named("HiltPremiumFragmentParamsModule.SELECTED_PAGE") String str, AbstractC17168r0 abstractC17168r0, AbstractC17197v0 abstractC17197v0, C17030a1 c17030a1, AbstractC21881d abstractC21881d, AbstractC8541a abstractC8541a, AbstractC19462a abstractC19462a, @Named("global_subscription_helper") AbstractC17050d1 abstractC17050d1, AbstractC19233h0 abstractC19233h0, AbstractC16965n0 abstractC16965n0, C17017e c17017e, C17013c c17013c, C17162q0 c17162q0, AbstractC16567c0 abstractC16567c0, C16595p c16595p, C16961c c16961c, AbstractC16951l1 abstractC16951l1, C17281c c17281c, C17284f c17284f, C16588k0 c16588k0, C16590l0 c16590l0, C17206y c17206y, AbstractC17246a abstractC17246a, C17192t1 c17192t1, C17009o1 c17009o1, C16593n c16593n, AbstractC16832c2 abstractC16832c2, C10912h c10912h, C20592g c20592g, @Named("UI") f fVar) {
        super(premiumLaunchContext, subscriptionPromoEventMetaData, str, abstractC17168r0, abstractC17197v0, c17030a1, c17206y, abstractC17246a, c17192t1, abstractC21881d, abstractC8541a, abstractC19462a, abstractC17050d1, abstractC19233h0, abstractC16965n0, c17017e, c17013c, c17162q0, c17009o1, abstractC16832c2, abstractC16567c0, c16595p, c20592g, c10912h, c17281c, c17284f, c16588k0, c16590l0, fVar);
        l.e(premiumLaunchContext, "launchContext");
        l.e(abstractC17168r0, "repository");
        l.e(abstractC17197v0, "premiumStateSettings");
        l.e(c17030a1, "premiumSubscriptionProblemHelper");
        l.e(abstractC21881d, "generalSettings");
        l.e(abstractC8541a, "coreSettings");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC17050d1, "premiumSubscriptionsHelper");
        l.e(abstractC19233h0, "resourceProvider");
        l.e(abstractC16965n0, "premiumEventsLogger");
        l.e(c17017e, "consumablePurchasePresenter");
        l.e(c17013c, "consumablePurchaseLostNotifier");
        l.e(c17162q0, "premiumPurchaseHelper");
        l.e(abstractC16567c0, "premiumTabDeeplinkHelper");
        l.e(c16595p, "premiumBottomBarAttentionHelper");
        l.e(c16961c, "basicSubscriptionPurchasePresenter");
        l.e(abstractC16951l1, "premiumGrantedHelper");
        l.e(c17281c, "subscriptionButtonBuildHelper");
        l.e(c17284f, "subscriptionButtonGroupBuildHelper");
        l.e(c16588k0, "threeButtonPremiumLayoutUtils");
        l.e(c16590l0, "welcomeOfferUtils");
        l.e(c17206y, "premiumAlertFactory");
        l.e(abstractC17246a, "productStoreProvider");
        l.e(c17192t1, "webBillingPurchaseStateManager");
        l.e(c17009o1, "premiumLogsSender");
        l.e(c16593n, "onBoardingPremiumPopupNewUsersAbTestHelper");
        l.e(abstractC16832c2, "premiumSettings");
        l.e(c10912h, "experimentRegistry");
        l.e(c20592g, "featureRegistry");
        l.e(fVar, "ui");
        this.f47263i0 = premiumLaunchContext;
        this.f47264j0 = str;
        this.f47265k0 = abstractC17197v0;
        this.f47266l0 = abstractC17050d1;
        this.f47267m0 = c16961c;
        this.f47268n0 = abstractC16951l1;
        this.f47269o0 = c17281c;
        this.f47270p0 = c17284f;
        this.f47271q0 = c16588k0;
        this.f47272r0 = c16593n;
        this.f47273s0 = fVar;
    }

    @Override // p193e.p194a.p1011l.AbstractC16935h2
    /* renamed from: Ab */
    public C17098h1 mo16750Ab() {
        C17098h1 c17098h1 = this.f47257W;
        if (c17098h1 != null) {
            if (c17098h1 != null) {
                return c17098h1;
            }
            l.l("theme");
            throw null;
        }
        return null;
    }

    @Override // p193e.p194a.p1011l.AbstractC17304y1
    /* renamed from: R2 */
    public void mo16268R2(PremiumType premiumType) {
        l.e(premiumType, "premiumType");
        AbstractC17307z1 abstractC17307z1 = (AbstractC17307z1) this.f57683a;
        if (abstractC17307z1 != null) {
            this.f47258X = premiumType;
            int ordinal = premiumType.ordinal();
            if (ordinal == 0) {
                abstractC17307z1.mo16260nn(this.f47260Z, C2752R.layout.subscription_buttons_premium_screen_horizontal, this.f47259Y);
            } else if (ordinal != 1) {
            } else {
                abstractC17307z1.mo16260nn(this.f47261g0, C2752R.layout.subscription_buttons_premium_screen_horizontal, false);
            }
        }
    }

    @Override // p193e.p194a.p1011l.AbstractC17213q0
    /* renamed from: Te */
    public void mo16367Te(PremiumType premiumType, int i) {
        l.e(premiumType, "type");
        AbstractC17307z1 abstractC17307z1 = (AbstractC17307z1) this.f57683a;
        if (abstractC17307z1 != null) {
            abstractC17307z1.mo16259qp(premiumType, i, true);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:157:0x04d4, code lost:
        if (r14.length() == 0) goto L158;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x02a6, code lost:
        r0 = r13.f47264j0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x02ac, code lost:
        if (r0 == null) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x02b6, code lost:
        if (w3.c.a.a.a.h.b(r0, "gold") == false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x02b9, code lost:
        r15 = com.truecaller.premium.data.PremiumType.GOLD;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x02c0, code lost:
        r15 = com.truecaller.premium.data.PremiumType.PREMIUM;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x02c7, code lost:
        r15 = com.truecaller.premium.data.PremiumType.PREMIUM;
     */
    @Override // p193e.p194a.p1011l.AbstractC16856e0
    /* renamed from: Tj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo16851Tj(p193e.p194a.p1011l.p1025p2.AbstractC17180s1.C17182b r14, s1.w.d<? super s1.s> r15) {
        /*
            Method dump skipped, instructions count: 1299
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.C16855e.mo16851Tj(e.a.l.p2.s1$b, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p1011l.AbstractC16940i2
    /* renamed from: V9 */
    public C17118j1 mo16746V9(PremiumType premiumType) {
        C17118j1 c17118j1;
        l.e(premiumType, "premiumType");
        if (this.f47257W == null) {
            return null;
        }
        int ordinal = premiumType.ordinal();
        if (ordinal == 0) {
            C17098h1 c17098h1 = this.f47257W;
            if (c17098h1 == null) {
                l.l("theme");
                throw null;
            }
            c17118j1 = c17098h1.f47997a;
            if (c17118j1 == null) {
                throw new IllegalStateException("Premium part cannot be null");
            }
        } else if (ordinal != 1) {
            throw new i();
        } else {
            C17098h1 c17098h12 = this.f47257W;
            if (c17098h12 == null) {
                l.l("theme");
                throw null;
            }
            c17118j1 = c17098h12.f47998b;
            if (c17118j1 == null) {
                throw new IllegalStateException("Gold part cannot be null");
            }
        }
        return c17118j1;
    }

    @Override // p193e.p194a.p1011l.AbstractC16856e0
    /* renamed from: Vj */
    public Object mo16849Vj(AbstractC17180s1.C17186f c17186f, d<? super s> dVar) {
        a aVar = s.a;
        this.f47260Z = new C17282d(null, null, false, null, null, 0, 63);
        this.f47261g0 = new C17282d(null, null, false, null, null, 0, 63);
        this.f47257W = c17186f.f48225a;
        PremiumType premiumType = PremiumType.PREMIUM;
        this.f47258X = premiumType;
        AbstractC17307z1 abstractC17307z1 = (AbstractC17307z1) this.f57683a;
        a aVar2 = null;
        if (abstractC17307z1 != null) {
            if (premiumType == null) {
                l.l("selectedType");
                throw null;
            }
            abstractC17307z1.mo16262kA(premiumType);
            aVar2 = aVar;
        }
        return aVar2 == a.a ? aVar2 : aVar;
    }

    @Override // p193e.p194a.p1011l.AbstractC16856e0
    /* renamed from: Wj */
    public void mo16848Wj(ProductKind productKind) {
        this.f47268n0.mo16732a(this.f47263i0);
        super.mo16848Wj(productKind);
    }

    @Override // p193e.p194a.p1011l.p1022m2.AbstractC16960b
    /* renamed from: Yg */
    public void mo16728Yg(C16993f c16993f) {
        l.e(c16993f, "subscription");
        AbstractC17307z1 abstractC17307z1 = (AbstractC17307z1) this.f57683a;
        if (abstractC17307z1 != null) {
            abstractC17307z1.mo16726wv();
        }
        m16846Yj(c16993f, null);
    }

    /* renamed from: dk */
    public final void m16869dk(C16993f c16993f, PremiumLaunchContext premiumLaunchContext) {
        AbstractC17307z1 abstractC17307z1 = (AbstractC17307z1) this.f57683a;
        if (abstractC17307z1 != null) {
            C16961c c16961c = this.f47267m0;
            Objects.requireNonNull(c16961c);
            l.e(c16993f, "monthlyBasicSubscription");
            l.e(premiumLaunchContext, "launchContext");
            if (c16961c.f47582b.mo16408H() || !s1.u.i.z0(new PremiumLaunchContext[]{PremiumLaunchContext.DETAIL_VIEW_ADS_CLOSE, PremiumLaunchContext.AFTER_CALL_ADS_CLOSE, PremiumLaunchContext.MEGA_ADS_CLOSE, PremiumLaunchContext.OTHER_SUBSCRIPTIONS_LINK}).contains(premiumLaunchContext)) {
                return;
            }
            String mo13768b = c16961c.f47581a.mo13768b(C2752R.string.PremiumBasicPlanTitle, new Object[0]);
            l.d(mo13768b, "resourceProvider.getStri…ng.PremiumBasicPlanTitle)");
            int mo13765e = c16961c.f47581a.mo13765e(C2752R.attr.tcx_noAdsPremiumDetailsIcon);
            String mo13768b2 = c16961c.f47581a.mo13768b(C2752R.string.PremiumMonthlySubscription, c16993f.m16657b());
            l.d(mo13768b2, "resourceProvider.getStri…bscription.obtainPrice())");
            abstractC17307z1.mo16727S7(mo13768b, mo13765e, c16993f, new C17280b(mo13768b2, null, null, Integer.valueOf(c16961c.f47581a.mo13769a(2131101221)), 2131236711, false, null, null, 230));
        }
    }

    @Override // p193e.p194a.p1011l.AbstractC16944j2
    /* renamed from: id */
    public boolean mo16741id() {
        return this.f47259Y;
    }

    @Override // p193e.p194a.p1011l.AbstractC16943j1
    /* renamed from: n7 */
    public AbstractC17180s1.C17182b mo16742n7() {
        return this.f47262h0;
    }

    @Override // p193e.p194a.p1011l.AbstractC17304y1
    /* renamed from: n9 */
    public void mo16267n9() {
        C16993f c16993f;
        AbstractC17180s1.C17182b c17182b = this.f47292d;
        if (c17182b == null || (c16993f = c17182b.f48205e) == null) {
            return;
        }
        m16869dk(c16993f, PremiumLaunchContext.OTHER_SUBSCRIPTIONS_LINK);
    }

    @Override // p193e.p194a.p1011l.AbstractC17304y1
    /* renamed from: qh */
    public void mo16266qh() {
        AbstractC17307z1 abstractC17307z1 = (AbstractC17307z1) this.f57683a;
        if (abstractC17307z1 != null) {
            abstractC17307z1.finish();
        }
    }
}
