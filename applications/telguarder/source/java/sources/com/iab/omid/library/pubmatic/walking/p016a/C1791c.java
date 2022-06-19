package com.iab.omid.library.pubmatic.walking.p016a;

import com.iab.omid.library.pubmatic.walking.p016a.AbstractAsyncTaskC1788b;
import java.util.ArrayDeque;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: com.iab.omid.library.pubmatic.walking.a.c */
/* loaded from: classes2-dex2jar.jar:com/iab/omid/library/pubmatic/walking/a/c.class */
public class C1791c implements AbstractAsyncTaskC1788b.AbstractC1789a {

    /* renamed from: a */
    private final BlockingQueue<Runnable> f312a;

    /* renamed from: b */
    private final ThreadPoolExecutor f313b;

    /* renamed from: c */
    private final ArrayDeque<AbstractAsyncTaskC1788b> f314c = new ArrayDeque<>();

    /* renamed from: d */
    private AbstractAsyncTaskC1788b f315d = null;

    public C1791c() {
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        this.f312a = linkedBlockingQueue;
        this.f313b = new ThreadPoolExecutor(1, 1, 1L, TimeUnit.SECONDS, linkedBlockingQueue);
    }

    /* renamed from: a */
    private void m1144a() {
        AbstractAsyncTaskC1788b poll = this.f314c.poll();
        this.f315d = poll;
        if (poll != null) {
            poll.m1145a(this.f313b);
        }
    }

    @Override // com.iab.omid.library.pubmatic.walking.p016a.AbstractAsyncTaskC1788b.AbstractC1789a
    /* renamed from: a */
    public void mo1143a(AbstractAsyncTaskC1788b abstractAsyncTaskC1788b) {
        this.f315d = null;
        m1144a();
    }

    /* renamed from: b */
    public void m1142b(AbstractAsyncTaskC1788b abstractAsyncTaskC1788b) {
        abstractAsyncTaskC1788b.m1146a(this);
        this.f314c.add(abstractAsyncTaskC1788b);
        if (this.f315d == null) {
            m1144a();
        }
    }
}
