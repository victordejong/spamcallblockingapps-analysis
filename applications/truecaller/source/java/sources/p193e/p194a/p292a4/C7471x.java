package p193e.p194a.p292a4;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p677d3.AbstractC12589h;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
@e(c = "com.truecaller.init.TrueAppInitManager$onAppCreate$38", f = "TrueAppInitManager.kt", l = {394}, m = "invokeSuspend")
/* renamed from: e.a.a4.x */
/* loaded from: classes10-dex2jar.jar:e/a/a4/x.class */
public final class C7471x extends i implements l<d<? super s>, Object> {

    /* renamed from: e */
    public int f23728e;

    /* renamed from: f */
    public final /* synthetic */ C7452i0 f23729f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7471x(C7452i0 c7452i0, d dVar) {
        super(1, dVar);
        this.f23729f = c7452i0;
    }

    /* renamed from: d */
    public final Object m29573d(Object obj) {
        d dVar = (d) obj;
        s1.z.c.l.e(dVar, "completion");
        return new C7471x(this.f23729f, dVar).m29571s(s.a);
    }

    /* renamed from: l */
    public final d<s> m29572l(d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C7471x(this.f23729f, dVar);
    }

    /* renamed from: s */
    public final Object m29571s(Object obj) {
        a aVar = a.a;
        int i = this.f23728e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            this.f23728e = 1;
            if (((AbstractC12589h) this.f23729f.f23654B.get()).mo22851c(this) == aVar) {
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
