package p193e.p194a.p195a.p198b;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p195a.p258m.AbstractC6798d1;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.messaging.messaginglist.PromotionalTabPromoStateManagerImpl$getPromoStateInternal$2", f = "PromoStateManager.kt", l = {166}, m = "invokeSuspend")
/* renamed from: e.a.a.b.h0 */
/* loaded from: classes7-dex2jar.jar:e/a/a/b/h0.class */
public final class C4960h0 extends i implements p<i0, d<? super AbstractC6798d1>, Object> {

    /* renamed from: e */
    public int f16872e;

    /* renamed from: f */
    public final /* synthetic */ C4957g0 f16873f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4960h0(C4957g0 c4957g0, d dVar) {
        super(2, dVar);
        this.f16873f = c4957g0;
    }

    /* renamed from: i */
    public final d<s> m34191i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C4960h0(this.f16873f, dVar);
    }

    /* renamed from: k */
    public final Object m34190k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C4960h0(this.f16873f, dVar).m34189s(s.a);
    }

    /* renamed from: s */
    public final Object m34189s(Object obj) {
        a aVar = a.a;
        int i = this.f16872e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C4957g0 c4957g0 = this.f16873f;
            this.f16872e = 1;
            Object m34193b = c4957g0.m34193b(this);
            obj = m34193b;
            if (m34193b == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        AbstractC6798d1.C6820p c6820p = (AbstractC6798d1) obj;
        if (c6820p == null) {
            c6820p = AbstractC6798d1.C6820p.f22367b;
        }
        return c6820p;
    }
}
