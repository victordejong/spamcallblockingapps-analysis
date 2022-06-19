package com.iab.omid.library.pubnativenet.p444g.p445a;

import com.iab.omid.library.pubnativenet.p444g.p445a.AbstractAsyncTaskC16462b;
import java.util.ArrayDeque;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: com.iab.omid.library.pubnativenet.g.a.c */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/g/a/c.class */
public final class C16465c implements AbstractAsyncTaskC16462b.AbstractC16463a {

    /* renamed from: a */
    private final BlockingQueue<Runnable> f57997a;

    /* renamed from: b */
    private final ThreadPoolExecutor f57998b;

    /* renamed from: c */
    private final ArrayDeque<AbstractAsyncTaskC16462b> f57999c = new ArrayDeque<>();

    /* renamed from: d */
    private AbstractAsyncTaskC16462b f58000d = null;

    public C16465c() {
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        this.f57997a = linkedBlockingQueue;
        this.f57998b = new ThreadPoolExecutor(1, 1, 1L, TimeUnit.SECONDS, linkedBlockingQueue);
    }

    /* renamed from: b */
    private void m7188b() {
        AbstractAsyncTaskC16462b poll = this.f57999c.poll();
        this.f58000d = poll;
        if (poll != null) {
            poll.m7191a(this.f57998b);
        }
    }

    @Override // com.iab.omid.library.pubnativenet.p444g.p445a.AbstractAsyncTaskC16462b.AbstractC16463a
    /* renamed from: a */
    public final void mo7190a() {
        this.f58000d = null;
        m7188b();
    }

    /* renamed from: a */
    public final void m7189a(AbstractAsyncTaskC16462b abstractAsyncTaskC16462b) {
        abstractAsyncTaskC16462b.f57995d = this;
        this.f57999c.add(abstractAsyncTaskC16462b);
        if (this.f58000d == null) {
            m7188b();
        }
    }
}
