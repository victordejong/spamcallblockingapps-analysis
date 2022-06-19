package p193e.p194a.p292a4;

import android.app.Application;
import com.freshchat.consumer.sdk.beans.config.DefaultRefreshIntervals;
import com.razorpay.AnalyticsConstants;
import com.truecaller.TrueApp;
import com.truecaller.callrecording.CallRecordingManager;
import com.truecaller.clevertap.CleverTapManager;
import com.truecaller.settings.CallingSettings;
import javax.inject.Inject;
import javax.inject.Named;
import javax.inject.Provider;
import o3.a;
import p193e.p194a.p1011l.p1025p2.AbstractC17126l;
import p193e.p194a.p1011l.p1025p2.C17173s;
import p193e.p194a.p1041l0.p1046w.AbstractC17392a;
import p193e.p194a.p1049l4.AbstractC17419h;
import p193e.p194a.p1052m.AbstractC17860c0;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1113o4.AbstractC18931l;
import p193e.p194a.p1114o5.AbstractC19006d;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1114o5.AbstractC19044j;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1129p5.C19238k;
import p193e.p194a.p1146q2.AbstractC19511j;
import p193e.p194a.p1146q2.AbstractC19541s;
import p193e.p194a.p1146q2.p1151d1.AbstractC19490a;
import p193e.p194a.p1146q2.p1152w0.AbstractC19552a;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1341w3.AbstractC21199i;
import p193e.p194a.p1341w3.C21190a;
import p193e.p194a.p1365y.p1382c.AbstractC21631b;
import p193e.p194a.p1365y.p1382c.AbstractC21665w;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.C5839c0;
import p193e.p194a.p195a.p244k.p245a.p247f2.AbstractC6551a;
import p193e.p194a.p372b0.p406e.AbstractC8426f;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p372b0.p418l.AbstractC8503a;
import p193e.p194a.p372b0.p424n.AbstractC8531g;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p437c.p438a.p479i.C9109d;
import p193e.p194a.p437c.p531c0.AbstractC10028o;
import p193e.p194a.p437c.p552i.p560h.AbstractC10347a;
import p193e.p194a.p614c3.AbstractC10925a;
import p193e.p194a.p615c4.AbstractC10936d;
import p193e.p194a.p619d.AbstractC11705f;
import p193e.p194a.p677d3.AbstractC12589h;
import p193e.p194a.p678d4.AbstractC12597c;
import p193e.p194a.p717f.AbstractC13706b;
import p193e.p194a.p717f.C13709d;
import p193e.p194a.p852i.p879e.p893k.AbstractC15155a;
import s1.u.i;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.a4.i0 */
/* loaded from: classes10-dex2jar.jar:e/a/a4/i0.class */
public final class C7452i0 extends AbstractC7440g<TrueApp> {

    /* renamed from: A */
    public final a<AbstractC13706b> f23653A;

    /* renamed from: B */
    public final a<AbstractC12589h> f23654B;

    /* renamed from: C */
    public final a<AbstractC18931l> f23655C;

    /* renamed from: D */
    public final a<C13709d> f23656D;

    /* renamed from: E */
    public final a<AbstractC19552a> f23657E;

    /* renamed from: F */
    public final a<AbstractC8426f> f23658F;

    /* renamed from: G */
    public final a<AbstractC17860c0> f23659G;

    /* renamed from: H */
    public final a<AbstractC8541a> f23660H;

    /* renamed from: I */
    public final a<AbstractC17392a> f23661I;

    /* renamed from: J */
    public final a<C5839c0> f23662J;

    /* renamed from: K */
    public final a<C21190a> f23663K;

    /* renamed from: L */
    public final a<AbstractC12597c> f23664L;

    /* renamed from: M */
    public final a<AbstractC6551a> f23665M;

    /* renamed from: N */
    public final a<CallRecordingManager> f23666N;

    /* renamed from: O */
    public final a<AbstractC15155a> f23667O;

    /* renamed from: P */
    public final a<AbstractC8531g> f23668P;

    /* renamed from: Q */
    public final AbstractC8503a f23669Q;

    /* renamed from: R */
    public final AbstractC10936d f23670R;

    /* renamed from: S */
    public final a<AbstractC19022f0> f23671S;

    /* renamed from: T */
    public final a<AbstractC6392i0> f23672T;

    /* renamed from: U */
    public final a<C9109d> f23673U;

    /* renamed from: V */
    public final AbstractC10028o f23674V;

    /* renamed from: h */
    public final Provider<f> f23675h;

    /* renamed from: i */
    public final Provider<f> f23676i;

    /* renamed from: j */
    public final String f23677j;

    /* renamed from: k */
    public final AbstractC19044j f23678k;

    /* renamed from: l */
    public final a<AbstractC10925a> f23679l;

    /* renamed from: m */
    public final a<AbstractC19230g> f23680m;

    /* renamed from: n */
    public final a<AbstractC19490a> f23681n;

    /* renamed from: o */
    public final AbstractC19511j f23682o;

    /* renamed from: p */
    public final AbstractC19541s f23683p;

    /* renamed from: q */
    public final AbstractC19006d f23684q;

    /* renamed from: r */
    public final a<C17173s> f23685r;

    /* renamed from: s */
    public final a<AbstractC17126l> f23686s;

    /* renamed from: t */
    public final a<AbstractC10347a> f23687t;

    /* renamed from: u */
    public final a<AbstractC21199i> f23688u;

    /* renamed from: v */
    public final a<AbstractC21631b> f23689v;

    /* renamed from: w */
    public final a<AbstractC21665w> f23690w;

    /* renamed from: x */
    public final a<AbstractC19854f<AbstractC17419h>> f23691x;

    /* renamed from: y */
    public final a<CleverTapManager> f23692y;

    /* renamed from: z */
    public final a<AbstractC11705f> f23693z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C7452i0(a<AbstractC8432l> aVar, a<CallingSettings> aVar2, a<C20592g> aVar3, @Named("UI") Provider<f> provider, @Named("IO") Provider<f> provider2, @Named("CPU") Provider<f> provider3, String str, AbstractC19044j abstractC19044j, a<AbstractC10925a> aVar4, a<AbstractC19230g> aVar5, a<AbstractC19490a> aVar6, AbstractC19511j abstractC19511j, AbstractC19541s abstractC19541s, AbstractC19006d abstractC19006d, a<C17173s> aVar7, a<AbstractC17126l> aVar8, a<AbstractC10347a> aVar9, a<AbstractC21199i> aVar10, a<AbstractC21631b> aVar11, a<AbstractC21665w> aVar12, a<AbstractC19854f<AbstractC17419h>> aVar13, a<CleverTapManager> aVar14, a<AbstractC11705f> aVar15, a<AbstractC13706b> aVar16, a<AbstractC12589h> aVar17, a<AbstractC18931l> aVar18, a<C13709d> aVar19, a<AbstractC19552a> aVar20, a<AbstractC8426f> aVar21, a<AbstractC17860c0> aVar22, a<AbstractC8541a> aVar23, a<AbstractC17392a> aVar24, a<C5839c0> aVar25, a<C21190a> aVar26, a<AbstractC12597c> aVar27, a<AbstractC6551a> aVar28, a<CallRecordingManager> aVar29, a<AbstractC15155a> aVar30, a<AbstractC8531g> aVar31, AbstractC8503a abstractC8503a, AbstractC10936d abstractC10936d, a<AbstractC19022f0> aVar32, a<AbstractC6392i0> aVar33, a<C9109d> aVar34, AbstractC10028o abstractC10028o) {
        super(provider, aVar, aVar2, aVar3, new C19238k());
        l.e(aVar, "accountManager");
        l.e(aVar2, "callingSettings");
        l.e(aVar3, "featuresRegistry");
        l.e(provider, "uiContext");
        l.e(provider2, "ioContextProvider");
        l.e(provider3, "cpuContextProvider");
        l.e(str, "versionName");
        l.e(abstractC19044j, "appListener");
        l.e(aVar4, "buildHelper");
        l.e(aVar5, "deviceInfoUtil");
        l.e(aVar6, "analyticsRepository");
        l.e(abstractC19511j, "appOpenTracker");
        l.e(abstractC19541s, "dauTracker");
        l.e(abstractC19006d, "appDowngradeListener");
        l.e(aVar7, "newPurchasesObserver");
        l.e(aVar8, "globalPurchaseListener");
        l.e(aVar9, "insightsMigrationManager");
        l.e(aVar10, "flashThemeManager");
        l.e(aVar11, "flashManager");
        l.e(aVar12, "flashAnalyticsHelper");
        l.e(aVar13, "presenceManager");
        l.e(aVar14, "cleverTapManager");
        l.e(aVar15, "voip");
        l.e(aVar16, "inCallUi");
        l.e(aVar17, "businessCardRepository");
        l.e(aVar18, "tcNotificationManager");
        l.e(aVar19, "inCallUIActivityListener");
        l.e(aVar20, "callAnalytics");
        l.e(aVar21, "regionUtils");
        l.e(aVar22, "privacyRegionUpdater");
        l.e(aVar23, "coreSettings");
        l.e(aVar24, "callLogEventHelper");
        l.e(aVar25, "messagingActivitiesListener");
        l.e(aVar26, "flashActivityListener");
        l.e(aVar27, "mobileServicesAvailabilityProvider");
        l.e(aVar28, "imAttachmentMigrator");
        l.e(aVar29, "callRecordingManager");
        l.e(aVar30, "offlineAdsManager");
        l.e(aVar31, "profileRepository");
        l.e(abstractC8503a, "facebookInitHelper");
        l.e(abstractC10936d, "exceptionsUnmutingUtil");
        l.e(aVar32, "deviceManager");
        l.e(aVar33, "settings");
        l.e(aVar34, "getSmartCardsCountUseCase");
        l.e(abstractC10028o, "insightsConfig");
        this.f23675h = provider2;
        this.f23676i = provider3;
        this.f23677j = str;
        this.f23678k = abstractC19044j;
        this.f23679l = aVar4;
        this.f23680m = aVar5;
        this.f23681n = aVar6;
        this.f23682o = abstractC19511j;
        this.f23683p = abstractC19541s;
        this.f23684q = abstractC19006d;
        this.f23685r = aVar7;
        this.f23686s = aVar8;
        this.f23687t = aVar9;
        this.f23688u = aVar10;
        this.f23689v = aVar11;
        this.f23690w = aVar12;
        this.f23691x = aVar13;
        this.f23692y = aVar14;
        this.f23693z = aVar15;
        this.f23653A = aVar16;
        this.f23654B = aVar17;
        this.f23655C = aVar18;
        this.f23656D = aVar19;
        this.f23657E = aVar20;
        this.f23658F = aVar21;
        this.f23659G = aVar22;
        this.f23660H = aVar23;
        this.f23661I = aVar24;
        this.f23662J = aVar25;
        this.f23663K = aVar26;
        this.f23664L = aVar27;
        this.f23665M = aVar28;
        this.f23666N = aVar29;
        this.f23667O = aVar30;
        this.f23668P = aVar31;
        this.f23669Q = abstractC8503a;
        this.f23670R = abstractC10936d;
        this.f23671S = aVar32;
        this.f23672T = aVar33;
        this.f23673U = aVar34;
        this.f23674V = abstractC10028o;
    }

    @Override // p193e.p194a.p292a4.AbstractC7436e
    /* renamed from: c */
    public void mo29593c(Application application) {
        TrueApp trueApp = (TrueApp) application;
        l.e(trueApp, "app");
        m29617h("firebase", null, new C27626y2(5, trueApp));
        m29617h("legacy shared preferences", null, new C27626y2(15, trueApp));
        m29617h("exceptions handling", null, new C27626y2(19, this));
        m29617h("debug logging", null, new c2(4, this, trueApp));
        f fVar = (f) this.f23676i.get();
        l.d(fVar, "cpuContext");
        AbstractC7440g.m29614k(this, "Avro", fVar, null, 0L, new C7450h0(null), 12, null);
        m29617h("Set facebook LDU flag for CCPA", null, C27618q2.f77849e);
        m29617h("Enrich crashlytics data", m29612m("Crashlytics is available", C25280h2.f70724e), new c2(5, this, trueApp));
        m29617h("Huawei AGConnect", m29612m("Is a Huawei device and GMS is not available!", new C25367n2(5, this)), new C27626y2(0, trueApp));
        C27618q2 c27618q2 = C27618q2.f77847c;
        l.e("Facebook debug", "actionName");
        l.e(c27618q2, "action");
        m29617h("Facebook debug", new C7462o(), c27618q2);
        m29617h("Facebook", null, new c2(0, this, trueApp));
        m29617h("Enable facebook reporting", m29620e(true), new C27626y2(1, this));
        m29617h("ThemeManager", null, new C27626y2(2, trueApp));
        f fVar2 = (f) this.f23675h.get();
        l.d(fVar2, "ioContext");
        AbstractC7440g.m29614k(this, "Setup Google play service Provider", fVar2, null, 0L, new C7467t(trueApp, null), 12, null);
        m29617h("Setup locale", null, new C27626y2(3, trueApp));
        m29617h("Update locale settings", null, new C27626y2(4, trueApp));
        m29617h("Switch to staging endpoint", m29612m("When set in QA menu", C25280h2.f70722c), C27618q2.f77848d);
        m29617h("JodaTime", null, new C27626y2(6, trueApp));
        C27626y2 c27626y2 = new C27626y2(7, trueApp);
        l.e("Start CallStateService", "actionName");
        l.e(c27626y2, "action");
        m29617h("Start CallStateService", new C7451i(26), c27626y2);
        m29617h("Register CallLog observer", null, new C27626y2(8, trueApp));
        m29617h("Start ClipboardService", null, new C27626y2(9, trueApp));
        C27626y2 c27626y22 = new C27626y2(10, trueApp);
        l.e("Schedule Ringer", "actionName");
        l.e(c27626y22, "action");
        m29617h("Schedule Ringer", new C7461n(26), c27626y22);
        m29617h("Register activity callbacks", null, new c2(1, this, trueApp));
        C27626y2 c27626y23 = new C27626y2(11, this);
        l.e("GlobalPurchaseUpdatedListener", "actionName");
        l.e(c27626y23, "action");
        m29617h("GlobalPurchaseUpdatedListener", new C7438f(this.f23623d, true), c27626y23);
        m29617h("Schedule T9 Sync", m29621d(true), new C27626y2(12, trueApp));
        C27626y2 c27626y24 = new C27626y2(13, trueApp);
        l.e("Trigger Tag service", "actionName");
        l.e(c27626y24, "action");
        m29617h("Trigger Tag service", new C7430b(this.f23623d, true), c27626y24);
        C27626y2 c27626y25 = new C27626y2(14, this);
        l.e("insights", "actionName");
        l.e(c27626y25, "action");
        m29617h("insights", new C7430b(this.f23623d, true), c27626y25);
        m29617h("Flash", null, new c2(2, this, trueApp));
        m29617h("Bizmon manager", null, new C27626y2(16, trueApp));
        m29615j("Report presence", fVar, m29621d(true), 8000L, new C7469v(this, null));
        m29617h("CleverTap", m29612m("Clevertap SDK init requested by client", new C25367n2(0, this)), new C27626y2(17, this));
        AbstractC7460m m29621d = m29621d(true);
        C20592g c20592g = (C20592g) this.f23625f.get();
        C20592g.C20593a c20593a = c20592g.f57864Y;
        s1.a.l<?>[] lVarArr = C20592g.f57695p6;
        m29617h("Register VoIP", C17891a1.C17902k.m15600k(m29621d, AbstractC7440g.m29618g(this, c20593a.m10941a(c20592g, lVarArr[48]), false, true, 2, null)), new C27626y2(18, this));
        C7461n c7461n = new C7461n(24);
        C20592g c20592g2 = (C20592g) this.f23625f.get();
        m29617h("InCallUI", C17891a1.C17902k.m15600k(c7461n, AbstractC7440g.m29618g(this, c20592g2.f57968l1.m10941a(c20592g2, lVarArr[115]), false, true, 2, null)), new c2(3, this, trueApp));
        m29617h("Year in calling", m29620e(true), new C7470w(this, trueApp, fVar2));
        m29615j("Push caller ID", fVar2, AbstractC7440g.m29618g(this, ((C20592g) this.f23625f.get()).m10967f0(), false, true, 2, null), DefaultRefreshIntervals.ACTIVE_CONV_MIN_FETCH_INTERVAL, new C7471x(this, null));
        AbstractC7440g.m29614k(this, "country util in BG", fVar2, null, 0L, new C7472y(null), 12, null);
        AbstractC7440g.m29614k(this, "TC notification manager in BG", fVar2, null, 1500L, new C7473z(this, null), 4, null);
        AbstractC7440g.m29614k(this, "AlarmReceiver in BG", fVar2, null, 8000L, new C7429a0(trueApp, null), 4, null);
        AbstractC7440g.m29614k(this, "Call log analytics", fVar2, null, 10000L, new C7431b0(this, null), 4, null);
        C7461n c7461n2 = new C7461n(26);
        C20592g c20592g3 = (C20592g) this.f23625f.get();
        m29617h("ScreenUlocked listener", C17891a1.C17902k.m15600k(C17891a1.C17902k.m15600k(c7461n2, AbstractC7440g.m29618g(this, c20592g3.f57962k3.m10941a(c20592g3, lVarArr[219]), false, false, 6, null)), m29620e(true)), new C27626y2(20, trueApp));
        AbstractC7440g.m29614k(this, "IM media migration", fVar, null, 0L, new C7433c0(this, null), 12, null);
        AbstractC7440g.m29614k(this, "Call recordings migration", fVar, null, 0L, new C7435d0(this, null), 12, null);
        AbstractC7460m m29612m = m29612m("Alpha build", C25280h2.f70723d);
        C7462o c7462o = new C7462o();
        l.e(m29612m, "$this$or");
        l.e(c7462o, "other");
        m29617h(" Call recordings Acessibility Service listener POC", new C7457k(i.T(new AbstractC7460m[]{m29612m, c7462o})), new C27626y2(21, this));
        AbstractC7460m m15600k = C17891a1.C17902k.m15600k(C17891a1.C17902k.m15600k(AbstractC7440g.m29619f(this, false, 1, null), m29612m("User is in Region C", new C25367n2(1, this))), m29612m("Policy accepted", new C25367n2(2, this)));
        C25367n2 c25367n2 = new C25367n2(3, this);
        l.e("Status is not reported", AnalyticsConstants.NAME);
        l.e(c25367n2, "condition");
        AbstractC7440g.m29614k(this, "Report Region-C status", fVar2, C17891a1.C17902k.m15600k(m15600k, new C7449h(c25367n2, "Status is not reported")), 0L, new C7437e0(this, null), 8, null);
        m29615j("Offline Ads Sync", fVar2, C17891a1.C17902k.m15600k(AbstractC7440g.m29618g(this, ((C20592g) this.f23625f.get()).m10987R(), false, false, 6, null), m29620e(true)), 1000L, new C7439f0(this, null));
        AbstractC7460m m29619f = AbstractC7440g.m29619f(this, false, 1, null);
        C25367n2 c25367n22 = new C25367n2(4, this);
        l.e("There has already been a successful get profile request during app start", AnalyticsConstants.NAME);
        l.e(c25367n22, "condition");
        AbstractC7440g.m29614k(this, "Get profile request", fVar2, C17891a1.C17902k.m15600k(m29619f, new C7449h(c25367n22, "There has already been a successful get profile request during app start")), 0L, new C7448g0(this, null), 8, null);
    }
}
