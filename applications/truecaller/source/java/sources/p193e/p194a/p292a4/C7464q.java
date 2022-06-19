package p193e.p194a.p292a4;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.AbstractC19247m0;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.init.SuspendableAppInitInvocation$invoke$2", f = "AppInitInvocation.kt", l = {43}, m = "invokeSuspend")
/* renamed from: e.a.a4.q */
/* loaded from: classes10-dex2jar.jar:e/a/a4/q.class */
public final class C7464q extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f23714e;

    /* renamed from: f */
    public final /* synthetic */ C7465r f23715f;

    /* renamed from: g */
    public final /* synthetic */ AbstractC19247m0 f23716g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7464q(C7465r c7465r, AbstractC19247m0 abstractC19247m0, d dVar) {
        super(2, dVar);
        this.f23715f = c7465r;
        this.f23716g = abstractC19247m0;
    }

    /* renamed from: i */
    public final d<s> m29585i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C7464q(this.f23715f, this.f23716g, dVar);
    }

    /* renamed from: k */
    public final Object m29584k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C7464q(this.f23715f, this.f23716g, dVar).m29583s(s.a);
    }

    /* renamed from: s */
    public final Object m29583s(Object obj) {
        a aVar = a.a;
        int i = this.f23714e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C7465r c7465r = this.f23715f;
            s1.z.b.l<d<? super s>, Object> lVar = c7465r.f23720d;
            String str = c7465r.f23717a;
            AbstractC19247m0 abstractC19247m0 = this.f23716g;
            this.f23714e = 1;
            if (C17891a1.C17902k.m15578r0(lVar, str, abstractC19247m0, this) == aVar) {
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
