package p193e.p194a.p195a.p279r0;

import com.truecaller.messaging.conversationlist.ConversationSpamSearchWorker;
import javax.inject.Inject;
import javax.inject.Provider;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1392y2.p1394q.AbstractC21780a;
import p193e.p194a.p195a.AbstractC6392i0;
import s1.z.c.l;
/* renamed from: e.a.a.r0.b */
/* loaded from: classes5-dex2jar.jar:e/a/a/r0/b.class */
public final class C7202b implements AbstractC7201a {

    /* renamed from: a */
    public final AbstractC19022f0 f23086a;

    /* renamed from: b */
    public final Provider<AbstractC6392i0> f23087b;

    /* renamed from: c */
    public final AbstractC21780a f23088c;

    @Inject
    public C7202b(AbstractC19022f0 abstractC19022f0, Provider<AbstractC6392i0> provider, AbstractC21780a abstractC21780a) {
        l.e(abstractC19022f0, "deviceManager");
        l.e(provider, "settings");
        l.e(abstractC21780a, "backgroundWorkTrigger");
        this.f23086a = abstractC19022f0;
        this.f23087b = provider;
        this.f23088c = abstractC21780a;
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7201a
    /* renamed from: a */
    public void mo30000a() {
        if (mo29999b()) {
            this.f23088c.mo9086b(ConversationSpamSearchWorker.f13162e);
        }
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7201a
    /* renamed from: b */
    public boolean mo29999b() {
        Object obj = this.f23087b.get();
        l.d(obj, "settings.get()");
        return ((AbstractC6392i0) obj).mo31105a2() == 0 && ((AbstractC6392i0) this.f23087b.get()).mo31097b4(0L) > 0 && this.f23086a.mo14245a();
    }
}
