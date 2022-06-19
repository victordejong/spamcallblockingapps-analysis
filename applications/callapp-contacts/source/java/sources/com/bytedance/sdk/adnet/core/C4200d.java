package com.bytedance.sdk.adnet.core;

import android.os.Process;
import com.bytedance.sdk.adnet.core.Request;
import com.bytedance.sdk.adnet.err.VAdError;
import com.bytedance.sdk.adnet.face.AbstractC4246a;
import com.bytedance.sdk.adnet.face.AbstractC4249c;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
/* renamed from: com.bytedance.sdk.adnet.core.d */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/core/d.class */
public class C4200d extends Thread {

    /* renamed from: a */
    private static final boolean f15407a = C4221o.f15476a;

    /* renamed from: b */
    private final BlockingQueue<Request<?>> f15408b;

    /* renamed from: c */
    private final BlockingQueue<Request<?>> f15409c;

    /* renamed from: d */
    private final AbstractC4246a f15410d;

    /* renamed from: e */
    private final AbstractC4249c f15411e;

    /* renamed from: f */
    private volatile boolean f15412f = false;

    /* renamed from: g */
    private final C4202a f15413g = new C4202a(this);

    /* renamed from: com.bytedance.sdk.adnet.core.d$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/core/d$a.class */
    public static class C4202a implements Request.AbstractC4194a {

        /* renamed from: a */
        private final Map<String, List<Request<?>>> f15416a = new HashMap();

        /* renamed from: b */
        private final C4200d f15417b;

        C4202a(C4200d c4200d) {
            this.f15417b = c4200d;
        }

        /* renamed from: b */
        public boolean m36172b(Request<?> request) {
            synchronized (this) {
                String cacheKey = request.getCacheKey();
                if (!this.f15416a.containsKey(cacheKey)) {
                    this.f15416a.put(cacheKey, null);
                    request.m36202a(this);
                    if (C4221o.f15476a) {
                        C4221o.m36106b("new request, sending to network %s", cacheKey);
                    }
                    return false;
                }
                List<Request<?>> list = this.f15416a.get(cacheKey);
                List<Request<?>> list2 = list;
                if (list == null) {
                    list2 = new ArrayList<>();
                }
                request.addMarker("waiting-for-response");
                list2.add(request);
                this.f15416a.put(cacheKey, list2);
                if (C4221o.f15476a) {
                    C4221o.m36106b("Request for cacheKey=%s is in flight, putting on hold.", cacheKey);
                }
                return true;
            }
        }

        @Override // com.bytedance.sdk.adnet.core.Request.AbstractC4194a
        /* renamed from: a */
        public void mo36175a(Request<?> request) {
            synchronized (this) {
                String cacheKey = request.getCacheKey();
                List<Request<?>> remove = this.f15416a.remove(cacheKey);
                if (remove != null && !remove.isEmpty()) {
                    if (C4221o.f15476a) {
                        C4221o.m36108a("%d waiting requests for cacheKey=%s; resend to network", Integer.valueOf(remove.size()), cacheKey);
                    }
                    Request<?> remove2 = remove.remove(0);
                    this.f15416a.put(cacheKey, remove);
                    remove2.m36202a(this);
                    try {
                        this.f15417b.f15409c.put(remove2);
                    } catch (InterruptedException e) {
                        C4221o.m36105c("Couldn't add request to queue. %s", e.toString());
                        Thread.currentThread().interrupt();
                        this.f15417b.m36180a();
                    }
                }
            }
        }

        @Override // com.bytedance.sdk.adnet.core.Request.AbstractC4194a
        /* renamed from: a */
        public void mo36174a(Request<?> request, C4218m<?> c4218m) {
            List<Request<?>> remove;
            if (c4218m.f15469b == null || c4218m.f15469b.m36065a()) {
                mo36175a(request);
                return;
            }
            String cacheKey = request.getCacheKey();
            synchronized (this) {
                remove = this.f15416a.remove(cacheKey);
            }
            if (remove == null) {
                return;
            }
            if (C4221o.f15476a) {
                C4221o.m36108a("Releasing %d waiting requests for cacheKey=%s.", Integer.valueOf(remove.size()), cacheKey);
            }
            for (Request<?> request2 : remove) {
                this.f15417b.f15411e.mo36062a(request2, c4218m);
            }
        }
    }

    public C4200d(BlockingQueue<Request<?>> blockingQueue, BlockingQueue<Request<?>> blockingQueue2, AbstractC4246a abstractC4246a, AbstractC4249c abstractC4249c) {
        this.f15408b = blockingQueue;
        this.f15409c = blockingQueue2;
        this.f15410d = abstractC4246a;
        this.f15411e = abstractC4249c;
    }

    /* renamed from: b */
    private void m36177b() throws InterruptedException {
        m36179a(this.f15408b.take());
    }

    /* renamed from: a */
    public void m36180a() {
        this.f15412f = true;
        interrupt();
    }

    /* renamed from: a */
    void m36179a(final Request<?> request) throws InterruptedException {
        request.addMarker("cache-queue-take");
        request.m36204a(1);
        try {
            if (request.isCanceled()) {
                request.m36199a("cache-discard-canceled");
                return;
            }
            AbstractC4246a.C4247a mo36067a = this.f15410d.mo36067a(request.getCacheKey());
            if (mo36067a == null) {
                request.addMarker("cache-miss");
                if (!this.f15413g.m36172b(request)) {
                    this.f15409c.put(request);
                }
            } else if (mo36067a.m36065a()) {
                request.addMarker("cache-hit-expired");
                request.setCacheEntry(mo36067a);
                if (!this.f15413g.m36172b(request)) {
                    this.f15409c.put(request);
                }
            } else {
                request.addMarker("cache-hit");
                C4218m<?> mo33324a = request.mo33324a(new C4211i(mo36067a.f15504b, mo36067a.f15510h));
                request.addMarker("cache-hit-parsed");
                if (!mo36067a.m36064b()) {
                    this.f15411e.mo36062a(request, mo33324a);
                } else {
                    request.addMarker("cache-hit-refresh-needed");
                    request.setCacheEntry(mo36067a);
                    mo33324a.f15471d = true;
                    if (!this.f15413g.m36172b(request)) {
                        this.f15411e.mo36061a(request, mo33324a, new Runnable() { // from class: com.bytedance.sdk.adnet.core.d.1
                            @Override // java.lang.Runnable
                            public void run() {
                                try {
                                    C4200d.this.f15409c.put(request);
                                } catch (InterruptedException e) {
                                    Thread.currentThread().interrupt();
                                }
                            }
                        });
                    } else {
                        this.f15411e.mo36062a(request, mo33324a);
                    }
                }
            }
        } catch (Throwable th) {
            try {
                C4221o.m36107a(th, "CacheDispatcher Unhandled Throwable %s", th.toString());
                this.f15411e.mo36060a(request, new VAdError(th, 607));
            } finally {
                request.m36204a(2);
            }
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        if (f15407a) {
            C4221o.m36108a("start new dispatcher", new Object[0]);
        }
        Process.setThreadPriority(10);
        this.f15410d.mo36068a();
        while (true) {
            try {
                m36177b();
            } catch (InterruptedException e) {
                if (this.f15412f) {
                    Thread.currentThread().interrupt();
                    return;
                }
                C4221o.m36105c("Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }
}
