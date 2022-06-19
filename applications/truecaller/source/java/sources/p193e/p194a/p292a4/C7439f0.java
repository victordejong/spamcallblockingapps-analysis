package p193e.p194a.p292a4;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p852i.p879e.p893k.AbstractC15155a;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
@e(c = "com.truecaller.init.TrueAppInitManager$onAppCreate$52", f = "TrueAppInitManager.kt", l = {460, 461}, m = "invokeSuspend")
/* renamed from: e.a.a4.f0 */
/* loaded from: classes10-dex2jar.jar:e/a/a4/f0.class */
public final class C7439f0 extends i implements l<d<? super s>, Object> {

    /* renamed from: e */
    public Object f23617e;

    /* renamed from: f */
    public int f23618f;

    /* renamed from: g */
    public final /* synthetic */ C7452i0 f23619g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7439f0(C7452i0 c7452i0, d dVar) {
        super(1, dVar);
        this.f23619g = c7452i0;
    }

    /* renamed from: d */
    public final Object m29626d(Object obj) {
        d dVar = (d) obj;
        s1.z.c.l.e(dVar, "completion");
        return new C7439f0(this.f23619g, dVar).m29624s(s.a);
    }

    /* renamed from: l */
    public final d<s> m29625l(d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C7439f0(this.f23619g, dVar);
    }

    /* renamed from: s */
    public final Object m29624s(Object obj) {
        AbstractC15155a abstractC15155a;
        a aVar = a.a;
        int i = this.f23618f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC15155a abstractC15155a2 = (AbstractC15155a) this.f23619g.f23667O.get();
            abstractC15155a2.m19123b();
            this.f23617e = abstractC15155a2;
            this.f23618f = 1;
            abstractC15155a = abstractC15155a2;
            if (abstractC15155a2.m19124a(this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            C25225a.m3932a3(obj);
            return s.a;
        } else {
            C25225a.m3932a3(obj);
            abstractC15155a = (AbstractC15155a) this.f23617e;
        }
        this.f23617e = null;
        this.f23618f = 2;
        if (abstractC15155a.m19117h(this) == aVar) {
            return aVar;
        }
        return s.a;
    }
}
