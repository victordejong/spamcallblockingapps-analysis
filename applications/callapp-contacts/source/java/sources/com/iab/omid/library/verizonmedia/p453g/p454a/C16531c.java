package com.iab.omid.library.verizonmedia.p453g.p454a;

import com.iab.omid.library.verizonmedia.p453g.p454a.AbstractAsyncTaskC16528b;
import java.util.ArrayDeque;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: com.iab.omid.library.verizonmedia.g.a.c */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/g/a/c.class */
public final class C16531c implements AbstractAsyncTaskC16528b.AbstractC16529a {

    /* renamed from: a */
    private final BlockingQueue<Runnable> f58129a;

    /* renamed from: b */
    private final ThreadPoolExecutor f58130b;

    /* renamed from: c */
    private final ArrayDeque<AbstractAsyncTaskC16528b> f58131c = new ArrayDeque<>();

    /* renamed from: d */
    private AbstractAsyncTaskC16528b f58132d = null;

    public C16531c() {
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        this.f58129a = linkedBlockingQueue;
        this.f58130b = new ThreadPoolExecutor(1, 1, 1L, TimeUnit.SECONDS, linkedBlockingQueue);
    }

    /* renamed from: b */
    private void m7070b() {
        AbstractAsyncTaskC16528b poll = this.f58131c.poll();
        this.f58132d = poll;
        if (poll != null) {
            poll.m7073a(this.f58130b);
        }
    }

    @Override // com.iab.omid.library.verizonmedia.p453g.p454a.AbstractAsyncTaskC16528b.AbstractC16529a
    /* renamed from: a */
    public final void mo7072a() {
        this.f58132d = null;
        m7070b();
    }

    /* renamed from: a */
    public final void m7071a(AbstractAsyncTaskC16528b abstractAsyncTaskC16528b) {
        abstractAsyncTaskC16528b.f58127d = this;
        this.f58131c.add(abstractAsyncTaskC16528b);
        if (this.f58132d == null) {
            m7070b();
        }
    }
}
