package com.truecaller.insights.p168ui.important.presentation;

import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.models.analytics.SimpleAnalyticsModel;
import com.truecaller.insights.p168ui.important.domain.BannerAction;
import com.truecaller.insights.p168ui.models.AdapterItem;
import com.truecaller.insights.utils.HideTrxTempState;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import javax.inject.Named;
import kotlin.Metadata;
import p1727n3.p1868v.AbstractC26985a0;
import p1727n3.p1868v.AbstractC27013m0;
import p1727n3.p1868v.AbstractC27028u;
import p1727n3.p1868v.AbstractC27040y0;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p437c.p438a.p446c.p449f.AbstractC8830y;
import p193e.p194a.p437c.p438a.p446c.p449f.C8793b;
import p193e.p194a.p437c.p438a.p446c.p449f.C8803g;
import p193e.p194a.p437c.p438a.p446c.p449f.C8813j;
import p193e.p194a.p437c.p438a.p446c.p449f.C8819o;
import p193e.p194a.p437c.p438a.p446c.p449f.C8829x;
import p193e.p194a.p437c.p438a.p446c.p451h.AbstractC8852j;
import p193e.p194a.p437c.p438a.p446c.p451h.AbstractC8853k;
import p193e.p194a.p437c.p438a.p446c.p451h.C8837a;
import p193e.p194a.p437c.p438a.p446c.p451h.C8851i;
import p193e.p194a.p437c.p438a.p479i.AbstractC9105a;
import p193e.p194a.p437c.p438a.p479i.AbstractC9114h;
import p193e.p194a.p437c.p438a.p479i.C9116j;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p531c0.AbstractC10028o;
import p193e.p194a.p437c.p548h.AbstractC10254d;
import p193e.p194a.p437c.p580r.p581d.C10529b;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import q3.a.x2.a1;
import q3.a.x2.k1;
import q3.a.y;
import s1.a.a.a.v0.f.d;
import s1.u.i;
import s1.w.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��Ø\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u00012\u00020\u0002B\u0083\u0001\b\u0007\u0012\u0006\u0010f\u001a\u00020c\u0012\u0006\u0010\\\u001a\u00020Y\u0012\u0006\u0010;\u001a\u000208\u0012\u0006\u0010K\u001a\u00020H\u0012\u0006\u0010C\u001a\u00020@\u0012\u0006\u0010G\u001a\u00020D\u0012\u0006\u0010\u001f\u001a\u00020\u001c\u0012\u0006\u0010T\u001a\u00020Q\u0012\u0006\u0010#\u001a\u00020 \u0012\u0006\u00103\u001a\u000200\u0012\u0006\u0010X\u001a\u00020U\u0012\u0006\u0010'\u001a\u00020$\u0012\b\b\u0001\u0010+\u001a\u00020(\u0012\u0006\u00107\u001a\u000204\u0012\u0006\u0010?\u001a\u00020<¢\u0006\u0004\bg\u0010hJ\u000f\u0010\u0004\u001a\u00020\u0003H\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0006\u001a\u00020\u0003H\u0007¢\u0006\u0004\b\u0006\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0003H\u0007¢\u0006\u0004\b\u0007\u0010\u0005J\u0017\u0010\n\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\n\u0010\u000bJ'\u0010\u0010\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0014\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0013R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0016\u0010\u001b\u001a\u00020\u00198\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u001aR\u0016\u0010\u001f\u001a\u00020\u001c8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0016\u0010#\u001a\u00020 8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\u0016\u0010'\u001a\u00020$8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010&R\u0016\u0010+\u001a\u00020(8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\u0016\u0010/\u001a\u00020,8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010.R\u0016\u00103\u001a\u0002008\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u00102R\u0016\u00107\u001a\u0002048\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b5\u00106R\u0016\u0010;\u001a\u0002088\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b9\u0010:R\u0016\u0010?\u001a\u00020<8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b=\u0010>R\u0016\u0010C\u001a\u00020@8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bA\u0010BR\u0016\u0010G\u001a\u00020D8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bE\u0010FR\u0016\u0010K\u001a\u00020H8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bI\u0010JR\u001c\u0010P\u001a\b\u0012\u0004\u0012\u00020M0L8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bN\u0010OR\u0016\u0010T\u001a\u00020Q8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bR\u0010SR\u0016\u0010X\u001a\u00020U8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bV\u0010WR\u0016\u0010\\\u001a\u00020Y8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bZ\u0010[R\"\u0010b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020_0^0]8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b`\u0010aR\u0016\u0010f\u001a\u00020c8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bd\u0010e¨\u0006i"}, d2 = {"Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;", "Ln3/v/y0;", "Ln3/v/a0;", "Ls1/s;", "onDestroy", "()V", "onResume", "onPause", "Ln3/v/u$b;", "state", "d", "(Ln3/v/u$b;)V", "", "eventCategory", "actionType", "actionInfo", "e", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "", "Z", "isFreshStart", "Le/a/c/a/c/h/i;", "a", "Le/a/c/a/c/h/i;", "importantTabContainer", "Lq3/a/i0;", "Lq3/a/i0;", "coroutineScope", "Le/a/c/c0/o;", "m", "Le/a/c/c0/o;", "insightsConfig", "Le/a/c/a/i/h;", "o", "Le/a/c/a/i/h;", "lifeCycleAwareAnalyticsLogger", "Le/a/c/h/d;", "r", "Le/a/c/h/d;", "importantTabBadgeUpdater", "Ls1/w/f;", "s", "Ls1/w/f;", "ioContext", "Lq3/a/y;", AbstractC2405c.f7629a, "Lq3/a/y;", "job", "Le/a/c/a/c/h/j;", "p", "Le/a/c/a/c/h/j;", "toolTipController", "Le/a/c/a/c/f/x;", "t", "Le/a/c/a/c/f/x;", "smartSmsBannerUseCase", "Le/a/c/a/c/f/j;", "i", "Le/a/c/a/c/f/j;", "updatesUseCase", "Le/a/c/a/c/h/k;", "u", "Le/a/c/a/c/h/k;", "smartSmsBannerLifeCyclePresenter", "Le/a/c/a/c/f/o;", "k", "Le/a/c/a/c/f/o;", "modelDownloadBannerUsecase", "Le/a/c/b/j;", "l", "Le/a/c/b/j;", "insightsStatusProvider", "Le/a/c/a/i/j;", "j", "Le/a/c/a/i/j;", "analyticsUsecase", "Lq3/a/x2/a1;", "Lcom/truecaller/insights/ui/important/domain/BannerAction;", "f", "Lq3/a/x2/a1;", "actionState", "Le/a/c/a/c/f/y;", "n", "Le/a/c/a/c/f/y;", "updateImportantTabSeenUsecase", "Le/a/c/a/i/a;", "q", "Le/a/c/a/i/a;", "delayedAnalyticLogger", "Le/a/c/a/c/f/b;", "h", "Le/a/c/a/c/f/b;", "financeUseCase", "Ln3/v/i0;", "", "Lcom/truecaller/insights/ui/models/AdapterItem;", C22021b.f61237c, "Ln3/v/i0;", "businessListItem", "Le/a/c/a/c/f/g;", "g", "Le/a/c/a/c/f/g;", "upcomingUseCase", "<init>", "(Le/a/c/a/c/f/g;Le/a/c/a/c/f/b;Le/a/c/a/c/f/j;Le/a/c/a/i/j;Le/a/c/a/c/f/o;Le/a/c/b/j;Le/a/c/c0/o;Le/a/c/a/c/f/y;Le/a/c/a/i/h;Le/a/c/a/c/h/j;Le/a/c/a/i/a;Le/a/c/h/d;Ls1/w/f;Le/a/c/a/c/f/x;Le/a/c/a/c/h/k;)V", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.insights.ui.important.presentation.BusinessInsightsViewModel */
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel.class */
public final class BusinessInsightsViewModel extends AbstractC27040y0 implements AbstractC26985a0 {

    /* renamed from: a */
    public final C8851i f12768a;

    /* renamed from: c */
    public final y f12770c;

    /* renamed from: d */
    public final i0 f12771d;

    /* renamed from: g */
    public final C8803g f12774g;

    /* renamed from: h */
    public final C8793b f12775h;

    /* renamed from: i */
    public final C8813j f12776i;

    /* renamed from: j */
    public final C9116j f12777j;

    /* renamed from: k */
    public final C8819o f12778k;

    /* renamed from: l */
    public final AbstractC9691j f12779l;

    /* renamed from: m */
    public final AbstractC10028o f12780m;

    /* renamed from: n */
    public final AbstractC8830y f12781n;

    /* renamed from: o */
    public final AbstractC9114h f12782o;

    /* renamed from: p */
    public final AbstractC8852j f12783p;

    /* renamed from: q */
    public final AbstractC9105a f12784q;

    /* renamed from: r */
    public final AbstractC10254d f12785r;

    /* renamed from: s */
    public final f f12786s;

    /* renamed from: t */
    public final C8829x f12787t;

    /* renamed from: u */
    public final AbstractC8853k f12788u;

    /* renamed from: b */
    public final n3.v.i0<List<AdapterItem>> f12769b = new n3.v.i0<>();

    /* renamed from: e */
    public boolean f12772e = true;

    /* renamed from: f */
    public final a1<BannerAction> f12773f = k1.a(BannerAction.IDLE);

    @Inject
    public BusinessInsightsViewModel(C8803g c8803g, C8793b c8793b, C8813j c8813j, C9116j c9116j, C8819o c8819o, AbstractC9691j abstractC9691j, AbstractC10028o abstractC10028o, AbstractC8830y abstractC8830y, AbstractC9114h abstractC9114h, AbstractC8852j abstractC8852j, AbstractC9105a abstractC9105a, AbstractC10254d abstractC10254d, @Named("IO") f fVar, C8829x c8829x, AbstractC8853k abstractC8853k) {
        l.e(c8803g, "upcomingUseCase");
        l.e(c8793b, "financeUseCase");
        l.e(c8813j, "updatesUseCase");
        l.e(c9116j, "analyticsUsecase");
        l.e(c8819o, "modelDownloadBannerUsecase");
        l.e(abstractC9691j, "insightsStatusProvider");
        l.e(abstractC10028o, "insightsConfig");
        l.e(abstractC8830y, "updateImportantTabSeenUsecase");
        l.e(abstractC9114h, "lifeCycleAwareAnalyticsLogger");
        l.e(abstractC8852j, "toolTipController");
        l.e(abstractC9105a, "delayedAnalyticLogger");
        l.e(abstractC10254d, "importantTabBadgeUpdater");
        l.e(fVar, "ioContext");
        l.e(c8829x, "smartSmsBannerUseCase");
        l.e(abstractC8853k, "smartSmsBannerLifeCyclePresenter");
        this.f12774g = c8803g;
        this.f12775h = c8793b;
        this.f12776i = c8813j;
        this.f12777j = c9116j;
        this.f12778k = c8819o;
        this.f12779l = abstractC9691j;
        this.f12780m = abstractC10028o;
        this.f12781n = abstractC8830y;
        this.f12782o = abstractC9114h;
        this.f12783p = abstractC8852j;
        this.f12784q = abstractC9105a;
        this.f12785r = abstractC10254d;
        this.f12786s = fVar;
        this.f12787t = c8829x;
        this.f12788u = abstractC8853k;
        this.f12768a = new C8851i(abstractC9691j, abstractC10028o, null, null, null, null, false, 124);
        y n = d.n((p1) null, 1);
        this.f12770c = n;
        this.f12771d = d.h(fVar.plus(n));
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x00dd, code lost:
        if (r8.isEmpty() != false) goto L41;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m35194c(com.truecaller.insights.p168ui.important.presentation.BusinessInsightsViewModel r8) {
        /*
            Method dump skipped, instructions count: 533
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.insights.p168ui.important.presentation.BusinessInsightsViewModel.m35194c(com.truecaller.insights.ui.important.presentation.BusinessInsightsViewModel):void");
    }

    /* renamed from: d */
    public final void m35193d(AbstractC27028u.EnumC27030b enumC27030b) {
        if (!this.f12779l.mo27270Y() || enumC27030b != AbstractC27028u.EnumC27030b.RESUMED || this.f12768a.f26966d == null) {
            return;
        }
        this.f12780m.mo26883C(true);
    }

    /* renamed from: e */
    public final void m35192e(String str, String str2, String str3) {
        C9116j c9116j = this.f12777j;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        l.e("", "feature");
        l.e("", "eventCategory");
        l.e("", "eventInfo");
        l.e("", AnalyticsConstants.CONTEXT);
        l.e("", "actionType");
        l.e("", "actionInfo");
        l.e(linkedHashMap, "propertyMap");
        l.e("permission", "<set-?>");
        l.e(str, "<set-?>");
        l.e(str2, "<set-?>");
        l.e(str3, "<set-?>");
        l.e("insights_tab", "<set-?>");
        if ("permission".length() > 0) {
            c9116j.m27866b(new C10529b(new SimpleAnalyticsModel("permission", str, "", "insights_tab", str2, str3, 0L, null, false, 448, null), i.W0(linkedHashMap)));
            return;
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }

    @AbstractC27013m0(AbstractC27028u.EnumC27029a.ON_DESTROY)
    public final void onDestroy() {
        this.f12780m.mo26869M(HideTrxTempState.DEFAULT);
    }

    @AbstractC27013m0(AbstractC27028u.EnumC27029a.ON_PAUSE)
    public final void onPause() {
        d.Y(this.f12770c, (CancellationException) null, 1, (Object) null);
    }

    @AbstractC27013m0(AbstractC27028u.EnumC27029a.ON_RESUME)
    public final void onResume() {
        this.f12779l.mo27279P(false);
        AbstractC9105a abstractC9105a = this.f12784q;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        l.e("", "feature");
        l.e("", "eventCategory");
        l.e("", "eventInfo");
        l.e("", AnalyticsConstants.CONTEXT);
        l.e("", "actionType");
        l.e("", "actionInfo");
        l.e(linkedHashMap, "propertyMap");
        l.e("page_view", "<set-?>");
        l.e("insights_business_tab", "<set-?>");
        l.e("view_3_sec", "<set-?>");
        l.e("insights_tab", "<set-?>");
        abstractC9105a.mo27878Nz(new C10529b(new SimpleAnalyticsModel("page_view", "insights_business_tab", "", "insights_tab", "view_3_sec", "", 0L, null, false, 448, null), i.W0(linkedHashMap)), 3000L);
        AbstractC9105a abstractC9105a2 = this.f12784q;
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        l.e("", "feature");
        l.e("", "eventCategory");
        l.e("", "eventInfo");
        l.e("", AnalyticsConstants.CONTEXT);
        l.e("", "actionType");
        l.e("", "actionInfo");
        l.e(linkedHashMap2, "propertyMap");
        l.e("page_view", "<set-?>");
        l.e("insights_business_tab", "<set-?>");
        l.e("view_5_sec", "<set-?>");
        l.e("insights_tab", "<set-?>");
        abstractC9105a2.mo27878Nz(new C10529b(new SimpleAnalyticsModel("page_view", "insights_business_tab", "", "insights_tab", "view_5_sec", "", 0L, null, false, 448, null), i.W0(linkedHashMap2)), 5000L);
        if (this.f12772e) {
            d.w2(this.f12771d, (f) null, (j0) null, new C8837a(this, null), 3, (Object) null);
        }
        m35193d(AbstractC27028u.EnumC27030b.RESUMED);
    }
}
