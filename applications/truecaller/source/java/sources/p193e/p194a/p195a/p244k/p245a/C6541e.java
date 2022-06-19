package p193e.p194a.p195a.p244k.p245a;

import com.truecaller.api.services.messenger.p138v1.events.Event;
import p3.a.q1.h;
import s1.z.c.l;
/* renamed from: e.a.a.k.a.e */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/e.class */
public final class C6541e implements h<Event> {

    /* renamed from: a */
    public final HandlerC6644w1 f21606a;

    public C6541e(HandlerC6644w1 handlerC6644w1) {
        l.e(handlerC6644w1, "handler");
        this.f21606a = handlerC6644w1;
    }

    /* renamed from: W0 */
    public void m30796W0(Throwable th) {
        m30793d(2, th);
    }

    /* renamed from: a */
    public void m30795a() {
        m30793d(3, null);
    }

    /* renamed from: b */
    public void m30794b(Object obj) {
        Event event = (Event) obj;
        l.e(event, "event");
        m30793d(1, event);
    }

    /* renamed from: d */
    public final void m30793d(int i, Object obj) {
        HandlerC6644w1 handlerC6644w1 = this.f21606a;
        handlerC6644w1.sendMessage(handlerC6644w1.obtainMessage(i, obj));
    }
}
