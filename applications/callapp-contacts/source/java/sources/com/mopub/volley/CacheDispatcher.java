package com.mopub.volley;

import android.os.Process;
import com.mopub.volley.Cache;
import com.mopub.volley.Request;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
/* loaded from: classes4-dex2jar.jar:com/mopub/volley/CacheDispatcher.class */
public class CacheDispatcher extends Thread {

    /* renamed from: a */
    private static final boolean f60345a = VolleyLog.DEBUG;

    /* renamed from: b */
    private final BlockingQueue<Request<?>> f60346b;

    /* renamed from: c */
    private final BlockingQueue<Request<?>> f60347c;

    /* renamed from: d */
    private final Cache f60348d;

    /* renamed from: e */
    private final ResponseDelivery f60349e;

    /* renamed from: f */
    private volatile boolean f60350f = false;

    /* renamed from: g */
    private final C17007a f60351g = new C17007a(this);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mopub.volley.CacheDispatcher$a */
    /* loaded from: classes4-dex2jar.jar:com/mopub/volley/CacheDispatcher$a.class */
    public static final class C17007a implements Request.AbstractC17011a {

        /* renamed from: a */
        private final Map<String, List<Request<?>>> f60354a = new HashMap();

        /* renamed from: b */
        private final CacheDispatcher f60355b;

        C17007a(CacheDispatcher cacheDispatcher) {
            this.f60355b = cacheDispatcher;
        }

        /* renamed from: a */
        final boolean m6034a(Request<?> request) {
            synchronized (this) {
                String cacheKey = request.getCacheKey();
                if (!this.f60354a.containsKey(cacheKey)) {
                    this.f60354a.put(cacheKey, null);
                    request.setNetworkRequestCompleteListener(this);
                    if (VolleyLog.DEBUG) {
                        VolleyLog.m6029d("new request, sending to network %s", cacheKey);
                    }
                    return false;
                }
                List<Request<?>> list = this.f60354a.get(cacheKey);
                List<Request<?>> list2 = list;
                if (list == null) {
                    list2 = new ArrayList<>();
                }
                request.addMarker("waiting-for-response");
                list2.add(request);
                this.f60354a.put(cacheKey, list2);
                if (VolleyLog.DEBUG) {
                    VolleyLog.m6029d("Request for cacheKey=%s is in flight, putting on hold.", cacheKey);
                }
                return true;
            }
        }

        @Override // com.mopub.volley.Request.AbstractC17011a
        public final void onNoUsableResponseReceived(Request<?> request) {
            synchronized (this) {
                String cacheKey = request.getCacheKey();
                List<Request<?>> remove = this.f60354a.remove(cacheKey);
                if (remove != null && !remove.isEmpty()) {
                    if (VolleyLog.DEBUG) {
                        VolleyLog.m6026v("%d waiting requests for cacheKey=%s; resend to network", Integer.valueOf(remove.size()), cacheKey);
                    }
                    Request<?> remove2 = remove.remove(0);
                    this.f60354a.put(cacheKey, remove);
                    remove2.setNetworkRequestCompleteListener(this);
                    try {
                        this.f60355b.f60347c.put(remove2);
                    } catch (InterruptedException e) {
                        VolleyLog.m6028e("Couldn't add request to queue. %s", e.toString());
                        Thread.currentThread().interrupt();
                        this.f60355b.quit();
                    }
                }
            }
        }

        @Override // com.mopub.volley.Request.AbstractC17011a
        public final void onResponseReceived(Request<?> request, Response<?> response) {
            List<Request<?>> remove;
            if (response.cacheEntry == null || response.cacheEntry.isExpired()) {
                onNoUsableResponseReceived(request);
                return;
            }
            String cacheKey = request.getCacheKey();
            synchronized (this) {
                remove = this.f60354a.remove(cacheKey);
            }
            if (remove == null) {
                return;
            }
            if (VolleyLog.DEBUG) {
                VolleyLog.m6026v("Releasing %d waiting requests for cacheKey=%s.", Integer.valueOf(remove.size()), cacheKey);
            }
            for (Request<?> request2 : remove) {
                this.f60355b.f60349e.postResponse(request2, response);
            }
        }
    }

    public CacheDispatcher(BlockingQueue<Request<?>> blockingQueue, BlockingQueue<Request<?>> blockingQueue2, Cache cache, ResponseDelivery responseDelivery) {
        this.f60346b = blockingQueue;
        this.f60347c = blockingQueue2;
        this.f60348d = cache;
        this.f60349e = responseDelivery;
    }

    public void quit() {
        this.f60350f = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        if (f60345a) {
            VolleyLog.m6026v("start new dispatcher", new Object[0]);
        }
        Process.setThreadPriority(10);
        this.f60348d.initialize();
        while (true) {
            try {
                final Request<?> take = this.f60346b.take();
                take.addMarker("cache-queue-take");
                take.sendEvent(1);
                if (take.isCanceled()) {
                    take.finish("cache-discard-canceled");
                } else {
                    Cache.Entry entry = this.f60348d.get(take.getCacheKey());
                    if (entry == null) {
                        take.addMarker("cache-miss");
                        if (!this.f60351g.m6034a(take)) {
                            this.f60347c.put(take);
                        }
                    } else if (entry.isExpired()) {
                        take.addMarker("cache-hit-expired");
                        take.setCacheEntry(entry);
                        if (!this.f60351g.m6034a(take)) {
                            this.f60347c.put(take);
                        }
                    } else {
                        take.addMarker("cache-hit");
                        Response<?> parseNetworkResponse = take.parseNetworkResponse(new NetworkResponse(entry.data, entry.responseHeaders));
                        take.addMarker("cache-hit-parsed");
                        if (!entry.refreshNeeded()) {
                            this.f60349e.postResponse(take, parseNetworkResponse);
                        } else {
                            take.addMarker("cache-hit-refresh-needed");
                            take.setCacheEntry(entry);
                            parseNetworkResponse.intermediate = true;
                            if (!this.f60351g.m6034a(take)) {
                                this.f60349e.postResponse(take, parseNetworkResponse, new Runnable() { // from class: com.mopub.volley.CacheDispatcher.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        try {
                                            CacheDispatcher.this.f60347c.put(take);
                                        } catch (InterruptedException e) {
                                            Thread.currentThread().interrupt();
                                        }
                                    }
                                });
                            } else {
                                this.f60349e.postResponse(take, parseNetworkResponse);
                            }
                        }
                    }
                }
                take.sendEvent(2);
            } catch (InterruptedException e) {
                if (this.f60350f) {
                    Thread.currentThread().interrupt();
                    return;
                }
                VolleyLog.m6028e("Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }
}
