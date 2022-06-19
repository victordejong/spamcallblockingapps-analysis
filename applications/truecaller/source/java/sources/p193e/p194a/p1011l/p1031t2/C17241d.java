package p193e.p194a.p1011l.p1031t2;

import javax.inject.Inject;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1220s4.AbstractC20235a;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import s1.z.c.l;
import w3.b.a.b;
/* renamed from: e.a.l.t2.d */
/* loaded from: classes12-dex2jar.jar:e/a/l/t2/d.class */
public final class C17241d {

    /* renamed from: a */
    public final AbstractC20235a f48376a;

    /* renamed from: b */
    public final AbstractC17197v0 f48377b;

    /* renamed from: c */
    public final AbstractC8541a f48378c;

    @Inject
    public C17241d(AbstractC20235a abstractC20235a, AbstractC17197v0 abstractC17197v0, AbstractC8541a abstractC8541a) {
        l.e(abstractC20235a, "remoteConfig");
        l.e(abstractC17197v0, "premiumStateSettings");
        l.e(abstractC8541a, "coreSettings");
        this.f48376a = abstractC20235a;
        this.f48377b = abstractC17197v0;
        this.f48378c = abstractC8541a;
    }

    /* renamed from: a */
    public final boolean m16335a() {
        b D = new b(this.f48378c.getLong("premiumBlockPromoLastShown", 0L)).D(this.f48376a.getInt("reportSpamPromoCoolOffDays_27437", 30));
        l.d(D, "DateTime(coreSettings.ge…   .plusDays(coolOffDays)");
        return !this.f48377b.mo16408H() && D.j();
    }
}
