package p193e.p194a.p1011l.p1017d.p1019b;

import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1193r5.AbstractC19954i0;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import s1.z.c.l;
/* renamed from: e.a.l.d.b.e */
/* loaded from: classes12-dex2jar.jar:e/a/l/d/b/e.class */
public final class C16846e extends AbstractC20576b {

    /* renamed from: b */
    public final String f47233b;

    /* renamed from: c */
    public final AbstractC17197v0 f47234c;

    /* renamed from: d */
    public final AbstractC19954i0 f47235d;

    @Inject
    public C16846e(@Named("name") String str, AbstractC17197v0 abstractC17197v0, AbstractC19954i0 abstractC19954i0) {
        l.e(str, AnalyticsConstants.NAME);
        l.e(abstractC17197v0, "premiumStateSettings");
        l.e(abstractC19954i0, "whoViewedMeManager");
        this.f47233b = str;
        this.f47234c = abstractC17197v0;
        this.f47235d = abstractC19954i0;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, java.lang.Object, e.a.l.d.b.c] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(Object obj) {
        ?? r0 = (AbstractC16844c) obj;
        l.e((Object) r0, "presenterView");
        this.f57683a = r0;
        r0.setName(this.f47233b);
    }
}
