package p193e.p194a.p1011l;

import com.mopub.mobileads.resource.DrawableConstants;
import com.truecaller.C2752R;
import com.truecaller.data.entity.Contact;
import com.truecaller.log.AssertionUtil;
import com.truecaller.premium.PremiumLaunchContext;
import com.truecaller.premium.data.PremiumType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.p1020g.C16913t;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1011l.p1025p2.C17098h1;
import p193e.p194a.p1011l.p1025p2.C17107j;
import p193e.p194a.p1011l.p1025p2.C17119k;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import q3.a.i0;
import q3.a.j0;
import q3.a.n0;
import s1.a.a.a.v0.f.d;
import s1.s;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.l.f1 */
/* loaded from: classes12-dex2jar.jar:e/a/l/f1.class */
public final class C16877f1 extends AbstractC20574a<AbstractC16930g1> implements AbstractC16868e1 {

    /* renamed from: e */
    public PremiumType f47392e;

    /* renamed from: i */
    public final PremiumType f47396i;

    /* renamed from: j */
    public final PremiumLaunchContext f47397j;

    /* renamed from: k */
    public final AbstractC16935h2 f47398k;

    /* renamed from: l */
    public final C17119k f47399l;

    /* renamed from: m */
    public final AbstractC17197v0 f47400m;

    /* renamed from: n */
    public final C16913t f47401n;

    /* renamed from: o */
    public final f f47402o;

    /* renamed from: p */
    public final AbstractC16944j2 f47403p;

    /* renamed from: q */
    public final AbstractC16943j1 f47404q;

    /* renamed from: d */
    public final ArrayList<C17228s1> f47391d = new ArrayList<>();

    /* renamed from: f */
    public final n0<List<Contact>> f47393f = d.G(this, getCoroutineContext(), j0.b, new C16878a(null));

    /* renamed from: g */
    public final C17228s1 f47394g = new C17228s1(PremiumType.PREMIUM, C2752R.string.PremiumTabPremium, C2752R.C2753drawable.ic_tcx_premium_tab_normal, C2752R.C2753drawable.ic_tcx_premium_tab_selected, 2130970017, 2130970017);

    /* renamed from: h */
    public final C17228s1 f47395h = new C17228s1(PremiumType.GOLD, C2752R.string.PremiumTabGold, C2752R.C2753drawable.ic_tcx_premium_tab_normal, C2752R.C2753drawable.ic_tcx_premium_tab_selected, C2752R.attr.tcx_premiumGoldTabIconColor, C2752R.attr.tcx_premiumGoldTabSelectedIconColor);

    @e(c = "com.truecaller.premium.PremiumFeaturesPresenterImpl$friendsUpgradedContactList$1", f = "PremiumFeaturesPresenter.kt", l = {56}, m = "invokeSuspend")
    /* renamed from: e.a.l.f1$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/f1$a.class */
    public static final class C16878a extends i implements p<i0, s1.w.d<? super List<? extends Contact>>, Object> {

        /* renamed from: e */
        public int f47405e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16878a(s1.w.d dVar) {
            super(2, dVar);
            C16877f1.this = r5;
        }

        /* renamed from: i */
        public final s1.w.d<s> m16813i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C16878a(dVar);
        }

        /* renamed from: k */
        public final Object m16812k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            return new C16878a(dVar).m16811s(s.a);
        }

        /* renamed from: s */
        public final Object m16811s(Object obj) {
            a aVar = a.a;
            int i = this.f47405e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C17119k c17119k = C16877f1.this.f47399l;
                this.f47405e = 1;
                Object a4 = d.a4(c17119k.f48055d, new C17107j(c17119k, null), this);
                obj = a4;
                if (a4 == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    @e(c = "com.truecaller.premium.PremiumFeaturesPresenterImpl$mayBeShowSocialProofPromoView$1", f = "PremiumFeaturesPresenter.kt", l = {DrawableConstants.CtaButton.WIDTH_DIPS}, m = "invokeSuspend")
    /* renamed from: e.a.l.f1$b */
    /* loaded from: classes12-dex2jar.jar:e/a/l/f1$b.class */
    public static final class C16879b extends i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: e */
        public Object f47407e;

        /* renamed from: f */
        public int f47408f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16879b(s1.w.d dVar) {
            super(2, dVar);
            C16877f1.this = r5;
        }

        /* renamed from: i */
        public final s1.w.d<s> m16810i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C16879b(dVar);
        }

        /* renamed from: k */
        public final Object m16809k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            return new C16879b(dVar).m16808s(s.a);
        }

        /* renamed from: s */
        public final Object m16808s(Object obj) {
            AbstractC16930g1 abstractC16930g1;
            a aVar = a.a;
            int i = this.f47408f;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C16877f1 c16877f1 = C16877f1.this;
                abstractC16930g1 = (AbstractC16930g1) c16877f1.f57683a;
                if (abstractC16930g1 != null) {
                    n0<List<Contact>> n0Var = c16877f1.f47393f;
                    this.f47407e = abstractC16930g1;
                    this.f47408f = 1;
                    obj = n0Var.s(this);
                    if (obj == aVar) {
                        return aVar;
                    }
                }
                return s.a;
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                abstractC16930g1 = (AbstractC16930g1) this.f47407e;
                C25225a.m3932a3(obj);
            }
            abstractC16930g1.mo16760Q2((List) obj, C16877f1.this.f47399l.f48054c.mo16884i1());
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C16877f1(PremiumType premiumType, @Named("HiltPremiumFragmentParamsModule.LAUNCH_CONTEXT") PremiumLaunchContext premiumLaunchContext, AbstractC16935h2 abstractC16935h2, C17119k c17119k, AbstractC17197v0 abstractC17197v0, C16913t c16913t, @Named("UI") f fVar, AbstractC16944j2 abstractC16944j2, AbstractC16943j1 abstractC16943j1) {
        super(fVar);
        l.e(premiumType, "selectedType");
        l.e(premiumLaunchContext, "launchContext");
        l.e(abstractC16935h2, "premiumThemeModel");
        l.e(c17119k, "friendUpgradedPromoRepository");
        l.e(abstractC17197v0, "premiumStateSettings");
        l.e(c16913t, "goldGiftPromoUtil");
        l.e(fVar, "ui");
        l.e(abstractC16944j2, "threeButtonLayoutModel");
        l.e(abstractC16943j1, "premiumFetchedSubscriptionDataModel");
        this.f47396i = premiumType;
        this.f47397j = premiumLaunchContext;
        this.f47398k = abstractC16935h2;
        this.f47399l = c17119k;
        this.f47400m = abstractC17197v0;
        this.f47401n = c16913t;
        this.f47402o = fVar;
        this.f47403p = abstractC16944j2;
        this.f47404q = abstractC16943j1;
    }

    /* renamed from: Ij */
    public final void m16815Ij() {
        if (!this.f47400m.mo16408H()) {
            d.w2(this, (f) null, (j0) null, new C16879b(null), 3, (Object) null);
            return;
        }
        AbstractC16930g1 abstractC16930g1 = (AbstractC16930g1) this.f57683a;
        if (abstractC16930g1 == null) {
            return;
        }
        abstractC16930g1.mo16759Re();
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0091  */
    /* renamed from: Jj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m16814Jj(int r6) {
        /*
            Method dump skipped, instructions count: 310
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.C16877f1.m16814Jj(int):void");
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, e.a.l.g1, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC16930g1 abstractC16930g1) {
        AbstractC16930g1 abstractC16930g12 = abstractC16930g1;
        l.e(abstractC16930g12, "presenterView");
        this.f57683a = abstractC16930g12;
        C17098h1 mo16750Ab = this.f47398k.mo16750Ab();
        if (mo16750Ab != null) {
            if (mo16750Ab.f47997a != null) {
                this.f47391d.add(this.f47394g);
            }
            if (mo16750Ab.f47998b != null) {
                this.f47391d.add(this.f47395h);
            }
            abstractC16930g12.mo16758Sz(this.f47391d);
            boolean z = false;
            if (this.f47391d.size() > 1) {
                abstractC16930g12.mo16755fe();
                Iterator<C17228s1> it = this.f47391d.iterator();
                int i = 0;
                while (true) {
                    if (!it.hasNext()) {
                        i = -1;
                        break;
                    }
                    if (it.next().f48350a == this.f47396i) {
                        break;
                    }
                    i++;
                }
                abstractC16930g12.mo16761Kj(i);
                m16814Jj(i);
            } else if (this.f47391d.size() == 1) {
                abstractC16930g12.mo16761Kj(0);
                m16814Jj(0);
            } else {
                AssertionUtil.reportWeirdnessButNeverCrash("No gold or premium part in the theme!");
            }
            PremiumLaunchContext premiumLaunchContext = this.f47397j;
            if (premiumLaunchContext != PremiumLaunchContext.BOTTOM_BAR && premiumLaunchContext != PremiumLaunchContext.BOTTOM_BAR_TAB_V2) {
                return;
            }
            if (this.f47391d.size() == 1) {
                z = true;
            }
            abstractC16930g12.mo16753hn(z);
        }
    }
}
