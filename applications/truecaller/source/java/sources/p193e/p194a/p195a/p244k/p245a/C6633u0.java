package p193e.p194a.p195a.p244k.p245a;

import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p195a.p231g.AbstractC6248w;
import p193e.p194a.p195a.p231g.C6112e0;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.messaging.transport.im.ImUnreadRemindersManagerImpl$showImUnreadReminderForPersonalChats$unreadConversations$1", f = "ImUnreadRemindersManager.kt", l = {105}, m = "invokeSuspend")
/* renamed from: e.a.a.k.a.u0 */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/u0.class */
public final class C6633u0 extends i implements p<i0, d<? super List<? extends C6112e0>>, Object> {

    /* renamed from: e */
    public int f21897e;

    /* renamed from: f */
    public final /* synthetic */ C6636v0 f21898f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6633u0(C6636v0 c6636v0, d dVar) {
        super(2, dVar);
        this.f21898f = c6636v0;
    }

    /* renamed from: i */
    public final d<s> m30615i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C6633u0(this.f21898f, dVar);
    }

    /* renamed from: k */
    public final Object m30614k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C6633u0(this.f21898f, dVar).m30613s(s.a);
    }

    /* renamed from: s */
    public final Object m30613s(Object obj) {
        a aVar = a.a;
        int i = this.f21897e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            this.f21897e = 1;
            Object mo31563m = ((AbstractC6248w) this.f21898f.f21901b.get()).mo31563m(this);
            obj = mo31563m;
            if (mo31563m == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        return obj;
    }
}
