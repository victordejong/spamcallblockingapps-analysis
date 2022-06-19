package com.truecaller.insights.p168ui.financepage.search.presentation;

import android.support.p001v4.media.session.MediaSessionCompat;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.huawei.hms.actions.SearchIntents;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.insights.models.analytics.SimpleAnalyticsModel;
import com.truecaller.insights.p168ui.financepage.models.FinanceTab;
import com.truecaller.insights.p168ui.models.AdapterItem;
import java.util.LinkedHashMap;
import javax.inject.Inject;
import javax.inject.Named;
import kotlin.Metadata;
import n3.v.i0;
import p1727n3.p1868v.AbstractC26985a0;
import p1727n3.p1868v.AbstractC27013m0;
import p1727n3.p1868v.AbstractC27028u;
import p1727n3.p1868v.AbstractC27040y0;
import p1727n3.p1868v.C27010k0;
import p1727n3.p1909z.AbstractC27592q1;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p438a.p456d.p461d.AbstractC8890c;
import p193e.p194a.p437c.p438a.p456d.p463f.p465b.p466a.C8928a;
import p193e.p194a.p437c.p438a.p456d.p463f.p467c.C8930b;
import p193e.p194a.p437c.p438a.p479i.AbstractC9114h;
import p193e.p194a.p437c.p438a.p479i.C9116j;
import p193e.p194a.p437c.p580r.p581d.C10529b;
import s1.u.i;
import s1.u.s;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018��2\u00020\u00012\u00020\u0002B#\b\u0007\u0012\u0006\u0010\u001a\u001a\u00020\u0017\u0012\b\b\u0001\u0010(\u001a\u00020%\u0012\u0006\u0010$\u001a\u00020!¢\u0006\u0004\b)\u0010*J\u000f\u0010\u0004\u001a\u00020\u0003H\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0015\u0010\b\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tR\u001c\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0016\u0010\u0010\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010\u000fR\"\u0010\u0016\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00130\u00120\u00118\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0016\u0010\u001a\u001a\u00020\u00178\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001e\u001a\u00020\u001b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0016\u0010 \u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010\u000fR\u0016\u0010$\u001a\u00020!8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u0016\u0010(\u001a\u00020%8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'¨\u0006+"}, d2 = {"Lcom/truecaller/insights/ui/financepage/search/presentation/SearchTrxViewModel;", "Ln3/v/y0;", "Ln3/v/a0;", "Ls1/s;", "onStart", "()V", "", SearchIntents.EXTRA_QUERY, AbstractC2405c.f7629a, "(Ljava/lang/String;)V", "Ln3/v/k0;", "", "e", "Ln3/v/k0;", "_emptyStateLv", "Ljava/lang/String;", "prevSearchQuery", "Ln3/v/i0;", "Ln3/z/q1;", "Lcom/truecaller/insights/ui/models/AdapterItem;", C22021b.f61237c, "Ln3/v/i0;", "trxLiveData", "Le/a/c/a/d/d/c;", "f", "Le/a/c/a/d/d/c;", "financeDataSourceRepo", "Ln3/z/q1$c;", "a", "Ln3/z/q1$c;", DTBMetricsConfiguration.CONFIG_DIR, "d", "prevAnalyticsQuery", "Le/a/c/a/i/j;", "h", "Le/a/c/a/i/j;", "sendAnalyticsUsecase", "Le/a/c/a/i/h;", "g", "Le/a/c/a/i/h;", "lifeCycleAwareAnalyticsLogger", "<init>", "(Le/a/c/a/d/d/c;Le/a/c/a/i/h;Le/a/c/a/i/j;)V", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.insights.ui.financepage.search.presentation.SearchTrxViewModel */
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/financepage/search/presentation/SearchTrxViewModel.class */
public final class SearchTrxViewModel extends AbstractC27040y0 implements AbstractC26985a0 {

    /* renamed from: a */
    public final AbstractC27592q1.C27595c f12737a = new AbstractC27592q1.C27595c(45, 45, false, 135, Integer.MAX_VALUE);

    /* renamed from: b */
    public final i0<AbstractC27592q1<AdapterItem>> f12738b = new i0<>();

    /* renamed from: c */
    public String f12739c = "";

    /* renamed from: d */
    public String f12740d = "";

    /* renamed from: e */
    public final C27010k0<Boolean> f12741e = new C27010k0<>(Boolean.TRUE);

    /* renamed from: f */
    public final AbstractC8890c f12742f;

    /* renamed from: g */
    public final AbstractC9114h f12743g;

    /* renamed from: h */
    public final C9116j f12744h;

    @Inject
    public SearchTrxViewModel(AbstractC8890c abstractC8890c, @Named("financepage_analytics_logger") AbstractC9114h abstractC9114h, C9116j c9116j) {
        l.e(abstractC8890c, "financeDataSourceRepo");
        l.e(abstractC9114h, "lifeCycleAwareAnalyticsLogger");
        l.e(c9116j, "sendAnalyticsUsecase");
        this.f12742f = abstractC8890c;
        this.f12743g = abstractC9114h;
        this.f12744h = c9116j;
    }

    /* renamed from: c */
    public final void m35202c(String str) {
        l.e(str, SearchIntents.EXTRA_QUERY);
        boolean z = true;
        if (!l.a(this.f12739c, str)) {
            if (str.length() <= 0) {
                z = false;
            }
            if (z) {
                this.f12739c = str;
                C9116j c9116j = this.f12744h;
                C8928a c8928a = C8928a.f27200d;
                c9116j.m27867a(C8928a.f27197a);
            }
        }
        this.f12738b.m(MediaSessionCompat.m43305F1(this.f12742f.mo27980a(FinanceTab.ALL, s.a, this.f12741e, C22128a.m8619g2(str, '*')), this.f12737a, null, null, null, 14), new C8930b(this));
    }

    @AbstractC27013m0(AbstractC27028u.EnumC27029a.ON_START)
    public final void onStart() {
        C9116j c9116j = this.f12744h;
        boolean z = true;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        l.e("", "feature");
        l.e("", "eventCategory");
        l.e("", "eventInfo");
        l.e("", AnalyticsConstants.CONTEXT);
        l.e("", "actionType");
        l.e("", "actionInfo");
        l.e(linkedHashMap, "propertyMap");
        l.e("page_view", "<set-?>");
        l.e("finance_search_page", "<set-?>");
        l.e(ViewAction.VIEW, "<set-?>");
        l.e("finance_page", "<set-?>");
        if ("page_view".length() <= 0) {
            z = false;
        }
        if (z) {
            c9116j.m27867a(new C10529b(new SimpleAnalyticsModel("page_view", "finance_search_page", "", "finance_page", ViewAction.VIEW, "", 0L, null, false, 448, null), i.W0(linkedHashMap)));
            return;
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }
}
