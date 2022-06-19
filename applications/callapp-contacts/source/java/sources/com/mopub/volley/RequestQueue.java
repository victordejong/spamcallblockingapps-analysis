package com.mopub.volley;

import android.os.Handler;
import android.os.Looper;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes4-dex2jar.jar:com/mopub/volley/RequestQueue.class */
public class RequestQueue {

    /* renamed from: a */
    final Set<Request<?>> f60376a;

    /* renamed from: b */
    final List<RequestFinishedListener> f60377b;

    /* renamed from: c */
    private final AtomicInteger f60378c;

    /* renamed from: d */
    private final PriorityBlockingQueue<Request<?>> f60379d;

    /* renamed from: e */
    private final PriorityBlockingQueue<Request<?>> f60380e;

    /* renamed from: f */
    private final Cache f60381f;

    /* renamed from: g */
    private final Network f60382g;

    /* renamed from: h */
    private final ResponseDelivery f60383h;

    /* renamed from: i */
    private final NetworkDispatcher[] f60384i;

    /* renamed from: j */
    private CacheDispatcher f60385j;

    /* renamed from: k */
    private final List<RequestEventListener> f60386k;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes4-dex2jar.jar:com/mopub/volley/RequestQueue$RequestEvent.class */
    public @interface RequestEvent {
        public static final int REQUEST_CACHE_LOOKUP_FINISHED = 2;
        public static final int REQUEST_CACHE_LOOKUP_STARTED = 1;
        public static final int REQUEST_FINISHED = 5;
        public static final int REQUEST_NETWORK_DISPATCH_FINISHED = 4;
        public static final int REQUEST_NETWORK_DISPATCH_STARTED = 3;
        public static final int REQUEST_QUEUED = 0;
    }

    /* loaded from: classes4-dex2jar.jar:com/mopub/volley/RequestQueue$RequestEventListener.class */
    public interface RequestEventListener {
        void onRequestEvent(Request<?> request, int i);
    }

    /* loaded from: classes4-dex2jar.jar:com/mopub/volley/RequestQueue$RequestFilter.class */
    public interface RequestFilter {
        boolean apply(Request<?> request);
    }

    @Deprecated
    /* loaded from: classes4-dex2jar.jar:com/mopub/volley/RequestQueue$RequestFinishedListener.class */
    public interface RequestFinishedListener<T> {
        void onRequestFinished(Request<T> request);
    }

    public RequestQueue(Cache cache, Network network) {
        this(cache, network, 4);
    }

    public RequestQueue(Cache cache, Network network, int i) {
        this(cache, network, i, new ExecutorDelivery(new Handler(Looper.getMainLooper())));
    }

    public RequestQueue(Cache cache, Network network, int i, ResponseDelivery responseDelivery) {
        this.f60378c = new AtomicInteger();
        this.f60376a = new HashSet();
        this.f60379d = new PriorityBlockingQueue<>();
        this.f60380e = new PriorityBlockingQueue<>();
        this.f60377b = new ArrayList();
        this.f60386k = new ArrayList();
        this.f60381f = cache;
        this.f60382g = network;
        this.f60384i = new NetworkDispatcher[i];
        this.f60383h = responseDelivery;
    }

    /* renamed from: a */
    public final void m6031a(Request<?> request, int i) {
        synchronized (this.f60386k) {
            for (RequestEventListener requestEventListener : this.f60386k) {
                requestEventListener.onRequestEvent(request, i);
            }
        }
    }

    public <T> Request<T> add(Request<T> request) {
        request.setRequestQueue(this);
        synchronized (this.f60376a) {
            this.f60376a.add(request);
        }
        request.setSequence(getSequenceNumber());
        request.addMarker("add-to-queue");
        m6031a(request, 0);
        if (!request.shouldCache()) {
            this.f60380e.add(request);
            return request;
        }
        this.f60379d.add(request);
        return request;
    }

    public void addRequestEventListener(RequestEventListener requestEventListener) {
        synchronized (this.f60386k) {
            this.f60386k.add(requestEventListener);
        }
    }

    @Deprecated
    public <T> void addRequestFinishedListener(RequestFinishedListener<T> requestFinishedListener) {
        synchronized (this.f60377b) {
            this.f60377b.add(requestFinishedListener);
        }
    }

    public void cancelAll(RequestFilter requestFilter) {
        synchronized (this.f60376a) {
            for (Request<?> request : this.f60376a) {
                if (requestFilter.apply(request)) {
                    request.cancel();
                }
            }
        }
    }

    public void cancelAll(final Object obj) {
        if (obj != null) {
            cancelAll(new RequestFilter() { // from class: com.mopub.volley.RequestQueue.1
                @Override // com.mopub.volley.RequestQueue.RequestFilter
                public final boolean apply(Request<?> request) {
                    return request.getTag() == obj;
                }
            });
            return;
        }
        throw new IllegalArgumentException("Cannot cancelAll with a null tag");
    }

    public Cache getCache() {
        return this.f60381f;
    }

    public int getSequenceNumber() {
        return this.f60378c.incrementAndGet();
    }

    public void removeRequestEventListener(RequestEventListener requestEventListener) {
        synchronized (this.f60386k) {
            this.f60386k.remove(requestEventListener);
        }
    }

    @Deprecated
    public <T> void removeRequestFinishedListener(RequestFinishedListener<T> requestFinishedListener) {
        synchronized (this.f60377b) {
            this.f60377b.remove(requestFinishedListener);
        }
    }

    public void start() {
        stop();
        CacheDispatcher cacheDispatcher = new CacheDispatcher(this.f60379d, this.f60380e, this.f60381f, this.f60383h);
        this.f60385j = cacheDispatcher;
        cacheDispatcher.start();
        for (int i = 0; i < this.f60384i.length; i++) {
            NetworkDispatcher networkDispatcher = new NetworkDispatcher(this.f60380e, this.f60382g, this.f60381f, this.f60383h);
            this.f60384i[i] = networkDispatcher;
            networkDispatcher.start();
        }
    }

    public void stop() {
        NetworkDispatcher[] networkDispatcherArr;
        CacheDispatcher cacheDispatcher = this.f60385j;
        if (cacheDispatcher != null) {
            cacheDispatcher.quit();
        }
        for (NetworkDispatcher networkDispatcher : this.f60384i) {
            if (networkDispatcher != null) {
                networkDispatcher.quit();
            }
        }
    }
}
