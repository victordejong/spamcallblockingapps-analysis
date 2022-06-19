package p193e.p194a.p195a.p244k.p245a;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.protobuf.GeneratedMessageLite;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.truecaller.api.services.messenger.p138v1.events.Event;
import java.lang.ref.WeakReference;
import java.util.Objects;
import p3.a.g1;
import p3.a.q1.h;
import s1.z.c.l;
/* renamed from: e.a.a.k.a.w1 */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/w1.class */
public final class HandlerC6644w1 extends Handler {

    /* renamed from: a */
    public final WeakReference<C6564h0> f21924a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC6644w1(C6564h0 c6564h0, Looper looper) {
        super(looper);
        l.e(c6564h0, "subscriptionManager");
        l.e(looper, "looper");
        this.f21924a = new WeakReference<>(c6564h0);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        h<Event.Ack> hVar;
        l.e(message, RemoteMessageConst.MessageBody.MSG);
        C6564h0 c6564h0 = this.f21924a.get();
        if (c6564h0 != null) {
            int i = message.what;
            boolean z = false;
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        return;
                    }
                    c6564h0.m30765a(false);
                    return;
                }
                g1 e = g1.e((Throwable) message.obj);
                g1.b bVar = e != null ? e.a : null;
                if (bVar == g1.b.p || bVar == g1.b.q) {
                    z = true;
                }
                c6564h0.m30765a(z);
                return;
            }
            Object obj = message.obj;
            Objects.requireNonNull(obj, "null cannot be cast to non-null type com.truecaller.api.services.messenger.v1.events.Event");
            Event event = (Event) obj;
            l.e(event, "event");
            if (c6564h0.f21654j.mo30754f() || c6564h0.f21649e) {
                return;
            }
            int ordinal = c6564h0.f21653i.mo30683a(event, false, 0).ordinal();
            if (ordinal != 0) {
                if (ordinal != 1) {
                    return;
                }
                c6564h0.m30764b();
                return;
            }
            c6564h0.f21658n.mo11854a().mo31671e().mo11831c();
            Event.Ack.C3135a newBuilder = Event.Ack.newBuilder();
            long id = event.getId();
            newBuilder.copyOnWrite();
            ((GeneratedMessageLite.Builder) newBuilder).instance.setEventId(id);
            Event.Ack build = newBuilder.build();
            if (build == null || (hVar = c6564h0.f21645a) == null) {
                return;
            }
            hVar.b(build);
        }
    }
}
