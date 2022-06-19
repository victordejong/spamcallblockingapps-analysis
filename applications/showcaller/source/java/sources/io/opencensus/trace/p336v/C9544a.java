package io.opencensus.trace.p336v;

import io.opencensus.trace.AbstractC9506g;
import io.opencensus.trace.MessageEvent;
import io.opencensus.trace.NetworkEvent;
import p321d.p323b.p327b.C9475b;
/* renamed from: io.opencensus.trace.v.a */
/* loaded from: classes2-dex2jar.jar:io/opencensus/trace/v/a.class */
public final class C9544a {
    /* renamed from: a */
    public static MessageEvent m383a(AbstractC9506g abstractC9506g) {
        C9475b.m512b(abstractC9506g, "event");
        if (abstractC9506g instanceof MessageEvent) {
            return (MessageEvent) abstractC9506g;
        }
        NetworkEvent networkEvent = (NetworkEvent) abstractC9506g;
        return MessageEvent.m477a(networkEvent.mo452e() == NetworkEvent.Type.RECV ? MessageEvent.Type.RECEIVED : MessageEvent.Type.SENT, networkEvent.mo453d()).mo457d(networkEvent.mo451f()).mo459b(networkEvent.mo455b()).mo460a();
    }

    /* renamed from: b */
    public static NetworkEvent m382b(AbstractC9506g abstractC9506g) {
        C9475b.m512b(abstractC9506g, "event");
        if (abstractC9506g instanceof NetworkEvent) {
            return (NetworkEvent) abstractC9506g;
        }
        MessageEvent messageEvent = (MessageEvent) abstractC9506g;
        return NetworkEvent.m476a(messageEvent.mo462d() == MessageEvent.Type.RECEIVED ? NetworkEvent.Type.RECV : NetworkEvent.Type.SENT, messageEvent.mo463c()).mo447d(messageEvent.mo461e()).mo449b(messageEvent.mo464b()).mo450a();
    }
}
