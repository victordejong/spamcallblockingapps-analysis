package com.mopub.volley;

import android.os.Process;
import com.mopub.volley.Cache;
import e.n.f.a;
import java.util.concurrent.BlockingQueue;
/* loaded from: classes3-dex2jar.jar:com/mopub/volley/CacheDispatcher.class */
public class CacheDispatcher extends Thread {

    /* renamed from: g */
    public static final boolean f9256g = VolleyLog.DEBUG;

    /* renamed from: a */
    public final BlockingQueue<Request<?>> f9257a;

    /* renamed from: b */
    public final BlockingQueue<Request<?>> f9258b;

    /* renamed from: c */
    public final Cache f9259c;

    /* renamed from: d */
    public final ResponseDelivery f9260d;

    /* renamed from: e */
    public volatile boolean f9261e = false;

    /* renamed from: f */
    public final a f9262f = new a(this);

    public CacheDispatcher(BlockingQueue<Request<?>> blockingQueue, BlockingQueue<Request<?>> blockingQueue2, Cache cache, ResponseDelivery responseDelivery) {
        this.f9257a = blockingQueue;
        this.f9258b = blockingQueue2;
        this.f9259c = cache;
        this.f9260d = responseDelivery;
    }

    /* renamed from: a */
    public final void m36170a() throws InterruptedException {
        Request<?> take = this.f9257a.take();
        take.addMarker("cache-queue-take");
        take.m36162h(1);
        try {
            if (take.isCanceled()) {
                take.m36167c("cache-discard-canceled");
            } else {
                Cache.Entry entry = this.f9259c.get(take.getCacheKey());
                if (entry == null) {
                    take.addMarker("cache-miss");
                    if (!a.a(this.f9262f, take)) {
                        this.f9258b.put(take);
                    }
                } else if (entry.isExpired()) {
                    take.addMarker("cache-hit-expired");
                    take.setCacheEntry(entry);
                    if (!a.a(this.f9262f, take)) {
                        this.f9258b.put(take);
                    }
                } else {
                    take.addMarker("cache-hit");
                    Response<?> m36163g = take.m36163g(new NetworkResponse(entry.data, entry.responseHeaders));
                    take.addMarker("cache-hit-parsed");
                    if (!entry.refreshNeeded()) {
                        this.f9260d.postResponse(take, m36163g);
                    } else {
                        take.addMarker("cache-hit-refresh-needed");
                        take.setCacheEntry(entry);
                        m36163g.intermediate = true;
                        if (!a.a(this.f9262f, take)) {
                            this.f9260d.postResponse(take, m36163g, new a(this, take));
                        } else {
                            this.f9260d.postResponse(take, m36163g);
                        }
                    }
                }
            }
        } finally {
            take.m36162h(2);
        }
    }

    public void quit() {
        this.f9261e = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        if (f9256g) {
            VolleyLog.m36156v("start new dispatcher", new Object[0]);
        }
        Process.setThreadPriority(10);
        this.f9259c.initialize();
        while (true) {
            try {
                m36170a();
            } catch (InterruptedException e) {
                if (this.f9261e) {
                    Thread.currentThread().interrupt();
                    return;
                }
                VolleyLog.m36158e("Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }
}
