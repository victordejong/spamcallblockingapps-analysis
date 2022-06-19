package com.iab.omid.library.applovin.walking.p064a;

import com.iab.omid.library.applovin.walking.p064a.AbstractAsyncTaskC1964b;
import java.util.ArrayDeque;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: com.iab.omid.library.applovin.walking.a.c */
/* loaded from: classes2-dex2jar.jar:com/iab/omid/library/applovin/walking/a/c.class */
public class C1967c implements AbstractAsyncTaskC1964b.AbstractC1965a {

    /* renamed from: a */
    private final BlockingQueue<Runnable> f7246a;

    /* renamed from: b */
    private final ThreadPoolExecutor f7247b;

    /* renamed from: c */
    private final ArrayDeque<AbstractAsyncTaskC1964b> f7248c = new ArrayDeque<>();

    /* renamed from: d */
    private AbstractAsyncTaskC1964b f7249d = null;

    public C1967c() {
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        this.f7246a = linkedBlockingQueue;
        this.f7247b = new ThreadPoolExecutor(1, 1, 1L, TimeUnit.SECONDS, linkedBlockingQueue);
    }

    /* renamed from: a */
    private void m4003a() {
        AbstractAsyncTaskC1964b poll = this.f7248c.poll();
        this.f7249d = poll;
        if (poll != null) {
            poll.m4004a(this.f7247b);
        }
    }

    @Override // com.iab.omid.library.applovin.walking.p064a.AbstractAsyncTaskC1964b.AbstractC1965a
    /* renamed from: a */
    public void mo4002a(AbstractAsyncTaskC1964b abstractAsyncTaskC1964b) {
        this.f7249d = null;
        m4003a();
    }

    /* renamed from: b */
    public void m4001b(AbstractAsyncTaskC1964b abstractAsyncTaskC1964b) {
        abstractAsyncTaskC1964b.m4005a(this);
        this.f7248c.add(abstractAsyncTaskC1964b);
        if (this.f7249d == null) {
            m4003a();
        }
    }
}
