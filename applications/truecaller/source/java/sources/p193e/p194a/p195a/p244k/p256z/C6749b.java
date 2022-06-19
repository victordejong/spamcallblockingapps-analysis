package p193e.p194a.p195a.p244k.p256z;

import com.truecaller.log.AssertionUtil;
import com.truecaller.messaging.data.types.Message;
import o3.a;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p195a.p231g.AbstractC6233m;
import p193e.p194a.p195a.p244k.AbstractC6696o;
import p193e.p194a.p195a.p244k.AbstractC6704q;
import p193e.p194a.p195a.p244k.AbstractC6708t;
import p193e.p194a.p195a.p284w0.AbstractC7290a;
import s1.z.c.l;
/* renamed from: e.a.a.k.z.b */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/z/b.class */
public final class C6749b extends AbstractC6748a {

    /* renamed from: c */
    public final a<AbstractC6708t> f22251c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6749b(a<AbstractC6708t> aVar, a<AbstractC19854f<AbstractC6233m>> aVar2, AbstractC7290a abstractC7290a) {
        super(aVar2, abstractC7290a);
        l.e(aVar, "transportManager");
        l.e(aVar2, "storage");
        l.e(abstractC7290a, "messagesMonitor");
        this.f22251c = aVar;
    }

    @Override // p193e.p194a.p195a.p244k.p256z.AbstractC6753d
    /* renamed from: b */
    public void mo30469b(Message message) {
        l.e(message, "message");
        AssertionUtil.AlwaysFatal.isTrue(message.f13390k == 2, new String[0]);
        AssertionUtil.AlwaysFatal.isTrue((message.f13386g & 4) != 0, new String[0]);
        AbstractC6704q mo30539x = ((AbstractC6708t) this.f22251c.get()).mo30539x(2);
        l.d(mo30539x, "transportManager.get().g…nsport(Transport.TYPE_IM)");
        AbstractC6696o mo15184b = mo30539x.mo15184b(message);
        l.d(mo15184b, "transport.sendMessage(message)");
        m30470a(mo15184b, message, mo30539x);
    }
}
