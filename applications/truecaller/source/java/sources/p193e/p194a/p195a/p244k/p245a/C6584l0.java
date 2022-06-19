package p193e.p194a.p195a.p244k.p245a;

import com.truecaller.api.services.messenger.p138v1.events.Event;
import com.truecaller.api.services.messenger.p138v1.models.MessageContent;
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
@e(c = "com.truecaller.messaging.transport.im.ImTransport$onMessageSent$1", f = "ImTransport.kt", l = {1431}, m = "invokeSuspend")
/* renamed from: e.a.a.k.a.l0 */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/l0.class */
public final class C6584l0 extends i implements p<i0, d<? super Long>, Object> {

    /* renamed from: e */
    public int f21703e;

    /* renamed from: f */
    public final /* synthetic */ C6587m0 f21704f;

    /* renamed from: g */
    public final /* synthetic */ c0 f21705g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6584l0(C6587m0 c6587m0, c0 c0Var, d dVar) {
        super(2, dVar);
        this.f21704f = c6587m0;
        this.f21705g = c0Var;
    }

    /* renamed from: i */
    public final d<s> m30737i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C6584l0(this.f21704f, this.f21705g, dVar);
    }

    /* renamed from: k */
    public final Object m30736k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C6584l0(this.f21704f, this.f21705g, dVar).m30735s(s.a);
    }

    /* renamed from: s */
    public final Object m30735s(Object obj) {
        a aVar = a.a;
        int i = this.f21703e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC6248w abstractC6248w = (AbstractC6248w) this.f21704f.f21731d.get();
            MessageContent content = ((Event.MessageSent) this.f21705g.a).getContent();
            l.d(content, "messageSent.content");
            String refMessageId = content.getRefMessageId();
            l.d(refMessageId, "messageSent.content.refMessageId");
            this.f21703e = 1;
            Object mo31580C = abstractC6248w.mo31580C(refMessageId, this);
            obj = mo31580C;
            if (mo31580C == aVar) {
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
