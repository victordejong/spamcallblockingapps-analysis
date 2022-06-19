package p193e.p194a.p1011l.p1025p2;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.p1023n2.AbstractC16987e;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.premium.data.NewPurchasesObserver$destroyBilling$1", f = "NewPurchasesObserver.kt", l = {86}, m = "invokeSuspend")
/* renamed from: e.a.l.p2.r */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/r.class */
public final class C17167r extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f48161e;

    /* renamed from: f */
    public final /* synthetic */ C17173s f48162f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C17167r(C17173s c17173s, d dVar) {
        super(2, dVar);
        this.f48162f = c17173s;
    }

    /* renamed from: i */
    public final d<s> m16464i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C17167r(this.f48162f, dVar);
    }

    /* renamed from: k */
    public final Object m16463k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C17167r(this.f48162f, dVar).m16462s(s.a);
    }

    /* renamed from: s */
    public final Object m16462s(Object obj) {
        a aVar = a.a;
        int i = this.f48161e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            this.f48161e = 1;
            if (((AbstractC16987e) this.f48162f.f48173e.get()).mo16671a(this) == aVar) {
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
