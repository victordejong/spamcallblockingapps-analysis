package p193e.p194a.p1080o.p1081a.p1087c.p1088n;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.contextcall.utils.ContextCallAnalyticsContext;
import javax.inject.Inject;
import o3.a;
import p193e.p194a.p1080o.p1097b.AbstractC18705d;
import p193e.p194a.p1080o.p1097b.AbstractC18738k;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p712e4.AbstractC13497p;
import s1.k;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.o.a.c.n.f */
/* loaded from: classes8-dex2jar.jar:e/a/o/a/c/n/f.class */
public final class C18580f extends AbstractC20576b<AbstractC18579e> implements AbstractC18578d {

    /* renamed from: b */
    public final AbstractC18738k f52359b;

    /* renamed from: c */
    public final AbstractC13497p f52360c;

    /* renamed from: d */
    public final a<AbstractC18705d> f52361d;

    @Inject
    public C18580f(AbstractC18738k abstractC18738k, AbstractC13497p abstractC13497p, a<AbstractC18705d> aVar) {
        l.e(abstractC18738k, "contextCallPromoManager");
        l.e(abstractC13497p, "multiSimManager");
        l.e(aVar, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f52359b = abstractC18738k;
        this.f52360c = abstractC13497p;
        this.f52361d = aVar;
    }

    @Override // p193e.p194a.p1080o.p1081a.p1087c.p1088n.AbstractC18578d
    /* renamed from: F */
    public void mo14755F() {
        AbstractC18579e abstractC18579e = (AbstractC18579e) this.f57683a;
        if (abstractC18579e != null) {
            abstractC18579e.mo14756t();
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [e.a.o.a.c.n.e, PV, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC18579e abstractC18579e) {
        ContextCallAnalyticsContext mo14758W4;
        AbstractC18579e abstractC18579e2 = abstractC18579e;
        l.e(abstractC18579e2, "presenterView");
        this.f57683a = abstractC18579e2;
        this.f52359b.mo14570d();
        AbstractC18579e abstractC18579e3 = (AbstractC18579e) this.f57683a;
        if (abstractC18579e3 != null && (mo14758W4 = abstractC18579e3.mo14758W4()) != null) {
            ((AbstractC18705d) this.f52361d.get()).mo14616a("OnBoardingContextCallSetup", i.W(new k[]{new k("Source", mo14758W4.getValue()), new k("Context", "OnBoardingScreen")}));
        }
        if (this.f52360c.mo21740h()) {
            abstractC18579e2.mo14757oa();
        }
    }
}
