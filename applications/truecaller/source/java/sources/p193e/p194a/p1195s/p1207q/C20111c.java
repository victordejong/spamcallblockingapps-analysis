package p193e.p194a.p1195s.p1207q;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1195s.p1212s.AbstractC20168a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.callhero_assistant.onboarding.AssistantOnboardingPresenter$onAttachView$1", f = "AssistantOnboardingPresenter.kt", l = {23}, m = "invokeSuspend")
/* renamed from: e.a.s.q.c */
/* loaded from: classes17-dex2jar.jar:e/a/s/q/c.class */
public final class C20111c extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f56725e;

    /* renamed from: f */
    public final /* synthetic */ C20112d f56726f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20111c(C20112d c20112d, d dVar) {
        super(2, dVar);
        this.f56726f = c20112d;
    }

    /* renamed from: i */
    public final d<s> m11528i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C20111c(this.f56726f, dVar);
    }

    /* renamed from: k */
    public final Object m11527k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C20111c(this.f56726f, dVar).m11526s(s.a);
    }

    /* renamed from: s */
    public final Object m11526s(Object obj) {
        a aVar = a.a;
        int i = this.f56725e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC20168a abstractC20168a = this.f56726f.f56728e;
            this.f56725e = 1;
            if (abstractC20168a.mo11445f(this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        return s.a;
    }
}
