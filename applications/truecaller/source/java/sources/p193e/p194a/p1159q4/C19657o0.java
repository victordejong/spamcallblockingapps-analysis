package p193e.p194a.p1159q4;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.AsyncTask;
import com.facebook.applinks.C1105b;
import com.facebook.applinks.RunnableC1104a;
import com.facebook.internal.C1168q0;
import com.facebook.internal.C1172r0;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.firebase.dynamiclinks.internal.DynamicLinkData;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.data.entity.Contact;
import com.truecaller.log.AssertionUtil;
import com.truecaller.referral.BulkSmsView;
import com.truecaller.referral.ReferralManager;
import com.truecaller.referral.ReferralUrl;
import com.truecaller.referrals.data.entities.RedeemCodeResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import o3.a;
import p1727n3.p1788g.C26174a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1538j.C23228f0;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1077n4.AbstractC18484a;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1114o5.AbstractC19078p;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1159q4.AsyncTaskC19632e0;
import p193e.p194a.p1187r2.AbstractC19844a;
import p193e.p194a.p1187r2.AbstractC19851d0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19868j;
import p193e.p194a.p1193r5.AbstractC19954i0;
import p193e.p194a.p1220s4.AbstractC20235a;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p1272u3.AbstractC20597i;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1334w.p1336b.AbstractC21179b;
import p193e.p194a.p1334w.p1336b.AsyncTaskC21177a;
import p193e.p194a.p1334w.p1336b.p1337c.C21180a;
import p193e.p194a.p1334w.p1339c.C21185a;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import w3.b.a.b;
import w3.c.a.a.a.h;
/* renamed from: e.a.q4.o0 */
/* loaded from: classes12-dex2jar.jar:e/a/q4/o0.class */
public class C19657o0 extends AbstractC20576b<AbstractC19653m0> implements ReferralManager, AsyncTaskC21177a.AbstractC21178a, AsyncTaskC19632e0.AbstractC19633a {

    /* renamed from: b */
    public String f54585b;

    /* renamed from: c */
    public AbstractC19844a f54586c;

    /* renamed from: d */
    public final AbstractC21179b f54587d;

    /* renamed from: e */
    public final AbstractC8541a f54588e;

    /* renamed from: f */
    public final C19661p0 f54589f;

    /* renamed from: g */
    public final AbstractC19223c0 f54590g;

    /* renamed from: h */
    public final AbstractC18484a f54591h;

    /* renamed from: i */
    public final a<AbstractC17197v0> f54592i;

    /* renamed from: j */
    public final a<AbstractC19854f<AbstractC19643h0>> f54593j;

    /* renamed from: k */
    public final a<AbstractC19954i0> f54594k;

    /* renamed from: l */
    public final AbstractC20235a f54595l;

    /* renamed from: m */
    public final AbstractC19868j f54596m;

    /* renamed from: n */
    public final AbstractC19647j0 f54597n;

    /* renamed from: o */
    public final C21185a f54598o;

    /* renamed from: p */
    public final AbstractC19022f0 f54599p;

    /* renamed from: q */
    public final C20592g f54600q;

    /* renamed from: r */
    public EnumC19659b f54601r;

    /* renamed from: s */
    public ReferralManager.ReferralLaunchContext f54602s;

    /* renamed from: t */
    public Contact f54603t;

    /* renamed from: u */
    public final HashMap<ReferralManager.ReferralLaunchContext, String> f54604u;

    /* renamed from: v */
    public final HashMap<ReferralManager.RedeemCodeContext, String> f54605v;

    /* renamed from: e.a.q4.o0$a */
    /* loaded from: classes12-dex2jar.jar:e/a/q4/o0$a.class */
    public class C19658a implements AsyncTaskC21177a.AbstractC21178a {
        public C19658a() {
            C19657o0.this = r4;
        }

        @Override // p193e.p194a.p1334w.p1336b.AsyncTaskC21177a.AbstractC21178a
        /* renamed from: af */
        public void mo10166af() {
        }

        @Override // p193e.p194a.p1334w.p1336b.AsyncTaskC21177a.AbstractC21178a
        /* renamed from: e4 */
        public void mo10165e4(C21180a c21180a) {
            C19657o0.this.m13056Qj();
        }
    }

    /* renamed from: e.a.q4.o0$b */
    /* loaded from: classes12-dex2jar.jar:e/a/q4/o0$b.class */
    public enum EnumC19659b {
        REFERRAL,
        SINGLE_INVITE
    }

    public C19657o0(AbstractC21179b abstractC21179b, AbstractC8541a abstractC8541a, C19661p0 c19661p0, AbstractC19223c0 abstractC19223c0, C21185a c21185a, AbstractC19022f0 abstractC19022f0, C20592g c20592g, a<AbstractC17197v0> aVar, a<AbstractC19854f<AbstractC19643h0>> aVar2, AbstractC18484a abstractC18484a, a<AbstractC19954i0> aVar3, AbstractC20235a abstractC20235a, AbstractC19868j abstractC19868j, AbstractC19647j0 abstractC19647j0) {
        ReferralManager.ReferralLaunchContext.values();
        HashMap<ReferralManager.ReferralLaunchContext, String> hashMap = new HashMap<>(16);
        this.f54604u = hashMap;
        hashMap.put(ReferralManager.ReferralLaunchContext.NAVIGATION_DRAWER, "featureReferralNavigationDrawer");
        hashMap.put(ReferralManager.ReferralLaunchContext.CONTACT_DETAILS, "featureContactDetail");
        hashMap.put(ReferralManager.ReferralLaunchContext.AFTER_CALL, "featureAftercall");
        hashMap.put(ReferralManager.ReferralLaunchContext.AFTER_CALL_SAVE_CONTACT, "featureAftercallSaveContact");
        hashMap.put(ReferralManager.ReferralLaunchContext.PUSH_NOTIFICATION, "featurePushNotification");
        hashMap.put(ReferralManager.ReferralLaunchContext.DEEP_LINK, "featureLaunchReferralFromDeeplink");
        hashMap.put(ReferralManager.ReferralLaunchContext.AFTER_CALL_PROMO, "featureReferralAfterCallPromo");
        hashMap.put(ReferralManager.ReferralLaunchContext.SEARCH_SCREEN_PROMO, "featureSearchScreenPromo");
        hashMap.put(ReferralManager.ReferralLaunchContext.BOTTOM_BAR, "featureReferralBottomBar");
        hashMap.put(ReferralManager.ReferralLaunchContext.PROMO_POPUP, "featureReferralPromoPopup");
        hashMap.put(ReferralManager.ReferralLaunchContext.PREMIUM_TAB_V2, "featureReferralPremiumTabV2");
        ReferralManager.RedeemCodeContext.values();
        HashMap<ReferralManager.RedeemCodeContext, String> hashMap2 = new HashMap<>(1);
        this.f54605v = hashMap2;
        hashMap2.put(ReferralManager.RedeemCodeContext.GO_PRO, "featureGoPro");
        this.f54587d = abstractC21179b;
        this.f54588e = abstractC8541a;
        this.f54589f = c19661p0;
        this.f54590g = abstractC19223c0;
        this.f54598o = c21185a;
        this.f54599p = abstractC19022f0;
        this.f54600q = c20592g;
        this.f54593j = aVar2;
        this.f54592i = aVar;
        this.f54591h = abstractC18484a;
        this.f54594k = aVar3;
        this.f54595l = abstractC20235a;
        this.f54596m = abstractC19868j;
        this.f54597n = abstractC19647j0;
    }

    @Override // p193e.p194a.p1159q4.AsyncTaskC19632e0.AbstractC19633a
    /* renamed from: Bd */
    public void mo13071Bd(RedeemCodeResponse redeemCodeResponse) {
        PV pv = this.f57683a;
        if (pv == 0) {
            return;
        }
        ((AbstractC19653m0) pv).mo13076Xg();
        ((AbstractC19653m0) this.f57683a).mo13080Pv();
        ((AbstractC19653m0) this.f57683a).mo13079V9(this.f54590g.mo13768b(C2752R.string.referral_redeem_success_message, Integer.valueOf(redeemCodeResponse.f14474d), this.f54590g.mo13759k(C2752R.plurals.referral_days_of_premium, redeemCodeResponse.f14474d, new Object[0])), ReferralManager.ReferralLaunchContext.PUSH_NOTIFICATION);
    }

    @Override // com.truecaller.referral.ReferralManager
    /* renamed from: Ef */
    public boolean mo13070Ef(ReferralManager.ReferralLaunchContext referralLaunchContext) {
        return m13068Ij(referralLaunchContext);
    }

    /* renamed from: Hj */
    public void m13069Hj(Context context) {
        if (m13058Oj()) {
            return;
        }
        C19661p0 c19661p0 = this.f54589f;
        final AbstractC19078p abstractC19078p = new AbstractC19078p() { // from class: e.a.q4.j
            @Override // p193e.p194a.p1114o5.AbstractC19078p
            public final void onResult(Object obj) {
                C19657o0 c19657o0 = C19657o0.this;
                String str = (String) obj;
                Objects.requireNonNull(c19657o0);
                if (!h.j(str)) {
                    c19657o0.m13055Rj(str);
                }
            }
        };
        Objects.requireNonNull(c19661p0);
        C1105b.AbstractC1106a abstractC1106a = new C1105b.AbstractC1106a() { // from class: e.a.q4.n
            @Override // com.facebook.applinks.C1105b.AbstractC1106a
            /* renamed from: a */
            public final void mo13072a(C1105b c1105b) {
                AbstractC19078p abstractC19078p2 = AbstractC19078p.this;
                if (c1105b == null) {
                    return;
                }
                String str = c1105b.f3043d;
                if (h.j(str)) {
                    return;
                }
                abstractC19078p2.onResult(str);
            }
        };
        String str = C1105b.f3039e;
        C1172r0.m41651d(context, AnalyticsConstants.CONTEXT);
        C1172r0.m41651d(abstractC1106a, "completionHandler");
        String m41665r = C1168q0.m41665r(context);
        C1172r0.m41651d(m41665r, "applicationId");
        C23228f0.m7350e().execute(new RunnableC1104a(context.getApplicationContext(), m41665r, abstractC1106a));
    }

    /* renamed from: Ij */
    public final boolean m13068Ij(ReferralManager.ReferralLaunchContext referralLaunchContext) {
        String str = this.f54604u.get(referralLaunchContext);
        boolean z = true;
        AssertionUtil.isNotNull(str, C22128a.m8543z2("No feature flag defined for ReferralLaunchContext: ", str));
        if (!this.f54599p.mo14245a() || !this.f54587d.getBoolean(str) || ((AbstractC17197v0) this.f54592i.get()).mo16408H()) {
            z = false;
        }
        boolean z2 = z;
        if (referralLaunchContext == ReferralManager.ReferralLaunchContext.AFTER_CALL_PROMO) {
            b bVar = new b(Math.max(this.f54587d.getLong("referralAfterCallPromoLastShown", 0L), this.f54587d.getLong("GOOGLE_REVIEW_ASK_TIMESTAMP", 0L)));
            TimeUnit timeUnit = TimeUnit.DAYS;
            C20592g c20592g = this.f54600q;
            z2 = z & bVar.C(timeUnit.toMillis(((AbstractC20597i) c20592g.f57838U1.m10941a(c20592g, C20592g.f57695p6[150])).getInt(5))).j();
        }
        boolean z3 = z2;
        if (referralLaunchContext != ReferralManager.ReferralLaunchContext.PUSH_NOTIFICATION) {
            z3 = z2;
            if (referralLaunchContext != ReferralManager.ReferralLaunchContext.HOME_SCREEN) {
                z3 = z2;
                if (referralLaunchContext != ReferralManager.ReferralLaunchContext.NAVIGATION_DRAWER) {
                    z3 = z2;
                    if (referralLaunchContext != ReferralManager.ReferralLaunchContext.PROMO_POPUP) {
                        z3 = z2;
                        if (referralLaunchContext != ReferralManager.ReferralLaunchContext.DEEP_LINK) {
                            z3 = z2;
                            if (referralLaunchContext != ReferralManager.ReferralLaunchContext.PREMIUM_TAB_V2) {
                                z3 = z2;
                                if (referralLaunchContext != ReferralManager.ReferralLaunchContext.SEARCH_SCREEN_PROMO) {
                                    z3 = z2 & new b(this.f54591h.getLong("KeyCallLogPromoDisabledUntil", 0L)).j();
                                }
                            }
                        }
                    }
                }
            }
        }
        return z3;
    }

    @Override // com.truecaller.referral.ReferralManager
    /* renamed from: Is */
    public void mo13067Is(Uri uri) {
        if (m13058Oj()) {
            return;
        }
        if (uri != null) {
            String m13066Jj = m13066Jj(uri);
            if (h.j(m13066Jj) || !m13055Rj(m13066Jj)) {
                return;
            }
            m13057Pj(uri);
            return;
        }
        PV pv = this.f57683a;
        if (pv == 0) {
            return;
        }
        C19661p0 c19661p0 = this.f54589f;
        Activity mo13077Wk = ((AbstractC19653m0) pv).mo13077Wk();
        final AbstractC19078p abstractC19078p = new AbstractC19078p() { // from class: e.a.q4.k
            @Override // p193e.p194a.p1114o5.AbstractC19078p
            public final void onResult(Object obj) {
                C19657o0 c19657o0 = C19657o0.this;
                Uri uri2 = (Uri) obj;
                String m13066Jj2 = c19657o0.m13066Jj(uri2);
                if (h.j(m13066Jj2) || !c19657o0.m13055Rj(m13066Jj2)) {
                    return;
                }
                c19657o0.m13057Pj(uri2);
            }
        };
        Objects.requireNonNull(c19661p0);
        try {
            e.m.d.p.a.b().a(mo13077Wk.getIntent()).m38531g(mo13077Wk, new OnSuccessListener() { // from class: e.a.q4.m
                @Override // com.google.android.gms.tasks.OnSuccessListener
                public final void onSuccess(Object obj) {
                    String str;
                    AbstractC19078p abstractC19078p2 = AbstractC19078p.this;
                    e.m.d.p.b bVar = (e.m.d.p.b) obj;
                    if (bVar == null) {
                        return;
                    }
                    DynamicLinkData dynamicLinkData = bVar.a;
                    Uri uri2 = null;
                    if (dynamicLinkData != null && (str = dynamicLinkData.b) != null) {
                        uri2 = Uri.parse(str);
                    }
                    if (uri2 == null) {
                        return;
                    }
                    abstractC19078p2.onResult(uri2);
                }
            });
        } catch (Exception e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
        }
    }

    /* renamed from: Jj */
    public final String m13066Jj(Uri uri) {
        int indexOf;
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments == null || !pathSegments.contains("promo") || pathSegments.size() <= (indexOf = pathSegments.indexOf("promo") + 1)) {
            return null;
        }
        return pathSegments.get(indexOf);
    }

    /* renamed from: Kj */
    public final ReferralUrl m13065Kj() {
        ReferralUrl referralUrl = new ReferralUrl(this.f54587d.getString("referralLink"));
        referralUrl.f14457c = this.f54602s;
        return referralUrl;
    }

    @Override // com.truecaller.referral.ReferralManager
    /* renamed from: Kx */
    public void mo13064Kx() {
        if ((!this.f54599p.mo14245a() || (!this.f54587d.getBoolean("codeRedeemed") && !h.j(this.f54587d.getString("redeemCode")) && this.f54587d.getBoolean("featureReferralDeeplink"))) && this.f57683a != 0) {
            C19661p0 c19661p0 = this.f54589f;
            Objects.requireNonNull(c19661p0);
            new AsyncTaskC19632e0(c19661p0.f54611a, c19661p0.f54612b, null).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }

    @Override // com.truecaller.referral.ReferralManager
    /* renamed from: Ky */
    public void mo13063Ky(ReferralManager.ReferralLaunchContext referralLaunchContext) {
        HashMap<ReferralManager.ReferralLaunchContext, String> hashMap = this.f54604u;
        ReferralManager.ReferralLaunchContext referralLaunchContext2 = ReferralManager.ReferralLaunchContext.AFTER_CALL_PROMO;
        String str = hashMap.get(referralLaunchContext2);
        boolean z = true;
        boolean z2 = referralLaunchContext == referralLaunchContext2 && str != null && this.f54587d.getBoolean(str);
        HashMap<ReferralManager.ReferralLaunchContext, String> hashMap2 = this.f54604u;
        ReferralManager.ReferralLaunchContext referralLaunchContext3 = ReferralManager.ReferralLaunchContext.BOTTOM_BAR;
        String str2 = hashMap2.get(referralLaunchContext3);
        boolean z3 = referralLaunchContext == referralLaunchContext3 && str2 != null && this.f54587d.getBoolean(str2);
        HashMap<ReferralManager.ReferralLaunchContext, String> hashMap3 = this.f54604u;
        ReferralManager.ReferralLaunchContext referralLaunchContext4 = ReferralManager.ReferralLaunchContext.PROMO_POPUP;
        String str3 = hashMap3.get(referralLaunchContext4);
        if (referralLaunchContext != referralLaunchContext4 || str3 == null || !this.f54587d.getBoolean(str3)) {
            z = false;
        }
        if (z2 || z3 || z) {
            String string = this.f54587d.getString("referralCode");
            if (h.j(this.f54587d.getString("referralLink")) || h.j(string)) {
                this.f54589f.m13048a(new C19658a());
            } else {
                m13056Qj();
            }
        }
    }

    /* renamed from: Lj */
    public ReferralUrl m13062Lj() {
        if (h.j(this.f54587d.getString("referralLink"))) {
            return null;
        }
        return m13065Kj();
    }

    @Override // com.truecaller.referral.ReferralManager
    /* renamed from: Mf */
    public void mo13061Mf(String str) {
        AssertionUtil.isNotNull(this.f57683a, new String[0]);
        ((AbstractC19653m0) this.f57683a).mo13079V9(str, ReferralManager.ReferralLaunchContext.PUSH_NOTIFICATION);
    }

    /* renamed from: Mj */
    public String m13060Mj() {
        ReferralUrl.EnumC4396b enumC4396b = this.f54601r == EnumC19659b.SINGLE_INVITE ? this.f54595l.getString("inviteMore_17575").equalsIgnoreCase("bulkInvite") ? ReferralUrl.EnumC4396b.SINGLE_CONTACT_BULK : ReferralUrl.EnumC4396b.CUSTOM_SINGLE_SMS : ReferralUrl.EnumC4396b.BULK_SMS;
        AbstractC19223c0 abstractC19223c0 = this.f54590g;
        ReferralUrl m13065Kj = m13065Kj();
        m13065Kj.f14455a = enumC4396b;
        return abstractC19223c0.mo13768b(C2752R.string.referral_bulk_sms_v3, m13065Kj.m34789a(), C17422k.m16109I(this.f54588e));
    }

    /* renamed from: Nj */
    public void m13059Nj(String str, ReferralUrl referralUrl) {
        if (this.f57683a == 0) {
            return;
        }
        int ordinal = this.f54601r.ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                return;
            }
            this.f54586c = ((AbstractC19643h0) ((AbstractC19854f) this.f54593j.get()).mo11854a()).mo13088b(this.f54603t).mo11830e(this.f54596m, new AbstractC19851d0() { // from class: e.a.q4.l
                @Override // p193e.p194a.p1187r2.AbstractC19851d0
                public final void onResult(Object obj) {
                    C19657o0 c19657o0 = C19657o0.this;
                    Boolean bool = (Boolean) obj;
                    AbstractC19653m0 abstractC19653m0 = (AbstractC19653m0) c19657o0.f57683a;
                    String m13060Mj = c19657o0.m13060Mj();
                    Contact contact = c19657o0.f54603t;
                    BulkSmsView.PromoLayout promoLayout = new BulkSmsView.PromoLayout(C2752R.layout.include_large_icon_with_title_subtitle, new int[]{2131366469, 2131366110}, new String[]{c19657o0.f54590g.mo13768b(C2752R.string.referral_promo_text_tc_features, contact.m35489x()), c19657o0.f54590g.mo13768b(C2752R.string.referral_bulk_sms_cost_disclaimer, new Object[0])}, new int[]{2131364203}, new int[]{C2752R.C2753drawable.ic_invite_present}, null);
                    ReferralManager.ReferralLaunchContext referralLaunchContext = c19657o0.f54602s;
                    String str2 = c19657o0.f54585b;
                    boolean z = false;
                    if (bool != null) {
                        z = false;
                        if (bool.booleanValue()) {
                            z = true;
                        }
                    }
                    abstractC19653m0.mo13073pn(m13060Mj, contact, promoLayout, referralLaunchContext, str2, z);
                }
            });
        } else if (this.f54602s == ReferralManager.ReferralLaunchContext.AFTER_CALL_PROMO) {
            this.f54587d.mo13035a("referralAfterCallPromoLastShown", System.currentTimeMillis());
            ((AbstractC19653m0) this.f57683a).mo13082Iv(str, referralUrl, this.f54602s, this.f54585b);
        } else if (!h.f(this.f54587d.getString("featureReferralShareApps"), "Bulk Sms Single Screen")) {
            ((AbstractC19653m0) this.f57683a).mo13082Iv(str, referralUrl, this.f54602s, this.f54585b);
        } else {
            AbstractC19653m0 abstractC19653m0 = (AbstractC19653m0) this.f57683a;
            String m13060Mj = m13060Mj();
            int[] iArr = new int[0];
            int[] iArr2 = iArr;
            if (!((AbstractC19954i0) this.f54594k.get()).mo11761b()) {
                iArr2 = (int[]) w3.c.a.a.a.a.c(iArr, Integer.TYPE);
                iArr2[iArr2.length - 1] = 2131363637;
            }
            abstractC19653m0.mo13078Vu(m13060Mj, new BulkSmsView.PromoLayout(C2752R.layout.include_pro_features, null, null, null, null, iArr2), this.f54602s, this.f54585b);
        }
    }

    /* renamed from: Oj */
    public final boolean m13058Oj() {
        return !this.f54587d.getBoolean("featureReferralDeeplink") || this.f54587d.getBoolean("codeRedeemed") || !h.j(this.f54587d.getString("redeemCode"));
    }

    /* renamed from: Pj */
    public final void m13057Pj(Uri uri) {
        ReferralManager.ReferralLaunchContext referralLaunchContext;
        ReferralUrl.EnumC4396b enumC4396b;
        C26174a<String, ReferralUrl.EnumC4396b> c26174a = ReferralUrl.f14452d;
        List<String> pathSegments = uri.getPathSegments();
        ReferralUrl referralUrl = null;
        if (pathSegments != null) {
            referralUrl = null;
            if (pathSegments.contains("promo")) {
                int indexOf = pathSegments.indexOf("promo") + 2;
                referralUrl = null;
                if (pathSegments.size() > indexOf) {
                    String str = pathSegments.get(indexOf);
                    String uri2 = uri.toString();
                    ReferralUrl referralUrl2 = new ReferralUrl(uri2.substring(0, uri2.indexOf(str)));
                    if ((str == null ? 0 : str.length()) == 2) {
                        try {
                            referralLaunchContext = (ReferralManager.ReferralLaunchContext) ReferralUrl.m34788b(ReferralUrl.f14453e, Character.valueOf(str.charAt(0)));
                        } catch (Exception e) {
                            AssertionUtil.reportThrowableButNeverCrash(e);
                            referralLaunchContext = null;
                        }
                        try {
                            enumC4396b = (ReferralUrl.EnumC4396b) ReferralUrl.m34788b(ReferralUrl.f14454f, Character.valueOf(str.charAt(1)));
                        } catch (Exception e2) {
                            AssertionUtil.reportThrowableButNeverCrash(e2);
                            enumC4396b = null;
                        }
                        if (enumC4396b == null || referralLaunchContext == null) {
                            AssertionUtil.reportThrowableButNeverCrash(new IllegalArgumentException(C22128a.m8571s2("Share medium or context is null for referral link: ", uri)));
                            referralUrl = null;
                        } else {
                            referralUrl2.f14455a = enumC4396b;
                            referralUrl2.f14457c = referralLaunchContext;
                        }
                    } else {
                        referralUrl2.f14455a = ReferralUrl.EnumC4396b.OTHERS;
                        referralUrl2.f14457c = ReferralManager.ReferralLaunchContext.UNKNOWN;
                    }
                    referralUrl = referralUrl2;
                }
            }
        }
        if (referralUrl != null) {
            ReferralUrl.EnumC4396b enumC4396b2 = referralUrl.f14455a;
            ReferralManager.ReferralLaunchContext referralLaunchContext2 = referralUrl.f14457c;
            if (referralLaunchContext2 == null) {
                return;
            }
            this.f54597n.mo12999b(referralLaunchContext2.name(), enumC4396b2.name());
        }
    }

    /* renamed from: Qj */
    public void m13056Qj() {
        if (h.j(this.f54587d.getString("smsReferralPrefetchBatch"))) {
            ((AbstractC19643h0) ((AbstractC19854f) this.f54593j.get()).mo11854a()).mo13089a();
        }
    }

    /* renamed from: Rj */
    public final boolean m13055Rj(String str) {
        if (h.e(this.f54587d.getString("referralCode"), str)) {
            return false;
        }
        this.f54587d.mo13034b("redeemCode", str);
        return true;
    }

    @Override // p193e.p194a.p1159q4.AsyncTaskC19632e0.AbstractC19633a
    /* renamed from: S9 */
    public void mo13054S9(String str) {
        PV pv = this.f57683a;
        if (pv == 0) {
            return;
        }
        ((AbstractC19653m0) pv).mo13076Xg();
        if (h.j(str)) {
            return;
        }
        ((AbstractC19653m0) this.f57683a).mo13081M(str);
    }

    @Override // com.truecaller.referral.ReferralManager
    /* renamed from: Xa */
    public void mo13053Xa(ReferralManager.ReferralLaunchContext referralLaunchContext) {
        this.f54602s = referralLaunchContext;
        if (!m13068Ij(referralLaunchContext)) {
            return;
        }
        switch (referralLaunchContext.ordinal()) {
            case 1:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                this.f54601r = EnumC19659b.REFERRAL;
                break;
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
                this.f54601r = EnumC19659b.SINGLE_INVITE;
                break;
            default:
                AssertionUtil.reportThrowableButNeverCrash(new IllegalArgumentException("Launch context " + referralLaunchContext + " not handled"));
                break;
        }
        String string = this.f54587d.getString("referralCode");
        String string2 = this.f54587d.getString("referralLink");
        if (this.f57683a == 0 || !this.f54599p.mo14245a()) {
            return;
        }
        if (!h.j(string2) && !h.j(string)) {
            m13059Nj(string, m13065Kj());
            return;
        }
        ((AbstractC19653m0) this.f57683a).mo13075fc(null);
        this.f54589f.m13048a(this);
    }

    @Override // p193e.p194a.p1334w.p1336b.AsyncTaskC21177a.AbstractC21178a
    /* renamed from: af */
    public void mo10166af() {
        PV pv = this.f57683a;
        if (pv == 0) {
            return;
        }
        ((AbstractC19653m0) pv).mo13076Xg();
        ((AbstractC19653m0) this.f57683a).mo13081M(this.f54590g.mo13768b(C2752R.string.referral_error_getting_code, new Object[0]));
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        AbstractC19844a abstractC19844a = this.f54586c;
        if (abstractC19844a != null) {
            abstractC19844a.mo11832b();
            this.f54586c = null;
        }
        PV pv = this.f57683a;
        if (pv != 0) {
            ((AbstractC19653m0) pv).mo13076Xg();
            ((AbstractC19653m0) this.f57683a).mo13080Pv();
            ((AbstractC19653m0) this.f57683a).mo13074oo();
        }
        this.f57683a = null;
    }

    @Override // com.truecaller.referral.ReferralManager
    public void clear() {
        for (String str : AbstractC21179b.f59357a) {
            this.f54587d.remove(str);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0101, code lost:
        if (r19 != false) goto L24;
     */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0116  */
    @Override // com.truecaller.referral.ReferralManager
    /* renamed from: dg */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo13052dg(com.truecaller.data.entity.Contact r7) {
        /*
            Method dump skipped, instructions count: 339
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1159q4.C19657o0.mo13052dg(com.truecaller.data.entity.Contact):boolean");
    }

    @Override // p193e.p194a.p1334w.p1336b.AsyncTaskC21177a.AbstractC21178a
    /* renamed from: e4 */
    public void mo10165e4(C21180a c21180a) {
        PV pv = this.f57683a;
        if (pv == 0) {
            return;
        }
        ((AbstractC19653m0) pv).mo13076Xg();
        m13059Nj(c21180a.f59358a, m13065Kj());
    }

    @Override // com.truecaller.referral.ReferralManager
    /* renamed from: j8 */
    public void mo13051j8() {
        AssertionUtil.isNotNull(this.f57683a, new String[0]);
        if (!h.j(this.f54587d.getString("referralLink"))) {
            ((AbstractC19653m0) this.f57683a).mo13082Iv(this.f54587d.getString("referralCode"), m13065Kj(), this.f54602s, this.f54585b);
            return;
        }
        this.f54601r = EnumC19659b.REFERRAL;
        this.f54589f.m13048a(this);
    }

    @Override // com.truecaller.referral.ReferralManager
    /* renamed from: oe */
    public void mo13050oe(String str) {
        this.f54585b = str;
        mo13053Xa(ReferralManager.ReferralLaunchContext.DEEP_LINK);
    }

    @Override // com.truecaller.referral.ReferralManager
    /* renamed from: sx */
    public void mo13049sx(ReferralManager.ReferralLaunchContext referralLaunchContext, Contact contact) {
        this.f54603t = contact;
        mo13053Xa(referralLaunchContext);
    }
}
