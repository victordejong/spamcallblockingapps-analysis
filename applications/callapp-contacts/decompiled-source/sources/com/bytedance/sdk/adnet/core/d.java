package com.bytedance.sdk.adnet.core;

import android.os.Process;
import com.bytedance.sdk.adnet.core.Request;
import com.bytedance.sdk.adnet.err.VAdError;
import com.bytedance.sdk.adnet.face.a;
import com.bytedance.sdk.adnet.face.c;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/core/d.class */
public class d extends Thread {

    /* renamed from: a  reason: collision with root package name */
    private static final boolean f8288a = o.f8336a;

    /* renamed from: b  reason: collision with root package name */
    private final BlockingQueue<Request<?>> f8289b;

    /* renamed from: c  reason: collision with root package name */
    private final BlockingQueue<Request<?>> f8290c;

    /* renamed from: d  reason: collision with root package name */
    private final com.bytedance.sdk.adnet.face.a f8291d;
    private final c e;
    private volatile boolean f = false;
    private final a g = new a(this);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/core/d$a.class */
    public static class a implements Request.a {

        /* renamed from: a  reason: collision with root package name */
        private final Map<String, List<Request<?>>> f8294a = new HashMap();

        /* renamed from: b  reason: collision with root package name */
        private final d f8295b;

        a(d dVar) {
            this.f8295b = dVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean b(Request<?> request) {
            synchronized (this) {
                String cacheKey = request.getCacheKey();
                if (this.f8294a.containsKey(cacheKey)) {
                    List<Request<?>> list = this.f8294a.get(cacheKey);
                    List<Request<?>> list2 = list;
                    if (list == null) {
                        list2 = new ArrayList<>();
                    }
                    request.addMarker("waiting-for-response");
                    list2.add(request);
                    this.f8294a.put(cacheKey, list2);
                    if (o.f8336a) {
                        o.b("Request for cacheKey=%s is in flight, putting on hold.", cacheKey);
                    }
                    return true;
                }
                this.f8294a.put(cacheKey, null);
                request.a(this);
                if (o.f8336a) {
                    o.b("new request, sending to network %s", cacheKey);
                }
                return false;
            }
        }

        @Override // com.bytedance.sdk.adnet.core.Request.a
        public void a(Request<?> request) {
            synchronized (this) {
                String cacheKey = request.getCacheKey();
                List<Request<?>> remove = this.f8294a.remove(cacheKey);
                if (remove != null && !remove.isEmpty()) {
                    if (o.f8336a) {
                        o.a("%d waiting requests for cacheKey=%s; resend to network", Integer.valueOf(remove.size()), cacheKey);
                    }
                    Request<?> remove2 = remove.remove(0);
                    this.f8294a.put(cacheKey, remove);
                    remove2.a(this);
                    try {
                        this.f8295b.f8290c.put(remove2);
                    } catch (InterruptedException e) {
                        o.c("Couldn't add request to queue. %s", e.toString());
                        Thread.currentThread().interrupt();
                        this.f8295b.a();
                    }
                }
            }
        }

        @Override // com.bytedance.sdk.adnet.core.Request.a
        public void a(Request<?> request, m<?> mVar) {
            List<Request<?>> remove;
            if (mVar.f8333b == null || mVar.f8333b.a()) {
                a(request);
                return;
            }
            String cacheKey = request.getCacheKey();
            synchronized (this) {
                remove = this.f8294a.remove(cacheKey);
            }
            if (remove != null) {
                if (o.f8336a) {
                    o.a("Releasing %d waiting requests for cacheKey=%s.", Integer.valueOf(remove.size()), cacheKey);
                }
                for (Request<?> request2 : remove) {
                    this.f8295b.e.a(request2, mVar);
                }
            }
        }
    }

    public d(BlockingQueue<Request<?>> blockingQueue, BlockingQueue<Request<?>> blockingQueue2, com.bytedance.sdk.adnet.face.a aVar, c cVar) {
        this.f8289b = blockingQueue;
        this.f8290c = blockingQueue2;
        this.f8291d = aVar;
        this.e = cVar;
    }

    private void b() throws InterruptedException {
        a(this.f8289b.take());
    }

    public void a() {
        this.f = true;
        interrupt();
    }

    void a(final Request<?> request) throws InterruptedException {
        request.addMarker("cache-queue-take");
        request.a(1);
        try {
            if (request.isCanceled()) {
                request.a("cache-discard-canceled");
                return;
            }
            a.C0159a a2 = this.f8291d.a(request.getCacheKey());
            if (a2 == null) {
                request.addMarker("cache-miss");
                if (!this.g.b(request)) {
                    this.f8290c.put(request);
                }
            } else if (a2.a()) {
                request.addMarker("cache-hit-expired");
                request.setCacheEntry(a2);
                if (!this.g.b(request)) {
                    this.f8290c.put(request);
                }
            } else {
                request.addMarker("cache-hit");
                m<?> a3 = request.a(new i(a2.f8363b, a2.h));
                request.addMarker("cache-hit-parsed");
                if (!a2.b()) {
                    this.e.a(request, a3);
                } else {
                    request.addMarker("cache-hit-refresh-needed");
                    request.setCacheEntry(a2);
                    a3.f8335d = true;
                    if (!this.g.b(request)) {
                        this.e.a(request, a3, new Runnable() { // from class: com.bytedance.sdk.adnet.core.d.1
                            @Override // java.lang.Runnable
                            public void run() {
                                try {
                                    d.this.f8290c.put(request);
                                } catch (InterruptedException e) {
                                    Thread.currentThread().interrupt();
                                }
                            }
                        });
                    } else {
                        this.e.a(request, a3);
                    }
                }
            }
        } catch (Throwable th) {
            try {
                o.a(th, "CacheDispatcher Unhandled Throwable %s", th.toString());
                this.e.a(request, new VAdError(th, 607));
            } finally {
                request.a(2);
            }
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        if (f8288a) {
            o.a("start new dispatcher", new Object[0]);
        }
        Process.setThreadPriority(10);
        this.f8291d.a();
        while (true) {
            try {
                b();
            } catch (InterruptedException e) {
                if (this.f) {
                    Thread.currentThread().interrupt();
                    return;
                }
                o.c("Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }
}
