package p193e.p194a.p1195s.p1207q.p1209f;

import java.util.Iterator;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p682e.C12864a2;
import q3.a.i0;
import s1.d0.j;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.callhero_assistant.onboarding.validation.OnboardingStepValidationPresenter$startTimer$1", f = "OnboardingStepValidationPresenter.kt", l = {94}, m = "invokeSuspend")
/* renamed from: e.a.s.q.f.f */
/* loaded from: classes17-dex2jar.jar:e/a/s/q/f/f.class */
public final class C20141f extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public Object f56782e;

    /* renamed from: f */
    public int f56783f;

    /* renamed from: g */
    public final /* synthetic */ C20139e f56784g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20141f(C20139e c20139e, d dVar) {
        super(2, dVar);
        this.f56784g = c20139e;
    }

    /* renamed from: i */
    public final d<s> m11492i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C20141f(this.f56784g, dVar);
    }

    /* renamed from: k */
    public final Object m11491k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C20141f(this.f56784g, dVar).m11490s(s.a);
    }

    /* renamed from: s */
    public final Object m11490s(Object obj) {
        Iterator it;
        a aVar = a.a;
        int i = this.f56783f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            it = j.f(30, 0).iterator();
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
            it = (Iterator) this.f56782e;
        }
        while (it.hasNext()) {
            int intValue = ((Number) it.next()).intValue();
            AbstractC20138d abstractC20138d = (AbstractC20138d) this.f56784g.f57683a;
            if (abstractC20138d != null) {
                abstractC20138d.mo11501en(String.valueOf(intValue));
            }
            this.f56782e = it;
            this.f56783f = 1;
            if (s1.a.a.a.v0.f.d.D0(1000L, this) == aVar) {
                return aVar;
            }
        }
        C12864a2.m22554g0(this.f56784g.f56773f, 2131886719, null, 0, 6, null);
        AbstractC20138d abstractC20138d2 = (AbstractC20138d) this.f56784g.f57683a;
        if (abstractC20138d2 != null) {
            abstractC20138d2.mo11501en("");
        }
        AbstractC20138d abstractC20138d3 = (AbstractC20138d) this.f56784g.f57683a;
        if (abstractC20138d3 != null) {
            abstractC20138d3.mo11502Uk(true);
        }
        AbstractC20138d abstractC20138d4 = (AbstractC20138d) this.f56784g.f57683a;
        if (abstractC20138d4 != null) {
            abstractC20138d4.mo11499xa();
        }
        return s.a;
    }
}
