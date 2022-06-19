package p193e.p194a.p195a.p286y0;

import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p195a.p231g.AbstractC6248w;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.c0;
import s1.z.c.l;
@e(c = "com.truecaller.messaging.notifications.RegularMessagingNotificationsManagerImpl$dismissDeletedConversations$1", f = "RegularMessagingNotificationsManager.kt", l = {635}, m = "invokeSuspend")
/* renamed from: e.a.a.y0.b0 */
/* loaded from: classes7-dex2jar.jar:e/a/a/y0/b0.class */
public final class C7302b0 extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public Object f23298e;

    /* renamed from: f */
    public int f23299f;

    /* renamed from: g */
    public final /* synthetic */ C7306d0 f23300g;

    /* renamed from: h */
    public final /* synthetic */ c0 f23301h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7302b0(C7306d0 c7306d0, c0 c0Var, d dVar) {
        super(2, dVar);
        this.f23300g = c7306d0;
        this.f23301h = c0Var;
    }

    /* renamed from: i */
    public final d<s> m29816i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C7302b0(this.f23300g, this.f23301h, dVar);
    }

    /* renamed from: k */
    public final Object m29815k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C7302b0(this.f23300g, this.f23301h, dVar).m29814s(s.a);
    }

    /* renamed from: s */
    public final Object m29814s(Object obj) {
        Object obj2;
        List list;
        a aVar = a.a;
        int i = this.f23299f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            List list2 = (List) this.f23301h.a;
            this.f23298e = list2;
            this.f23299f = 1;
            obj2 = ((AbstractC6248w) this.f23300g.f23321o.get()).mo31574b((List) this.f23301h.a, this);
            if (obj2 == aVar) {
                return aVar;
            }
            list = list2;
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            list = (Iterable) this.f23298e;
            C25225a.m3932a3(obj);
            obj2 = obj;
        }
        List Z = s1.u.i.Z(list, (Iterable) obj2);
        if (!Z.isEmpty()) {
            this.f23300g.mo29747a(Z);
        }
        return s.a;
    }
}
