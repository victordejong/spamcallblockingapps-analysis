package com.mopub.volley;

import android.os.Process;
import com.mopub.volley.Cache;
import com.mopub.volley.Request;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
/* loaded from: classes3-dex2jar.jar:com/mopub/volley/CacheDispatcher.class */
public class CacheDispatcher extends Thread {

    /* renamed from: h */
    public static final boolean f5441h = VolleyLog.DEBUG;

    /* renamed from: a */
    public final BlockingQueue<Request<?>> f5442a;

    /* renamed from: b */
    public final BlockingQueue<Request<?>> f5443b;

    /* renamed from: c */
    public final Cache f5444c;

    /* renamed from: d */
    public final ResponseDelivery f5445d;

    /* renamed from: f */
    public volatile boolean f5446f = false;

    /* renamed from: g */
    public final C1227b f5447g = new C1227b(this);

    /* renamed from: com.mopub.volley.CacheDispatcher$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/volley/CacheDispatcher$a.class */
    public class RunnableC1226a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Request f5448a;

        public RunnableC1226a(Request request) {
            CacheDispatcher.this = r4;
            this.f5448a = request;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                CacheDispatcher.this.f5443b.put(this.f5448a);
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
            }
        }
    }

    /* renamed from: com.mopub.volley.CacheDispatcher$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/volley/CacheDispatcher$b.class */
    public static class C1227b implements Request.AbstractC1231b {

        /* renamed from: a */
        public final Map<String, List<Request<?>>> f5450a = new HashMap();

        /* renamed from: b */
        public final CacheDispatcher f5451b;

        public C1227b(CacheDispatcher cacheDispatcher) {
            this.f5451b = cacheDispatcher;
        }

        /* renamed from: b */
        public final boolean m3181b(Request<?> request) {
            synchronized (this) {
                String cacheKey = request.getCacheKey();
                if (!this.f5450a.containsKey(cacheKey)) {
                    this.f5450a.put(cacheKey, null);
                    request.m3161n(this);
                    if (VolleyLog.DEBUG) {
                        VolleyLog.m3156d("new request, sending to network %s", cacheKey);
                    }
                    return false;
                }
                List<Request<?>> list = this.f5450a.get(cacheKey);
                List<Request<?>> list2 = list;
                if (list == null) {
                    list2 = new ArrayList<>();
                }
                request.addMarker("waiting-for-response");
                list2.add(request);
                this.f5450a.put(cacheKey, list2);
                if (VolleyLog.DEBUG) {
                    VolleyLog.m3156d("Request for cacheKey=%s is in flight, putting on hold.", cacheKey);
                }
                return true;
            }
        }

        @Override // com.mopub.volley.Request.AbstractC1231b
        public void onNoUsableResponseReceived(Request<?> request) {
            synchronized (this) {
                String cacheKey = request.getCacheKey();
                List<Request<?>> remove = this.f5450a.remove(cacheKey);
                if (remove != null && !remove.isEmpty()) {
                    if (VolleyLog.DEBUG) {
                        VolleyLog.m3153v("%d waiting requests for cacheKey=%s; resend to network", Integer.valueOf(remove.size()), cacheKey);
                    }
                    Request<?> remove2 = remove.remove(0);
                    this.f5450a.put(cacheKey, remove);
                    remove2.m3161n(this);
                    try {
                        this.f5451b.f5443b.put(remove2);
                    } catch (InterruptedException e) {
                        VolleyLog.m3155e("Couldn't add request to queue. %s", e.toString());
                        Thread.currentThread().interrupt();
                        this.f5451b.quit();
                    }
                }
            }
        }

        @Override // com.mopub.volley.Request.AbstractC1231b
        public void onResponseReceived(Request<?> request, Response<?> response) {
            List<Request<?>> remove;
            Cache.Entry entry = response.cacheEntry;
            if (entry == null || entry.isExpired()) {
                onNoUsableResponseReceived(request);
                return;
            }
            String cacheKey = request.getCacheKey();
            synchronized (this) {
                remove = this.f5450a.remove(cacheKey);
            }
            if (remove == null) {
                return;
            }
            if (VolleyLog.DEBUG) {
                VolleyLog.m3153v("Releasing %d waiting requests for cacheKey=%s.", Integer.valueOf(remove.size()), cacheKey);
            }
            for (Request<?> request2 : remove) {
                this.f5451b.f5445d.postResponse(request2, response);
            }
        }
    }

    public CacheDispatcher(BlockingQueue<Request<?>> blockingQueue, BlockingQueue<Request<?>> blockingQueue2, Cache cache, ResponseDelivery responseDelivery) {
        this.f5442a = blockingQueue;
        this.f5443b = blockingQueue2;
        this.f5444c = cache;
        this.f5445d = responseDelivery;
    }

    /* renamed from: c */
    public final void m3184c() {
        m3183d(this.f5442a.take());
    }

    /* renamed from: d */
    public void m3183d(Request<?> request) {
        ResponseDelivery responseDelivery;
        request.addMarker("cache-queue-take");
        request.m3162m(1);
        try {
            if (request.isCanceled()) {
                request.m3170d("cache-discard-canceled");
                return;
            }
            Cache.Entry entry = this.f5444c.get(request.getCacheKey());
            if (entry == null) {
                request.addMarker("cache-miss");
                if (!this.f5447g.m3181b(request)) {
                    this.f5443b.put(request);
                }
            } else if (entry.isExpired()) {
                request.addMarker("cache-hit-expired");
                request.setCacheEntry(entry);
                if (!this.f5447g.m3181b(request)) {
                    this.f5443b.put(request);
                }
            } else {
                request.addMarker("cache-hit");
                Response<?> mo3087l = request.mo3087l(new NetworkResponse(entry.data, entry.responseHeaders));
                request.addMarker("cache-hit-parsed");
                if (!entry.refreshNeeded()) {
                    responseDelivery = this.f5445d;
                } else {
                    request.addMarker("cache-hit-refresh-needed");
                    request.setCacheEntry(entry);
                    mo3087l.intermediate = true;
                    if (!this.f5447g.m3181b(request)) {
                        this.f5445d.postResponse(request, mo3087l, new RunnableC1226a(request));
                    }
                    responseDelivery = this.f5445d;
                }
                responseDelivery.postResponse(request, mo3087l);
            }
        } finally {
            request.m3162m(2);
        }
    }

    public void quit() {
        this.f5446f = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        if (f5441h) {
            VolleyLog.m3153v("start new dispatcher", new Object[0]);
        }
        Process.setThreadPriority(10);
        this.f5444c.initialize();
        while (true) {
            try {
                m3184c();
            } catch (InterruptedException e) {
                if (this.f5446f) {
                    Thread.currentThread().interrupt();
                    return;
                }
                VolleyLog.m3155e("Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }
}
