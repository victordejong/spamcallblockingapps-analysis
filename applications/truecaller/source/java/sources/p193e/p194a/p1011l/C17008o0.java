package p193e.p194a.p1011l;

import com.truecaller.clevertap.CleverTapManager;
import java.util.Set;
import javax.inject.Inject;
import p193e.p194a.p1011l.p1023n2.C16993f;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1011l.p1030s2.AbstractC17229a;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1146q2.p1151d1.AbstractC19494d;
import p193e.p194a.p1161q5.AbstractC19688d;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1193r5.C19966n0;
import p193e.p194a.p1340w2.C21188a;
import p193e.p194a.p613c0.C10912h;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.l.o0 */
/* loaded from: classes12-dex2jar.jar:e/a/l/o0.class */
public final class C17008o0 implements AbstractC16965n0 {

    /* renamed from: a */
    public Set<? extends AbstractC16965n0> f47711a;

    @Inject
    public C17008o0(AbstractC17197v0 abstractC17197v0, AbstractC19494d abstractC19494d, AbstractC19854f<AbstractC19463a0> abstractC19854f, C21188a c21188a, AbstractC17229a abstractC17229a, CleverTapManager cleverTapManager, C17007o c17007o, AbstractC19688d abstractC19688d, C19966n0 c19966n0, C10912h c10912h) {
        l.e(abstractC17197v0, "premiumStateSettings");
        l.e(abstractC19494d, "fireBaseLogger");
        l.e(abstractC19854f, "eventTracker");
        l.e(c21188a, "appsFlyerEventsTracker");
        l.e(abstractC17229a, "firebasePersonalisationManager");
        l.e(cleverTapManager, "cleverTapManager");
        l.e(c17007o, "firebasePremiumFrequencyLogger");
        l.e(abstractC19688d, "whatsAppCallerIdManager");
        l.e(c19966n0, "revealProfileViewAbTestManager");
        l.e(c10912h, "experimentRegistry");
        this.f47711a = i.z0(new AbstractC16965n0[]{new C16948k2(abstractC19854f, abstractC17229a), new C16955m(abstractC19494d, abstractC17197v0, abstractC17229a), new C16964n(abstractC19688d, c19966n0, c10912h), new C16941j(c21188a), new C16945k(cleverTapManager), c17007o});
    }

    @Override // p193e.p194a.p1011l.AbstractC16965n0
    /* renamed from: a */
    public void mo16647a(C16956m0 c16956m0) {
        l.e(c16956m0, "params");
        String str = "logLaunch() called with: params = [" + c16956m0 + ']';
        for (AbstractC16965n0 abstractC16965n0 : this.f47711a) {
            abstractC16965n0.mo16647a(c16956m0);
        }
    }

    @Override // p193e.p194a.p1011l.AbstractC16965n0
    /* renamed from: b */
    public void mo16646b(C16956m0 c16956m0) {
        l.e(c16956m0, "params");
        String str = "logInitiatedCheckout() called with: params = [" + c16956m0 + ']';
        for (AbstractC16965n0 abstractC16965n0 : this.f47711a) {
            abstractC16965n0.mo16646b(c16956m0);
        }
    }

    @Override // p193e.p194a.p1011l.AbstractC16965n0
    /* renamed from: c */
    public void mo16645c(C16993f c16993f) {
        l.e(c16993f, "subscription");
        String str = "logRenewed() called with: subscription = [" + c16993f + ']';
        for (AbstractC16965n0 abstractC16965n0 : this.f47711a) {
            abstractC16965n0.mo16645c(c16993f);
        }
    }

    @Override // p193e.p194a.p1011l.AbstractC16965n0
    /* renamed from: d */
    public void mo16644d(C16956m0 c16956m0) {
        l.e(c16956m0, "params");
        String str = "logPurchase() called with: params = [" + c16956m0 + ']';
        for (AbstractC16965n0 abstractC16965n0 : this.f47711a) {
            abstractC16965n0.mo16644d(c16956m0);
        }
    }
}
