package p193e.p194a.p1080o.p1081a.p1094h;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.common.account.Region;
import com.truecaller.contextcall.C3771R;
import com.truecaller.contextcall.utils.ContextCallAnalyticsContext;
import javax.inject.Inject;
import o3.a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1080o.p1097b.AbstractC18705d;
import p193e.p194a.p1080o.p1097b.AbstractC18746o;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p372b0.p406e.AbstractC8426f;
import s1.k;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.o.a.h.j */
/* loaded from: classes8-dex2jar.jar:e/a/o/a/h/j.class */
public final class C18651j extends AbstractC20576b<AbstractC18647f> implements AbstractC18646e {

    /* renamed from: b */
    public final AbstractC8426f f52467b;

    /* renamed from: c */
    public final AbstractC19223c0 f52468c;

    /* renamed from: d */
    public final AbstractC18746o f52469d;

    /* renamed from: e */
    public final a<AbstractC18705d> f52470e;

    @Inject
    public C18651j(AbstractC8426f abstractC8426f, AbstractC19223c0 abstractC19223c0, AbstractC18746o abstractC18746o, a<AbstractC18705d> aVar) {
        l.e(abstractC8426f, "regionUtils");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC18746o, "settings");
        l.e(aVar, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f52467b = abstractC8426f;
        this.f52468c = abstractC19223c0;
        this.f52469d = abstractC18746o;
        this.f52470e = aVar;
    }

    @Override // p193e.p194a.p1080o.p1081a.p1094h.AbstractC18646e
    /* renamed from: D */
    public void mo14669D(String str) {
        l.e(str, "url");
        AbstractC18647f abstractC18647f = (AbstractC18647f) this.f57683a;
        if (abstractC18647f != null) {
            abstractC18647f.mo14676b(str);
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, java.lang.Object, e.a.o.a.h.f] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC18647f abstractC18647f) {
        ContextCallAnalyticsContext mo14677W4;
        AbstractC18647f abstractC18647f2 = abstractC18647f;
        l.e(abstractC18647f2, "presenterView");
        this.f57683a = abstractC18647f2;
        Region mo28592f = this.f52467b.mo28592f();
        String m15247U = C18334g0.m15247U(mo28592f);
        String m15254N = C18334g0.m15254N(mo28592f);
        l.e(m15247U, "termsOfService");
        l.e(m15254N, "privacyPolicy");
        AbstractC18647f abstractC18647f3 = (AbstractC18647f) this.f57683a;
        if (abstractC18647f3 != null) {
            String mo13768b = this.f52468c.mo13768b(C3771R.string.context_call_community_guideline_description, m15247U, m15254N, "https://www.truecaller.com/community-guidelines/call-reason");
            l.d(mo13768b, "resourceProvider.getStri…Y_GUIDELINE\n            )");
            abstractC18647f3.mo14675d(mo13768b);
        }
        AbstractC18647f abstractC18647f4 = (AbstractC18647f) this.f57683a;
        if (abstractC18647f4 == null || (mo14677W4 = abstractC18647f4.mo14677W4()) == null) {
            return;
        }
        ((AbstractC18705d) this.f52470e.get()).mo14616a("OnBoardingContextCallSetup", i.W(new k[]{new k("Source", mo14677W4.getValue()), new k("Context", "CommunityGuidelineScreen")}));
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        AbstractC18647f abstractC18647f = (AbstractC18647f) this.f57683a;
        if (abstractC18647f != null) {
            abstractC18647f.mo14673ys(C17891a1.C17902k.m15681F(this.f52469d, "guidelineIsAgreed", false, 2, null));
        }
        this.f57683a = null;
    }

    @Override // p193e.p194a.p1080o.p1081a.p1094h.AbstractC18646e
    /* renamed from: t6 */
    public void mo14668t6() {
        this.f52469d.putBoolean("guidelineIsAgreed", true);
        AbstractC18647f abstractC18647f = (AbstractC18647f) this.f57683a;
        if (abstractC18647f != null) {
            abstractC18647f.mo14674t();
        }
    }
}
