package p193e.p194a.p195a.p197a1;

import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.data.types.Conversation;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1146q2.AbstractC19510i0;
import p193e.p194a.p1146q2.p1155y0.p1156a.C19597a;
import p193e.p194a.p195a.p231g.AbstractC6248w;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.messaging.quickreply.QuickReplyManager$initConversation$1", f = "QuickReplyManager.kt", l = {51}, m = "invokeSuspend")
/* renamed from: e.a.a.a1.b */
/* loaded from: classes7-dex2jar.jar:e/a/a/a1/b.class */
public final class C4911b extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f16667e;

    /* renamed from: f */
    public final /* synthetic */ C4914e f16668f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4911b(C4914e c4914e, d dVar) {
        super(2, dVar);
        this.f16668f = c4914e;
    }

    /* renamed from: i */
    public final d<s> m34248i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C4911b(this.f16668f, dVar);
    }

    /* renamed from: k */
    public final Object m34247k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C4911b(this.f16668f, dVar).m34246s(s.a);
    }

    /* renamed from: s */
    public final Object m34246s(Object obj) {
        a aVar = a.a;
        int i = this.f16667e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC6248w abstractC6248w = (AbstractC6248w) this.f16668f.f16678f.get();
            long j = this.f16668f.f16677e;
            this.f16667e = 1;
            Object mo31566j = abstractC6248w.mo31566j(j, this);
            obj = mo31566j;
            if (mo31566j == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        Conversation conversation = (Conversation) obj;
        C4914e c4914e = this.f16668f;
        Objects.requireNonNull(c4914e);
        if (conversation != null) {
            s1.a.a.a.v0.f.d.w2(h1.a, c4914e.f16676d, (j0) null, new C4912c(c4914e, conversation, null), 2, (Object) null);
            int i2 = conversation.f13219u;
            Participant[] participantArr = conversation.f13211m;
            l.d(participantArr, "conversation.participants");
            String str = conversation.f13206h;
            l.d(str, "conversation.latestSimToken");
            int i3 = 0;
            if (i2 != 0) {
                i3 = c4914e.f16680h.mo30548n(false, participantArr, false);
            }
            c4914e.f16675c = i3;
            if (i3 != 2) {
                c4914e.f16681i.m29824a(str);
            }
        }
        AbstractC19510i0 abstractC19510i0 = this.f16668f.f16682j;
        l.e("quickReply", "viewId");
        abstractC19510i0.mo13224b(new C19597a("quickReply", null, null));
        return s.a;
    }
}
