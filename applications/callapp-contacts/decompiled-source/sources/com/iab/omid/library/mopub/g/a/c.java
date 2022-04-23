package com.iab.omid.library.mopub.g.a;

import com.iab.omid.library.mopub.g.a.b;
import java.util.ArrayDeque;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/g/a/c.class */
public final class c implements b.a {

    /* renamed from: a  reason: collision with root package name */
    private final BlockingQueue<Runnable> f33314a;

    /* renamed from: b  reason: collision with root package name */
    private final ThreadPoolExecutor f33315b;

    /* renamed from: c  reason: collision with root package name */
    private final ArrayDeque<b> f33316c = new ArrayDeque<>();

    /* renamed from: d  reason: collision with root package name */
    private b f33317d = null;

    public c() {
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        this.f33314a = linkedBlockingQueue;
        this.f33315b = new ThreadPoolExecutor(1, 1, 1L, TimeUnit.SECONDS, linkedBlockingQueue);
    }

    private void b() {
        b poll = this.f33316c.poll();
        this.f33317d = poll;
        if (poll != null) {
            poll.a(this.f33315b);
        }
    }

    @Override // com.iab.omid.library.mopub.g.a.b.a
    public final void a() {
        this.f33317d = null;
        b();
    }

    public final void a(b bVar) {
        bVar.f33313d = this;
        this.f33316c.add(bVar);
        if (this.f33317d == null) {
            b();
        }
    }
}
