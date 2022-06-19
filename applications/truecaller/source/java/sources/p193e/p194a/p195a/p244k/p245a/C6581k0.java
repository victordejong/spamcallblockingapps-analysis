package p193e.p194a.p195a.p244k.p245a;

import com.truecaller.api.services.messenger.p138v1.events.Event;
import com.truecaller.messaging.data.types.Message;
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
@e(c = "com.truecaller.messaging.transport.im.ImTransport$onMessageEdited$message$1", f = "ImTransport.kt", l = {1494}, m = "invokeSuspend")
/* renamed from: e.a.a.k.a.k0 */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/k0.class */
public final class C6581k0 extends i implements p<i0, d<? super Message>, Object> {

    /* renamed from: e */
    public int f21695e;

    /* renamed from: f */
    public final /* synthetic */ C6587m0 f21696f;

    /* renamed from: g */
    public final /* synthetic */ c0 f21697g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6581k0(C6587m0 c6587m0, c0 c0Var, d dVar) {
        super(2, dVar);
        this.f21696f = c6587m0;
        this.f21697g = c0Var;
    }

    /* renamed from: i */
    public final d<s> m30740i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C6581k0(this.f21696f, this.f21697g, dVar);
    }

    /* renamed from: k */
    public final Object m30739k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C6581k0(this.f21696f, this.f21697g, dVar).m30738s(s.a);
    }

    /* renamed from: s */
    public final Object m30738s(Object obj) {
        a aVar = a.a;
        int i = this.f21695e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC6248w abstractC6248w = (AbstractC6248w) this.f21696f.f21731d.get();
            String messageId = ((Event.MessageEdited) this.f21697g.a).getMessageId();
            l.d(messageId, "messageEdited.messageId");
            this.f21695e = 1;
            Object mo31578E = abstractC6248w.mo31578E(messageId, this);
            obj = mo31578E;
            if (mo31578E == aVar) {
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
