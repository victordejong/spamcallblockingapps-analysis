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

    /* renamed from: a  reason: collision with root package name */
    private static final boolean f34775a = VolleyLog.DEBUG;

    /* renamed from: b  reason: collision with root package name */
    private final BlockingQueue<Request<?>> f34776b;

    /* renamed from: c  reason: collision with root package name */
    private final BlockingQueue<Request<?>> f34777c;

    /* renamed from: d  reason: collision with root package name */
    private final Cache f34778d;
    private final ResponseDelivery e;
    private volatile boolean f = false;
    private final a g = new a(this);

    /* loaded from: classes4-dex2jar.jar:com/mopub/volley/CacheDispatcher$a.class */
    static final class a implements Request.a {

        /* renamed from: a  reason: collision with root package name */
        private final Map<String, List<Request<?>>> f34781a = new HashMap();

        /* renamed from: b  reason: collision with root package name */
        private final CacheDispatcher f34782b;

        a(CacheDispatcher cacheDispatcher) {
            this.f34782b = cacheDispatcher;
        }

        final boolean a(Request<?> request) {
            synchronized (this) {
                String cacheKey = request.getCacheKey();
                if (this.f34781a.containsKey(cacheKey)) {
                    List<Request<?>> list = this.f34781a.get(cacheKey);
                    List<Request<?>> list2 = list;
                    if (list == null) {
                        list2 = new ArrayList<>();
                    }
                    request.addMarker("waiting-for-response");
                    list2.add(request);
                    this.f34781a.put(cacheKey, list2);
                    if (VolleyLog.DEBUG) {
                        VolleyLog.d("Request for cacheKey=%s is in flight, putting on hold.", cacheKey);
                    }
                    return true;
                }
                this.f34781a.put(cacheKey, null);
                request.setNetworkRequestCompleteListener(this);
                if (VolleyLog.DEBUG) {
                    VolleyLog.d("new request, sending to network %s", cacheKey);
                }
                return false;
            }
        }

        @Override // com.mopub.volley.Request.a
        public final void onNoUsableResponseReceived(Request<?> request) {
            synchronized (this) {
                String cacheKey = request.getCacheKey();
                List<Request<?>> remove = this.f34781a.remove(cacheKey);
                if (remove != null && !remove.isEmpty()) {
                    if (VolleyLog.DEBUG) {
                        VolleyLog.v("%d waiting requests for cacheKey=%s; resend to network", Integer.valueOf(remove.size()), cacheKey);
                    }
                    Request<?> remove2 = remove.remove(0);
                    this.f34781a.put(cacheKey, remove);
                    remove2.setNetworkRequestCompleteListener(this);
                    try {
                        this.f34782b.f34777c.put(remove2);
                    } catch (InterruptedException e) {
                        VolleyLog.e("Couldn't add request to queue. %s", e.toString());
                        Thread.currentThread().interrupt();
                        this.f34782b.quit();
                    }
                }
            }
        }

        @Override // com.mopub.volley.Request.a
        public final void onResponseReceived(Request<?> request, Response<?> response) {
            List<Request<?>> remove;
            if (response.cacheEntry == null || response.cacheEntry.isExpired()) {
                onNoUsableResponseReceived(request);
                return;
            }
            String cacheKey = request.getCacheKey();
            synchronized (this) {
                remove = this.f34781a.remove(cacheKey);
            }
            if (remove != null) {
                if (VolleyLog.DEBUG) {
                    VolleyLog.v("Releasing %d waiting requests for cacheKey=%s.", Integer.valueOf(remove.size()), cacheKey);
                }
                for (Request<?> request2 : remove) {
                    this.f34782b.e.postResponse(request2, response);
                }
            }
        }
    }

    public CacheDispatcher(BlockingQueue<Request<?>> blockingQueue, BlockingQueue<Request<?>> blockingQueue2, Cache cache, ResponseDelivery responseDelivery) {
        this.f34776b = blockingQueue;
        this.f34777c = blockingQueue2;
        this.f34778d = cache;
        this.e = responseDelivery;
    }

    public void quit() {
        this.f = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        if (f34775a) {
            VolleyLog.v("start new dispatcher", new Object[0]);
        }
        Process.setThreadPriority(10);
        this.f34778d.initialize();
        while (true) {
            try {
                final Request<?> take = this.f34776b.take();
                take.addMarker("cache-queue-take");
                take.sendEvent(1);
                if (take.isCanceled()) {
                    take.finish("cache-discard-canceled");
                } else {
                    Cache.Entry entry = this.f34778d.get(take.getCacheKey());
                    if (entry == null) {
                        take.addMarker("cache-miss");
                        if (!this.g.a(take)) {
                            this.f34777c.put(take);
                        }
                    } else if (entry.isExpired()) {
                        take.addMarker("cache-hit-expired");
                        take.setCacheEntry(entry);
                        if (!this.g.a(take)) {
                            this.f34777c.put(take);
                        }
                    } else {
                        take.addMarker("cache-hit");
                        Response<?> parseNetworkResponse = take.parseNetworkResponse(new NetworkResponse(entry.data, entry.responseHeaders));
                        take.addMarker("cache-hit-parsed");
                        if (!entry.refreshNeeded()) {
                            this.e.postResponse(take, parseNetworkResponse);
                        } else {
                            take.addMarker("cache-hit-refresh-needed");
                            take.setCacheEntry(entry);
                            parseNetworkResponse.intermediate = true;
                            if (!this.g.a(take)) {
                                this.e.postResponse(take, parseNetworkResponse, new Runnable() { // from class: com.mopub.volley.CacheDispatcher.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        try {
                                            CacheDispatcher.this.f34777c.put(take);
                                        } catch (InterruptedException e) {
                                            Thread.currentThread().interrupt();
                                        }
                                    }
                                });
                            } else {
                                this.e.postResponse(take, parseNetworkResponse);
                            }
                        }
                    }
                }
                take.sendEvent(2);
            } catch (InterruptedException e) {
                if (this.f) {
                    Thread.currentThread().interrupt();
                    return;
                }
                VolleyLog.e("Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }
}
