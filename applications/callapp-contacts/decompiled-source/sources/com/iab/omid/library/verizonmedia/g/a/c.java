package com.iab.omid.library.verizonmedia.g.a;

import com.iab.omid.library.verizonmedia.g.a.b;
import java.util.ArrayDeque;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/g/a/c.class */
public final class c implements b.a {

    /* renamed from: a  reason: collision with root package name */
    private final BlockingQueue<Runnable> f33505a;

    /* renamed from: b  reason: collision with root package name */
    private final ThreadPoolExecutor f33506b;

    /* renamed from: c  reason: collision with root package name */
    private final ArrayDeque<b> f33507c = new ArrayDeque<>();

    /* renamed from: d  reason: collision with root package name */
    private b f33508d = null;

    public c() {
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        this.f33505a = linkedBlockingQueue;
        this.f33506b = new ThreadPoolExecutor(1, 1, 1L, TimeUnit.SECONDS, linkedBlockingQueue);
    }

    private void b() {
        b poll = this.f33507c.poll();
        this.f33508d = poll;
        if (poll != null) {
            poll.a(this.f33506b);
        }
    }

    @Override // com.iab.omid.library.verizonmedia.g.a.b.a
    public final void a() {
        this.f33508d = null;
        b();
    }

    public final void a(b bVar) {
        bVar.f33504d = this;
        this.f33507c.add(bVar);
        if (this.f33508d == null) {
            b();
        }
    }
}
