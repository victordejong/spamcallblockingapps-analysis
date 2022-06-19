package p193e.p194a.p195a.p244k.p256z;

import com.truecaller.messaging.data.types.Message;
import o3.a;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p195a.p231g.AbstractC6233m;
import p193e.p194a.p195a.p244k.AbstractC6696o;
import p193e.p194a.p195a.p244k.AbstractC6704q;
import p193e.p194a.p195a.p284w0.AbstractC7290a;
import s1.z.c.l;
import w3.b.a.b;
import w3.b.a.e0.e;
/* renamed from: e.a.a.k.z.a */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/z/a.class */
public abstract class AbstractC6748a implements AbstractC6753d {

    /* renamed from: a */
    public final a<AbstractC19854f<AbstractC6233m>> f22249a;

    /* renamed from: b */
    public final AbstractC7290a f22250b;

    public AbstractC6748a(a<AbstractC19854f<AbstractC6233m>> aVar, AbstractC7290a abstractC7290a) {
        l.e(aVar, "storage");
        l.e(abstractC7290a, "messagesMonitor");
        this.f22249a = aVar;
        this.f22250b = abstractC7290a;
    }

    /* renamed from: a */
    public final void m30470a(AbstractC6696o abstractC6696o, Message message, AbstractC6704q<?> abstractC6704q) {
        l.e(abstractC6696o, "result");
        l.e(message, "message");
        if (abstractC6696o instanceof AbstractC6696o.C6700d) {
            if (abstractC6704q != null) {
                AbstractC6233m abstractC6233m = (AbstractC6233m) ((AbstractC19854f) this.f22249a.get()).mo11854a();
                int type = abstractC6704q.getType();
                b bVar = message.f13384e;
                b bVar2 = message.f13385f;
                l.d(bVar2, "message.sendScheduleDate");
                abstractC6233m.mo31695d(type, bVar, ((e) bVar2).a > 0);
            }
        } else if (!(abstractC6696o instanceof AbstractC6696o.C6698b) && !(abstractC6696o instanceof AbstractC6696o.C6697a)) {
            if (abstractC6696o instanceof AbstractC6696o.C6699c) {
                AbstractC6696o.C6699c c6699c = (AbstractC6696o.C6699c) abstractC6696o;
                ((AbstractC6233m) ((AbstractC19854f) this.f22249a.get()).mo11854a()).mo31714J(message, ((e) c6699c.f22065a).a, c6699c.f22066b).mo11828g();
                return;
            }
            throw new IllegalStateException("Unexpected result " + abstractC6696o);
        } else {
            ((AbstractC6233m) ((AbstractC19854f) this.f22249a.get()).mo11854a()).mo31681x(message).mo11828g();
        }
        this.f22250b.mo29846b(abstractC6696o, message, abstractC6704q != null ? abstractC6704q.getType() : 3);
    }
}
