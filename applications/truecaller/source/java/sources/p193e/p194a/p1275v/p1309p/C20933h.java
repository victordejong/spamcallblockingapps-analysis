package p193e.p194a.p1275v.p1309p;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.calling.initiate_call.InitiateCallHelper;
import com.truecaller.data.entity.Number;
import javax.inject.Inject;
import p193e.p194a.p1041l0.AbstractC17348c;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1080o.AbstractC18777j;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19870l;
import p193e.p194a.p804h.AbstractC14642b0;
import p193e.p194a.p804h.p825d.AbstractC14651d;
import s1.w.d;
import s1.z.c.l;
/* renamed from: e.a.v.p.h */
/* loaded from: classes8-dex2jar.jar:e/a/v/p/h.class */
public final class C20933h implements AbstractC20932g {

    /* renamed from: a */
    public final AbstractC14642b0 f58875a;

    /* renamed from: b */
    public final AbstractC14651d f58876b;

    /* renamed from: c */
    public final InitiateCallHelper f58877c;

    /* renamed from: d */
    public final AbstractC19854f<AbstractC17348c> f58878d;

    /* renamed from: e */
    public final AbstractC19870l f58879e;

    /* renamed from: f */
    public final AbstractC18777j f58880f;

    @Inject
    public C20933h(Context context, AbstractC14642b0 abstractC14642b0, AbstractC14651d abstractC14651d, InitiateCallHelper initiateCallHelper, AbstractC19854f<AbstractC17348c> abstractC19854f, AbstractC19870l abstractC19870l, AbstractC18777j abstractC18777j) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC14642b0, "simSelectionHelper");
        l.e(abstractC14651d, "numberForCallHelper");
        l.e(initiateCallHelper, "initiateCallHelper");
        l.e(abstractC19854f, "callHistoryManager");
        l.e(abstractC19870l, "actorsThreads");
        l.e(abstractC18777j, "contextCallUtils");
        this.f58875a = abstractC14642b0;
        this.f58876b = abstractC14651d;
        this.f58877c = initiateCallHelper;
        this.f58878d = abstractC19854f;
        this.f58879e = abstractC19870l;
        this.f58880f = abstractC18777j;
    }

    @Override // p193e.p194a.p1275v.p1309p.AbstractC20932g
    /* renamed from: a */
    public String mo10494a() {
        return this.f58875a.mo19831a();
    }

    @Override // p193e.p194a.p1275v.p1309p.AbstractC20932g
    /* renamed from: b */
    public Object mo10493b(Number number, d<? super Boolean> dVar) {
        return this.f58880f.mo14484f(number, dVar);
    }

    @Override // p193e.p194a.p1275v.p1309p.AbstractC20932g
    /* renamed from: c */
    public void mo10492c(String str, Number number, int i) {
        l.e(str, "contactDisplayName");
        l.e(number, "number");
        String m15257L = C18334g0.m15257L(this.f58876b, number, false, 2, null);
        l.e("detailView", "analyticsContext");
        InitiateCallHelper.CallContextOption.ShowOnDemand showOnDemand = InitiateCallHelper.CallContextOption.ShowOnDemand.a;
        l.e(showOnDemand, "callContextOption");
        this.f58877c.m35744b(new InitiateCallHelper.CallOptions(m15257L, "detailView", str, Integer.valueOf(i), false, false, null, false, showOnDemand));
    }

    @Override // p193e.p194a.p1275v.p1309p.AbstractC20932g
    /* renamed from: d */
    public void mo10491d(String str, Number number, int i) {
        l.e(str, "contactDisplayName");
        l.e(number, "number");
        String m15257L = C18334g0.m15257L(this.f58876b, number, false, 2, null);
        l.e("detailView", "analyticsContext");
        this.f58877c.m35744b(new InitiateCallHelper.CallOptions(m15257L, "detailView", str, Integer.valueOf(i), false, false, null, false, InitiateCallHelper.CallContextOption.ShowOnBoarded.a));
    }
}
