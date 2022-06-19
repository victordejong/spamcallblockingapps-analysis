package p148k7;

import java.net.InetSocketAddress;
import java.nio.channels.SelectionKey;
import java.nio.channels.SocketChannel;
import p148k7.C3343h;
import p159l7.AbstractC3512b;
import p159l7.AbstractC3516e;
import p291y.C4951d;
/* renamed from: k7.g */
/* loaded from: classes2-dex2jar.jar:k7/g.class */
public class RunnableC3342g implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C3343h.C3348e f11325a;

    /* renamed from: b */
    public final /* synthetic */ AbstractC3512b f11326b;

    /* renamed from: c */
    public final /* synthetic */ AbstractC3516e f11327c;

    /* renamed from: d */
    public final /* synthetic */ InetSocketAddress f11328d;

    /* renamed from: e */
    public final /* synthetic */ C3343h f11329e;

    public RunnableC3342g(C3343h c3343h, C3343h.C3348e c3348e, AbstractC3512b abstractC3512b, AbstractC3516e abstractC3516e, InetSocketAddress inetSocketAddress) {
        this.f11329e = c3343h;
        this.f11325a = c3348e;
        this.f11326b = abstractC3512b;
        this.f11327c = abstractC3516e;
        this.f11328d = inetSocketAddress;
    }

    @Override // java.lang.Runnable
    public void run() {
        Throwable th;
        SocketChannel socketChannel;
        SelectionKey selectionKey;
        if (this.f11325a.isCancelled()) {
            return;
        }
        C3343h.C3348e c3348e = this.f11325a;
        c3348e.f11347k = this.f11326b;
        try {
            socketChannel = SocketChannel.open();
            c3348e.f11346j = socketChannel;
            try {
                socketChannel.configureBlocking(false);
                selectionKey = socketChannel.register(this.f11329e.f11334a.f11410a, 8);
                try {
                    selectionKey.attach(this.f11325a);
                    AbstractC3516e abstractC3516e = this.f11327c;
                    if (abstractC3516e != null) {
                        abstractC3516e.m2218a(socketChannel.socket().getLocalPort());
                    }
                    socketChannel.connect(this.f11328d);
                } catch (Throwable th2) {
                    th = th2;
                    if (selectionKey != null) {
                        selectionKey.cancel();
                    }
                    C4951d.m198e(socketChannel);
                    this.f11325a.m1914p(new RuntimeException(th), null, null);
                }
            } catch (Throwable th3) {
                th = th3;
                selectionKey = null;
            }
        } catch (Throwable th4) {
            th = th4;
            selectionKey = null;
            socketChannel = null;
        }
    }
}
