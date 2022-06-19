package p193e.p194a.p195a;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p195a.p244k.AbstractC6708t;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.messaging.MessagingActivitiesListener$messageSync$1", f = "MessagingActivitiesListener.kt", l = {64}, m = "invokeSuspend")
/* renamed from: e.a.a.b0 */
/* loaded from: classes10-dex2jar.jar:e/a/a/b0.class */
public final class C5005b0 extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f17105e;

    /* renamed from: f */
    public final /* synthetic */ C5839c0 f17106f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5005b0(C5839c0 c5839c0, d dVar) {
        super(2, dVar);
        this.f17106f = c5839c0;
    }

    /* renamed from: i */
    public final d<s> m34016i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C5005b0(this.f17106f, dVar);
    }

    /* renamed from: k */
    public final Object m34015k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C5005b0(this.f17106f, dVar).m34014s(s.a);
    }

    /* renamed from: s */
    public final Object m34014s(Object obj) {
        a aVar = a.a;
        int i = this.f17105e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            this.f17105e = 1;
            if (s1.a.a.a.v0.f.d.D0(5000L, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        ((AbstractC6708t) this.f17106f.f19582d.get()).mo30538y();
        return s.a;
    }
}
