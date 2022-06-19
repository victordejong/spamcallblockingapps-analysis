package p193e.p194a.p292a4;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p372b0.p424n.AbstractC8531g;
import p193e.p194a.p372b0.p424n.C8524c;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
@e(c = "com.truecaller.init.TrueAppInitManager$onAppCreate$54", f = "TrueAppInitManager.kt", l = {476}, m = "invokeSuspend")
/* renamed from: e.a.a4.g0 */
/* loaded from: classes10-dex2jar.jar:e/a/a4/g0.class */
public final class C7448g0 extends i implements l<d<? super s>, Object> {

    /* renamed from: e */
    public int f23647e;

    /* renamed from: f */
    public final /* synthetic */ C7452i0 f23648f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7448g0(C7452i0 c7452i0, d dVar) {
        super(1, dVar);
        this.f23648f = c7452i0;
    }

    /* renamed from: d */
    public final Object m29599d(Object obj) {
        d dVar = (d) obj;
        s1.z.c.l.e(dVar, "completion");
        return new C7448g0(this.f23648f, dVar).m29597s(s.a);
    }

    /* renamed from: l */
    public final d<s> m29598l(d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C7448g0(this.f23648f, dVar);
    }

    /* renamed from: s */
    public final Object m29597s(Object obj) {
        a aVar = a.a;
        int i = this.f23647e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            this.f23647e = 1;
            Object mo15426a = ((AbstractC8531g) this.f23648f.f23668P.get()).mo15426a(this);
            obj = mo15426a;
            if (mo15426a == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        ((AbstractC8541a) this.f23648f.f23660H.get()).putBoolean("getProfileRequestDone", ((C8524c) obj).f26315a);
        return s.a;
    }
}
