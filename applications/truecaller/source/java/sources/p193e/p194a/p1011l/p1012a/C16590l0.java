package p193e.p194a.p1011l.p1012a;

import javax.inject.Inject;
import p193e.p194a.p1220s4.AbstractC20235a;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import s1.z.c.l;
import w3.b.a.b;
/* renamed from: e.a.l.a.l0 */
/* loaded from: classes12-dex2jar.jar:e/a/l/a/l0.class */
public final class C16590l0 {

    /* renamed from: a */
    public final AbstractC8541a f46616a;

    /* renamed from: b */
    public final AbstractC20235a f46617b;

    @Inject
    public C16590l0(AbstractC8541a abstractC8541a, AbstractC20235a abstractC20235a) {
        l.e(abstractC8541a, "coreSettings");
        l.e(abstractC20235a, "remoteConfig");
        this.f46616a = abstractC8541a;
        this.f46617b = abstractC20235a;
    }

    /* renamed from: a */
    public final b m17213a() {
        b D = new b(this.f46616a.getLong("profileVerificationDate", 0L)).D(this.f46617b.getInt("welcomeOfferEligibleDayCount_31777", 3));
        l.d(D, "userRegistrationDate.plu…_OFFER_ELIGIBLE_DAYS, 3))");
        return D;
    }
}
