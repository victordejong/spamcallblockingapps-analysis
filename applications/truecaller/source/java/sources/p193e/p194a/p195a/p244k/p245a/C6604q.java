package p193e.p194a.p195a.p244k.p245a;

import android.content.Intent;
import com.truecaller.api.services.messenger.p138v1.events.Event;
import com.truecaller.messaging.transport.p170im.ProcessResult;
import javax.inject.Inject;
import o3.a;
import p193e.p194a.p195a.p244k.AbstractC6708t;
import s1.z.c.l;
/* renamed from: e.a.a.k.a.q */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/q.class */
public final class C6604q implements AbstractC6600p {

    /* renamed from: a */
    public final AbstractC6573i1 f21801a;

    /* renamed from: b */
    public final a<AbstractC6708t> f21802b;

    @Inject
    public C6604q(AbstractC6573i1 abstractC6573i1, a<AbstractC6708t> aVar) {
        l.e(abstractC6573i1, "imVersionManager");
        l.e(aVar, "transportManager");
        this.f21801a = abstractC6573i1;
        this.f21802b = aVar;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6600p
    /* renamed from: a */
    public ProcessResult mo30683a(Event event, boolean z, int i) {
        l.e(event, "event");
        Intent intent = new Intent("process_event");
        intent.putExtra("event", event.toByteArray());
        intent.putExtra("from_push", z);
        intent.putExtra("event_type", i);
        if (z) {
            ((AbstractC6708t) this.f21802b.get()).mo30564A(2, intent, 0);
        } else {
            ((AbstractC6708t) this.f21802b.get()).mo30542u(2, intent, 0);
        }
        if (event.getPayloadCase() == Event.PayloadCase.INCOMPATIBLE_EVENT) {
            AbstractC6573i1 abstractC6573i1 = this.f21801a;
            Event.OriginalEvent original = event.getOriginal();
            l.d(original, "event.original");
            if (!abstractC6573i1.mo30755e(original.getApiVersion())) {
                Event.IncompatibleEvent incompatibleEvent = event.getIncompatibleEvent();
                l.d(incompatibleEvent, "event.incompatibleEvent");
                if (!incompatibleEvent.getIgnorable()) {
                    return ProcessResult.FORCE_UPGRADE_ENCOUNTERED;
                }
            }
        }
        return ProcessResult.SUCCESS;
    }
}
