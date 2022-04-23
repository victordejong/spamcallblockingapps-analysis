package com.iab.omid.library.pubnativenet.g.a;

import com.iab.omid.library.pubnativenet.g.a.b;
import java.util.ArrayDeque;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/g/a/c.class */
public final class c implements b.a {

    /* renamed from: a  reason: collision with root package name */
    private final BlockingQueue<Runnable> f33409a;

    /* renamed from: b  reason: collision with root package name */
    private final ThreadPoolExecutor f33410b;

    /* renamed from: c  reason: collision with root package name */
    private final ArrayDeque<b> f33411c = new ArrayDeque<>();

    /* renamed from: d  reason: collision with root package name */
    private b f33412d = null;

    public c() {
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        this.f33409a = linkedBlockingQueue;
        this.f33410b = new ThreadPoolExecutor(1, 1, 1L, TimeUnit.SECONDS, linkedBlockingQueue);
    }

    private void b() {
        b poll = this.f33411c.poll();
        this.f33412d = poll;
        if (poll != null) {
            poll.a(this.f33410b);
        }
    }

    @Override // com.iab.omid.library.pubnativenet.g.a.b.a
    public final void a() {
        this.f33412d = null;
        b();
    }

    public final void a(b bVar) {
        bVar.f33408d = this;
        this.f33411c.add(bVar);
        if (this.f33412d == null) {
            b();
        }
    }
}
