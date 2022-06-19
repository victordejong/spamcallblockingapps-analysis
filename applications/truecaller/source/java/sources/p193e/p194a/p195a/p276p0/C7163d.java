package p193e.p194a.p195a.p276p0;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p526c.p529e.C9980a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.c0;
import s1.z.c.l;
@e(c = "com.truecaller.messaging.categorizer.InsightsImSyncHelper$insertIm$1", f = "InsightsImSyncHelper.kt", l = {31}, m = "invokeSuspend")
/* renamed from: e.a.a.p0.d */
/* loaded from: classes10-dex2jar.jar:e/a/a/p0/d.class */
public final class C7163d extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f22994e;

    /* renamed from: f */
    public final /* synthetic */ c0 f22995f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7163d(c0 c0Var, d dVar) {
        super(2, dVar);
        this.f22995f = c0Var;
    }

    /* renamed from: i */
    public final d<s> m30041i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C7163d(this.f22995f, dVar);
    }

    /* renamed from: k */
    public final Object m30040k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C7163d(this.f22995f, dVar).m30039s(s.a);
    }

    /* renamed from: s */
    public final Object m30039s(Object obj) {
        a aVar = a.a;
        int i = this.f22994e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            this.f22994e = 1;
            if (((C9980a) this.f22995f.a).m26981a(this) == aVar) {
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
