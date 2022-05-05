package com.mopub.volley;

import android.os.Process;
import androidx.annotation.VisibleForTesting;
import com.mopub.volley.Cache;
import com.mopub.volley.Request;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
/* loaded from: classes2-dex2jar.jar:com/mopub/volley/CacheDispatcher.class */
public class CacheDispatcher extends Thread {

    /* renamed from: g */
    public static final boolean f9467g = VolleyLog.DEBUG;

    /* renamed from: a */
    public final BlockingQueue<Request<?>> f9468a;

    /* renamed from: b */
    public final BlockingQueue<Request<?>> f9469b;

    /* renamed from: c */
    public final Cache f9470c;

    /* renamed from: d */
    public final ResponseDelivery f9471d;

    /* renamed from: e */
    public volatile boolean f9472e = false;

    /* renamed from: f */
    public final C4041b f9473f = new C4041b(this);

    /* renamed from: com.mopub.volley.CacheDispatcher$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/volley/CacheDispatcher$a.class */
    public class RunnableC4040a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Request f9474a;

        public RunnableC4040a(Request request) {
            this.f9474a = request;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                CacheDispatcher.this.f9469b.put(this.f9474a);
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
            }
        }
    }

    /* renamed from: com.mopub.volley.CacheDispatcher$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/volley/CacheDispatcher$b.class */
    public static class C4041b implements Request.AbstractC4045b {

        /* renamed from: a */
        public final Map<String, List<Request<?>>> f9476a = new HashMap();

        /* renamed from: b */
        public final CacheDispatcher f9477b;

        public C4041b(CacheDispatcher cacheDispatcher) {
            this.f9477b = cacheDispatcher;
        }

        /* renamed from: a */
        public final boolean m29965a(Request<?> request) {
            synchronized (this) {
                String cacheKey = request.getCacheKey();
                if (this.f9476a.containsKey(cacheKey)) {
                    List<Request<?>> list = this.f9476a.get(cacheKey);
                    List<Request<?>> list2 = list;
                    if (list == null) {
                        list2 = new ArrayList<>();
                    }
                    request.addMarker("waiting-for-response");
                    list2.add(request);
                    this.f9476a.put(cacheKey, list2);
                    if (VolleyLog.DEBUG) {
                        VolleyLog.m29940d("Request for cacheKey=%s is in flight, putting on hold.", cacheKey);
                    }
                    return true;
                }
                this.f9476a.put(cacheKey, null);
                request.m29955a(this);
                if (VolleyLog.DEBUG) {
                    VolleyLog.m29940d("new request, sending to network %s", cacheKey);
                }
                return false;
            }
        }

        @Override // com.mopub.volley.Request.AbstractC4045b
        public void onNoUsableResponseReceived(Request<?> request) {
            synchronized (this) {
                String cacheKey = request.getCacheKey();
                List<Request<?>> remove = this.f9476a.remove(cacheKey);
                if (remove != null && !remove.isEmpty()) {
                    if (VolleyLog.DEBUG) {
                        VolleyLog.m29937v("%d waiting requests for cacheKey=%s; resend to network", Integer.valueOf(remove.size()), cacheKey);
                    }
                    Request<?> remove2 = remove.remove(0);
                    this.f9476a.put(cacheKey, remove);
                    remove2.m29955a(this);
                    try {
                        this.f9477b.f9469b.put(remove2);
                    } catch (InterruptedException e) {
                        VolleyLog.m29939e("Couldn't add request to queue. %s", e.toString());
                        Thread.currentThread().interrupt();
                        this.f9477b.quit();
                    }
                }
            }
        }

        @Override // com.mopub.volley.Request.AbstractC4045b
        public void onResponseReceived(Request<?> request, Response<?> response) {
            List<Request<?>> remove;
            Cache.Entry entry = response.cacheEntry;
            if (entry == null || entry.isExpired()) {
                onNoUsableResponseReceived(request);
                return;
            }
            String cacheKey = request.getCacheKey();
            synchronized (this) {
                remove = this.f9476a.remove(cacheKey);
            }
            if (remove != null) {
                if (VolleyLog.DEBUG) {
                    VolleyLog.m29937v("Releasing %d waiting requests for cacheKey=%s.", Integer.valueOf(remove.size()), cacheKey);
                }
                for (Request<?> request2 : remove) {
                    this.f9477b.f9471d.postResponse(request2, response);
                }
            }
        }
    }

    public CacheDispatcher(BlockingQueue<Request<?>> blockingQueue, BlockingQueue<Request<?>> blockingQueue2, Cache cache, ResponseDelivery responseDelivery) {
        this.f9468a = blockingQueue;
        this.f9469b = blockingQueue2;
        this.f9470c = cache;
        this.f9471d = responseDelivery;
    }

    /* renamed from: a */
    public final void m29970a() throws InterruptedException {
        m29968a(this.f9468a.take());
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m29968a(Request<?> request) throws InterruptedException {
        request.addMarker("cache-queue-take");
        request.m29956a(1);
        try {
            if (request.isCanceled()) {
                request.m29951a("cache-discard-canceled");
                return;
            }
            Cache.Entry entry = this.f9470c.get(request.getCacheKey());
            if (entry == null) {
                request.addMarker("cache-miss");
                if (!this.f9473f.m29965a(request)) {
                    this.f9469b.put(request);
                }
            } else if (entry.isExpired()) {
                request.addMarker("cache-hit-expired");
                request.setCacheEntry(entry);
                if (!this.f9473f.m29965a(request)) {
                    this.f9469b.put(request);
                }
            } else {
                request.addMarker("cache-hit");
                Response<?> a = request.mo29871a(new NetworkResponse(entry.data, entry.responseHeaders));
                request.addMarker("cache-hit-parsed");
                if (!entry.refreshNeeded()) {
                    this.f9471d.postResponse(request, a);
                } else {
                    request.addMarker("cache-hit-refresh-needed");
                    request.setCacheEntry(entry);
                    a.intermediate = true;
                    if (!this.f9473f.m29965a(request)) {
                        this.f9471d.postResponse(request, a, new RunnableC4040a(request));
                    } else {
                        this.f9471d.postResponse(request, a);
                    }
                }
            }
        } finally {
            request.m29956a(2);
        }
    }

    public void quit() {
        this.f9472e = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        if (f9467g) {
            VolleyLog.m29937v("start new dispatcher", new Object[0]);
        }
        Process.setThreadPriority(10);
        this.f9470c.initialize();
        while (true) {
            try {
                m29970a();
            } catch (InterruptedException e) {
                if (this.f9472e) {
                    Thread.currentThread().interrupt();
                    return;
                }
                VolleyLog.m29939e("Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }
}
