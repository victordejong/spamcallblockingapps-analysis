package p193e.p194a.p292a4;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1041l0.p1046w.AbstractC17392a;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
@e(c = "com.truecaller.init.TrueAppInitManager$onAppCreate$42", f = "TrueAppInitManager.kt", l = {414}, m = "invokeSuspend")
/* renamed from: e.a.a4.b0 */
/* loaded from: classes10-dex2jar.jar:e/a/a4/b0.class */
public final class C7431b0 extends i implements l<d<? super s>, Object> {

    /* renamed from: e */
    public int f23603e;

    /* renamed from: f */
    public final /* synthetic */ C7452i0 f23604f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7431b0(C7452i0 c7452i0, d dVar) {
        super(1, dVar);
        this.f23604f = c7452i0;
    }

    /* renamed from: d */
    public final Object m29639d(Object obj) {
        d dVar = (d) obj;
        s1.z.c.l.e(dVar, "completion");
        return new C7431b0(this.f23604f, dVar).m29637s(s.a);
    }

    /* renamed from: l */
    public final d<s> m29638l(d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C7431b0(this.f23604f, dVar);
    }

    /* renamed from: s */
    public final Object m29637s(Object obj) {
        a aVar = a.a;
        int i = this.f23603e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            this.f23603e = 1;
            if (((AbstractC17392a) this.f23604f.f23661I.get()).mo16144a(this) == aVar) {
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
