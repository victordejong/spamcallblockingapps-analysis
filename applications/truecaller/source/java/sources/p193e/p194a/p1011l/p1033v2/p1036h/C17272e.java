package p193e.p194a.p1011l.p1033v2.p1036h;

import com.truecaller.premium.PremiumLaunchContext;
import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.p1025p2.C17107j;
import p193e.p194a.p1011l.p1025p2.C17119k;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.premium.ui.embedded.EmbeddedPurchasePresenter$mayBeShowSocialProofView$1", f = "EmbeddedPurchasePresenter.kt", l = {96}, m = "invokeSuspend")
/* renamed from: e.a.l.v2.h.e */
/* loaded from: classes12-dex2jar.jar:e/a/l/v2/h/e.class */
public final class C17272e extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public Object f48439e;

    /* renamed from: f */
    public int f48440f;

    /* renamed from: g */
    public final /* synthetic */ C17274g f48441g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C17272e(C17274g c17274g, d dVar) {
        super(2, dVar);
        this.f48441g = c17274g;
    }

    /* renamed from: i */
    public final d<s> m16313i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C17272e(this.f48441g, dVar);
    }

    /* renamed from: k */
    public final Object m16312k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C17272e(this.f48441g, dVar).m16311s(s.a);
    }

    /* renamed from: s */
    public final Object m16311s(Object obj) {
        Object obj2;
        AbstractC17271d abstractC17271d;
        a aVar = a.a;
        int i = this.f48440f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C17274g c17274g = this.f48441g;
            PremiumLaunchContext premiumLaunchContext = c17274g.f48446e;
            if (premiumLaunchContext == null) {
                l.l("viewLaunchContext");
                throw null;
            }
            if (premiumLaunchContext == PremiumLaunchContext.WHO_VIEWED_ME && !c17274g.f48449h.mo16408H() && (!this.f48441g.f48466y.m11725a())) {
                C17274g c17274g2 = this.f48441g;
                AbstractC17271d abstractC17271d2 = (AbstractC17271d) c17274g2.f57683a;
                if (abstractC17271d2 != null) {
                    C17119k c17119k = c17274g2.f48461t;
                    this.f48439e = abstractC17271d2;
                    this.f48440f = 1;
                    obj2 = s1.a.a.a.v0.f.d.a4(c17119k.f48055d, new C17107j(c17119k, null), this);
                    if (obj2 == aVar) {
                        return aVar;
                    }
                    abstractC17271d = abstractC17271d2;
                }
            }
            return s.a;
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            abstractC17271d = (AbstractC17271d) this.f48439e;
            C25225a.m3932a3(obj);
            obj2 = obj;
        }
        abstractC17271d.mo16319Q2((List) obj2, this.f48441g.f48461t.f48054c.mo16884i1());
        return s.a;
    }
}
