package com.iab.omid.library.mopub.p435g.p436a;

import com.iab.omid.library.mopub.p435g.p436a.AbstractAsyncTaskC16396b;
import java.util.ArrayDeque;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: com.iab.omid.library.mopub.g.a.c */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/g/a/c.class */
public final class C16399c implements AbstractAsyncTaskC16396b.AbstractC16397a {

    /* renamed from: a */
    private final BlockingQueue<Runnable> f57868a;

    /* renamed from: b */
    private final ThreadPoolExecutor f57869b;

    /* renamed from: c */
    private final ArrayDeque<AbstractAsyncTaskC16396b> f57870c = new ArrayDeque<>();

    /* renamed from: d */
    private AbstractAsyncTaskC16396b f57871d = null;

    public C16399c() {
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        this.f57868a = linkedBlockingQueue;
        this.f57869b = new ThreadPoolExecutor(1, 1, 1L, TimeUnit.SECONDS, linkedBlockingQueue);
    }

    /* renamed from: b */
    private void m7292b() {
        AbstractAsyncTaskC16396b poll = this.f57870c.poll();
        this.f57871d = poll;
        if (poll != null) {
            poll.m7295a(this.f57869b);
        }
    }

    @Override // com.iab.omid.library.mopub.p435g.p436a.AbstractAsyncTaskC16396b.AbstractC16397a
    /* renamed from: a */
    public final void mo7294a() {
        this.f57871d = null;
        m7292b();
    }

    /* renamed from: a */
    public final void m7293a(AbstractAsyncTaskC16396b abstractAsyncTaskC16396b) {
        abstractAsyncTaskC16396b.f57866d = this;
        this.f57870c.add(abstractAsyncTaskC16396b);
        if (this.f57871d == null) {
            m7292b();
        }
    }
}
