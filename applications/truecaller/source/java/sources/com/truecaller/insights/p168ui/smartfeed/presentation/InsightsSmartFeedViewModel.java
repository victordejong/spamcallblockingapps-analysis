package com.truecaller.insights.p168ui.smartfeed.presentation;

import androidx.lifecycle.LiveData;
import com.huawei.hms.actions.SearchIntents;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.models.analytics.SimpleAnalyticsModel;
import com.truecaller.insights.p168ui.filters.states.SmsFilterState;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Objects;
import java.util.Set;
import javax.inject.Inject;
import javax.inject.Named;
import kotlin.Metadata;
import p1727n3.p1868v.AbstractC26985a0;
import p1727n3.p1868v.AbstractC27013m0;
import p1727n3.p1868v.AbstractC27028u;
import p1727n3.p1868v.AbstractC27040y0;
import p1727n3.p1868v.C27010k0;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p437c.p438a.p479i.AbstractC9105a;
import p193e.p194a.p437c.p438a.p479i.AbstractC9114h;
import p193e.p194a.p437c.p438a.p479i.C9116j;
import p193e.p194a.p437c.p438a.p480j.p481a.C9124b;
import p193e.p194a.p437c.p438a.p480j.p481a.C9125c;
import p193e.p194a.p437c.p438a.p480j.p481a.C9127d;
import p193e.p194a.p437c.p438a.p480j.p485d.C9160a;
import p193e.p194a.p437c.p438a.p480j.p485d.C9161b;
import p193e.p194a.p437c.p438a.p507p.p509b.C9456g;
import p193e.p194a.p437c.p531c0.AbstractC10028o;
import p193e.p194a.p437c.p548h.AbstractC10254d;
import p193e.p194a.p437c.p580r.p581d.C10529b;
import p193e.p194a.p437c.p606w.p607o0.p608k.AbstractC10836e;
import q3.a.x2.a1;
import q3.a.x2.f;
import q3.a.x2.k1;
import s1.f0.r;
import s1.f0.v;
import s1.s;
import s1.u.i;
import s1.z.b.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��½\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\"\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n*\u0001Y\b\u0007\u0018��2\u00020\u00012\u00020\u0002BS\b\u0007\u0012\u0006\u0010:\u001a\u000205\u0012\u0006\u0010y\u001a\u00020t\u0012\u0006\u0010s\u001a\u00020n\u0012\u0006\u0010R\u001a\u00020O\u0012\u0006\u0010%\u001a\u00020 \u0012\u0006\u0010j\u001a\u00020e\u0012\u0006\u0010d\u001a\u00020a\u0012\b\b\u0001\u0010A\u001a\u00020>\u0012\u0006\u0010`\u001a\u00020]¢\u0006\u0004\b|\u0010}J\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J'\u0010\u000b\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0005H\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u0015\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\u0015\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0003¢\u0006\u0004\b\u0014\u0010\u0007J\u0015\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0003¢\u0006\u0004\b\u0016\u0010\u0007J!\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u00032\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001d\u001a\u00020\u001b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u001cR\u0016\u0010\u001f\u001a\u00020\u001b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001cR\u0019\u0010%\u001a\u00020 8\u0006@\u0006¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$R\u001c\u0010)\u001a\b\u0012\u0004\u0012\u00020'0&8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010(R\u001f\u0010/\u001a\b\u0012\u0004\u0012\u00020\u00030*8\u0006@\u0006¢\u0006\f\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.R\u001f\u00104\u001a\b\u0012\u0004\u0012\u00020\u000f008\u0006@\u0006¢\u0006\f\n\u0004\b\u0006\u00101\u001a\u0004\b2\u00103R\u0019\u0010:\u001a\u0002058\u0006@\u0006¢\u0006\f\n\u0004\b6\u00107\u001a\u0004\b8\u00109R\u0016\u0010=\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u0010<R\u0016\u0010A\u001a\u00020>8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b?\u0010@R\u001c\u0010D\u001a\b\u0012\u0004\u0012\u00020\u000f0B8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010CR\u0016\u0010H\u001a\u00020E8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bF\u0010GR\u0016\u0010J\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bI\u0010<R\u0016\u0010N\u001a\u00020K8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bL\u0010MR\u0016\u0010R\u001a\u00020O8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bP\u0010QR\u001f\u0010U\u001a\b\u0012\u0004\u0012\u00020\u000f0*8\u0006@\u0006¢\u0006\f\n\u0004\bS\u0010,\u001a\u0004\bT\u0010.R\u001c\u0010X\u001a\b\u0012\u0004\u0012\u00020\u000f0V8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010WR\u0016\u0010\\\u001a\u00020Y8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bZ\u0010[R\u0016\u0010`\u001a\u00020]8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b^\u0010_R\u0016\u0010d\u001a\u00020a8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bb\u0010cR\u0019\u0010j\u001a\u00020e8\u0006@\u0006¢\u0006\f\n\u0004\bf\u0010g\u001a\u0004\bh\u0010iR\"\u0010m\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020'0k0*8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bl\u0010,R\u0019\u0010s\u001a\u00020n8\u0006@\u0006¢\u0006\f\n\u0004\bo\u0010p\u001a\u0004\bq\u0010rR\u0019\u0010y\u001a\u00020t8\u0006@\u0006¢\u0006\f\n\u0004\bu\u0010v\u001a\u0004\bw\u0010xR%\u0010{\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020'0k0*8\u0006@\u0006¢\u0006\f\n\u0004\b\u0014\u0010,\u001a\u0004\bz\u0010.¨\u0006~"}, d2 = {"Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;", "Ln3/v/y0;", "Ln3/v/a0;", "", "filterActionInfo", "Ls1/s;", "d", "(Ljava/lang/String;)V", "eventCategory", "actionType", "actionInfo", "e", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "onResume", "()V", "", "shouldExpand", "i", "(Z)V", SearchIntents.EXTRA_QUERY, "h", "bottomSheetEvent", AbstractC2405c.f7629a, "searchEvent", "searchInfo", "f", "(Ljava/lang/String;Ljava/lang/String;)V", "Lcom/truecaller/insights/ui/filters/states/SmsFilterState;", "Lcom/truecaller/insights/ui/filters/states/SmsFilterState;", "quickCurrentFiltersState", "g", "currentFiltersState", "Le/a/c/a/j/a/c;", "t", "Le/a/c/a/j/a/c;", "getQuickFiltersUseCase", "()Le/a/c/a/j/a/c;", "quickFiltersUseCase", "", "Le/a/c/w/o0/k/e;", "Ljava/util/Set;", "appliedFilters", "Lq3/a/x2/f;", "n", "Lq3/a/x2/f;", "getSearchQuery", "()Lq3/a/x2/f;", "searchQuery", "Landroidx/lifecycle/LiveData;", "Landroidx/lifecycle/LiveData;", "getRefreshLv", "()Landroidx/lifecycle/LiveData;", "refreshLv", "Le/a/c/a/p/b/g;", "p", "Le/a/c/a/p/b/g;", "getSmartFeedUseCase", "()Le/a/c/a/p/b/g;", "smartFeedUseCase", "a", "Z", "upcomingExpanded", "Le/a/c/a/i/h;", "w", "Le/a/c/a/i/h;", "analyticsLogger", "Lq3/a/x2/a1;", "Lq3/a/x2/a1;", "transactionHiddenStateFlow", "Le/a/c/a/j/d/b;", "m", "Le/a/c/a/j/d/b;", "senderSearchQuery", C22021b.f61237c, "senderSearchTriggered", "Le/a/c/a/j/d/a;", "k", "Le/a/c/a/j/d/a;", "categoryExpansionState", "Le/a/c/c0/o;", "s", "Le/a/c/c0/o;", "insightsConfig", "l", "getAreCategoriesExpanded", "areCategoriesExpanded", "Ln3/v/k0;", "Ln3/v/k0;", "_refreshSource", "com/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel$a", "o", "Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel$a;", "expandCallback", "Le/a/c/a/i/a;", "x", "Le/a/c/a/i/a;", "delayedAnalyticLogger", "Le/a/c/h/d;", "v", "Le/a/c/h/d;", "importantTabBadgeUpdater", "Le/a/c/a/i/j;", "u", "Le/a/c/a/i/j;", "getAnalyticsUsecase", "()Le/a/c/a/i/j;", "analyticsUsecase", "", "j", "quickCurrentFilters", "Le/a/c/a/j/a/d;", "r", "Le/a/c/a/j/a/d;", "getSendersUseCase", "()Le/a/c/a/j/a/d;", "sendersUseCase", "Le/a/c/a/j/a/b;", "q", "Le/a/c/a/j/a/b;", "getCategoriesUseCase", "()Le/a/c/a/j/a/b;", "categoriesUseCase", "getCurrentFilters", "currentFilters", "<init>", "(Le/a/c/a/p/b/g;Le/a/c/a/j/a/b;Le/a/c/a/j/a/d;Le/a/c/c0/o;Le/a/c/a/j/a/c;Le/a/c/a/i/j;Le/a/c/h/d;Le/a/c/a/i/h;Le/a/c/a/i/a;)V", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.insights.ui.smartfeed.presentation.InsightsSmartFeedViewModel */
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel.class */
public final class InsightsSmartFeedViewModel extends AbstractC27040y0 implements AbstractC26985a0 {

    /* renamed from: a */
    public boolean f12904a;

    /* renamed from: b */
    public boolean f12905b;

    /* renamed from: c */
    public final C27010k0<Boolean> f12906c;

    /* renamed from: d */
    public final LiveData<Boolean> f12907d;

    /* renamed from: g */
    public final SmsFilterState f12910g;

    /* renamed from: h */
    public final f<Set<AbstractC10836e>> f12911h;

    /* renamed from: i */
    public final SmsFilterState f12912i;

    /* renamed from: j */
    public final f<Set<AbstractC10836e>> f12913j;

    /* renamed from: k */
    public final C9160a f12914k;

    /* renamed from: l */
    public final f<Boolean> f12915l;

    /* renamed from: m */
    public final C9161b f12916m;

    /* renamed from: n */
    public final f<String> f12917n;

    /* renamed from: p */
    public final C9456g f12919p;

    /* renamed from: q */
    public final C9124b f12920q;

    /* renamed from: r */
    public final C9127d f12921r;

    /* renamed from: s */
    public final AbstractC10028o f12922s;

    /* renamed from: t */
    public final C9125c f12923t;

    /* renamed from: u */
    public final C9116j f12924u;

    /* renamed from: v */
    public final AbstractC10254d f12925v;

    /* renamed from: w */
    public final AbstractC9114h f12926w;

    /* renamed from: x */
    public final AbstractC9105a f12927x;

    /* renamed from: e */
    public final a1<Boolean> f12908e = k1.a(Boolean.FALSE);

    /* renamed from: f */
    public final Set<AbstractC10836e> f12909f = new LinkedHashSet();

    /* renamed from: o */
    public final C4125a f12918o = new C4125a();

    /* renamed from: com.truecaller.insights.ui.smartfeed.presentation.InsightsSmartFeedViewModel$a */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel$a.class */
    public static final class C4125a implements l<Boolean, s> {
        public C4125a() {
            InsightsSmartFeedViewModel.this = r4;
        }

        /* renamed from: d */
        public Object m35149d(Object obj) {
            boolean booleanValue = ((Boolean) obj).booleanValue();
            InsightsSmartFeedViewModel insightsSmartFeedViewModel = InsightsSmartFeedViewModel.this;
            insightsSmartFeedViewModel.f12904a = booleanValue;
            insightsSmartFeedViewModel.f12906c.mo1000l(Boolean.valueOf(booleanValue));
            return s.a;
        }
    }

    @Inject
    public InsightsSmartFeedViewModel(C9456g c9456g, C9124b c9124b, C9127d c9127d, AbstractC10028o abstractC10028o, C9125c c9125c, C9116j c9116j, AbstractC10254d abstractC10254d, @Named("smartfeed_analytics_logger") AbstractC9114h abstractC9114h, AbstractC9105a abstractC9105a) {
        s1.z.c.l.e(c9456g, "smartFeedUseCase");
        s1.z.c.l.e(c9124b, "categoriesUseCase");
        s1.z.c.l.e(c9127d, "sendersUseCase");
        s1.z.c.l.e(abstractC10028o, "insightsConfig");
        s1.z.c.l.e(c9125c, "quickFiltersUseCase");
        s1.z.c.l.e(c9116j, "analyticsUsecase");
        s1.z.c.l.e(abstractC10254d, "importantTabBadgeUpdater");
        s1.z.c.l.e(abstractC9114h, "analyticsLogger");
        s1.z.c.l.e(abstractC9105a, "delayedAnalyticLogger");
        this.f12919p = c9456g;
        this.f12920q = c9124b;
        this.f12921r = c9127d;
        this.f12922s = abstractC10028o;
        this.f12923t = c9125c;
        this.f12924u = c9116j;
        this.f12925v = abstractC10254d;
        this.f12926w = abstractC9114h;
        this.f12927x = abstractC9105a;
        C27010k0<Boolean> c27010k0 = new C27010k0<>();
        this.f12906c = c27010k0;
        this.f12907d = c27010k0;
        SmsFilterState smsFilterState = new SmsFilterState();
        this.f12910g = smsFilterState;
        this.f12911h = smsFilterState.f12727b;
        SmsFilterState smsFilterState2 = new SmsFilterState();
        this.f12912i = smsFilterState2;
        this.f12913j = smsFilterState2.f12727b;
        C9160a c9160a = new C9160a();
        this.f12914k = c9160a;
        this.f12915l = c9160a.f27888b;
        C9161b c9161b = new C9161b();
        this.f12916m = c9161b;
        this.f12917n = c9161b.f27890b;
    }

    /* renamed from: c */
    public final void m35156c(String str) {
        s1.z.c.l.e(str, "bottomSheetEvent");
        s1.z.c.l.e(str, "bottomSheetEvent");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        s1.z.c.l.e("", "feature");
        s1.z.c.l.e("", "eventCategory");
        s1.z.c.l.e("", "eventInfo");
        s1.z.c.l.e("", AnalyticsConstants.CONTEXT);
        s1.z.c.l.e("", "actionType");
        s1.z.c.l.e("", "actionInfo");
        s1.z.c.l.e(linkedHashMap, "propertyMap");
        s1.z.c.l.e("filter_bottomsheet", "<set-?>");
        s1.z.c.l.e(str, "<set-?>");
        s1.z.c.l.e("insights_smart_feed", "<set-?>");
        this.f12926w.mo27869Zd(new C10529b(new SimpleAnalyticsModel("filter_bottomsheet", "", "", "insights_smart_feed", str, "", 0L, null, false, 448, null), i.W0(linkedHashMap)));
    }

    /* renamed from: d */
    public final void m35155d(String str) {
        s1.z.c.l.e(str, "filterInfo");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        s1.z.c.l.e("", "feature");
        s1.z.c.l.e("", "eventCategory");
        s1.z.c.l.e("", "eventInfo");
        s1.z.c.l.e("", AnalyticsConstants.CONTEXT);
        s1.z.c.l.e("", "actionType");
        s1.z.c.l.e("", "actionInfo");
        s1.z.c.l.e(linkedHashMap, "propertyMap");
        s1.z.c.l.e("filter_bottomsheet", "<set-?>");
        s1.z.c.l.e("click", "<set-?>");
        s1.z.c.l.e(str, "<set-?>");
        s1.z.c.l.e("insights_smart_feed", "<set-?>");
        this.f12926w.mo27869Zd(new C10529b(new SimpleAnalyticsModel("filter_bottomsheet", "", "", "insights_smart_feed", "click", str, 0L, null, false, 448, null), i.W0(linkedHashMap)));
    }

    /* renamed from: e */
    public final void m35154e(String str, String str2, String str3) {
        C9116j c9116j = this.f12924u;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        s1.z.c.l.e("", "feature");
        s1.z.c.l.e("", "eventCategory");
        s1.z.c.l.e("", "eventInfo");
        s1.z.c.l.e("", AnalyticsConstants.CONTEXT);
        s1.z.c.l.e("", "actionType");
        s1.z.c.l.e("", "actionInfo");
        s1.z.c.l.e(linkedHashMap, "propertyMap");
        s1.z.c.l.e("permission", "<set-?>");
        s1.z.c.l.e(str, "<set-?>");
        s1.z.c.l.e(str2, "<set-?>");
        s1.z.c.l.e(str3, "<set-?>");
        s1.z.c.l.e("insights_tab", "<set-?>");
        if ("permission".length() > 0) {
            c9116j.m27866b(new C10529b(new SimpleAnalyticsModel("permission", str, "", "insights_tab", str2, str3, 0L, null, false, 448, null), i.W0(linkedHashMap)));
            return;
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }

    /* renamed from: f */
    public final void m35153f(String str, String str2) {
        s1.z.c.l.e(str, "searchEvent");
        s1.z.c.l.e(str, "searchEvent");
        if (!s1.z.c.l.a(str2, "keyboard_view")) {
            str2 = null;
        }
        if (str2 == null) {
            str2 = "";
        }
        boolean z = true;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        s1.z.c.l.e("", "feature");
        s1.z.c.l.e("", "eventCategory");
        s1.z.c.l.e("", "eventInfo");
        s1.z.c.l.e("", AnalyticsConstants.CONTEXT);
        s1.z.c.l.e("", "actionType");
        s1.z.c.l.e("", "actionInfo");
        s1.z.c.l.e(linkedHashMap, "propertyMap");
        s1.z.c.l.e("filter_bottomsheet", "<set-?>");
        s1.z.c.l.e("search_button", "<set-?>");
        s1.z.c.l.e(str, "<set-?>");
        s1.z.c.l.e(str2, "<set-?>");
        s1.z.c.l.e("insights_smart_feed", "<set-?>");
        if ("filter_bottomsheet".length() <= 0) {
            z = false;
        }
        if (z) {
            this.f12926w.mo27869Zd(new C10529b(new SimpleAnalyticsModel("filter_bottomsheet", "search_button", "", "insights_smart_feed", str, str2, 0L, null, false, 448, null), i.W0(linkedHashMap)));
            return;
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }

    /* renamed from: h */
    public final void m35151h(String str) {
        s1.z.c.l.e(str, SearchIntents.EXTRA_QUERY);
        String obj = v.g0(str).toString();
        if (!(obj.length() >= 2)) {
            obj = null;
        }
        if (obj == null) {
            obj = "";
        }
        if (!s1.z.c.l.a(obj, (String) this.f12916m.f27890b.getValue())) {
            C9161b c9161b = this.f12916m;
            Objects.requireNonNull(c9161b);
            s1.z.c.l.e(str, SearchIntents.EXTRA_QUERY);
            a1<String> a1Var = c9161b.f27889a;
            a1Var.e(a1Var.getValue(), str);
            if (!(!r.p(obj))) {
                return;
            }
            this.f12905b = true;
            m35153f(AnalyticsConstants.START, null);
        }
    }

    /* renamed from: i */
    public final void m35150i(boolean z) {
        this.f12914k.f27887a.e(Boolean.valueOf(!z), Boolean.valueOf(z));
    }

    @AbstractC27013m0(AbstractC27028u.EnumC27029a.ON_RESUME)
    public final void onResume() {
        AbstractC9105a abstractC9105a = this.f12927x;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        s1.z.c.l.e("", "feature");
        s1.z.c.l.e("", "eventCategory");
        s1.z.c.l.e("", "eventInfo");
        s1.z.c.l.e("", AnalyticsConstants.CONTEXT);
        s1.z.c.l.e("", "actionType");
        s1.z.c.l.e("", "actionInfo");
        s1.z.c.l.e(linkedHashMap, "propertyMap");
        s1.z.c.l.e("page_view", "<set-?>");
        s1.z.c.l.e("insights_smart_feed", "<set-?>");
        s1.z.c.l.e("view_3_sec", "<set-?>");
        s1.z.c.l.e("insights_smart_feed", "<set-?>");
        if ("page_view".length() > 0) {
            abstractC9105a.mo27878Nz(new C10529b(new SimpleAnalyticsModel("page_view", "insights_smart_feed", "", "insights_smart_feed", "view_3_sec", "", 0L, null, false, 448, null), i.W0(linkedHashMap)), 3000L);
            AbstractC9105a abstractC9105a2 = this.f12927x;
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            s1.z.c.l.e("", "feature");
            s1.z.c.l.e("", "eventCategory");
            s1.z.c.l.e("", "eventInfo");
            s1.z.c.l.e("", AnalyticsConstants.CONTEXT);
            s1.z.c.l.e("", "actionType");
            s1.z.c.l.e("", "actionInfo");
            s1.z.c.l.e(linkedHashMap2, "propertyMap");
            s1.z.c.l.e("page_view", "<set-?>");
            s1.z.c.l.e("insights_smart_feed", "<set-?>");
            s1.z.c.l.e("view_5_sec", "<set-?>");
            s1.z.c.l.e("insights_smart_feed", "<set-?>");
            boolean z = false;
            if ("page_view".length() > 0) {
                z = true;
            }
            if (!z) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            abstractC9105a2.mo27878Nz(new C10529b(new SimpleAnalyticsModel("page_view", "insights_smart_feed", "", "insights_smart_feed", "view_5_sec", "", 0L, null, false, 448, null), i.W0(linkedHashMap2)), 5000L);
            return;
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }
}
