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

    /* renamed from: a  reason: collision with root package name */
    final Set<Request<?>> f34802a;

    /* renamed from: b  reason: collision with root package name */
    final List<RequestFinishedListener> f34803b;

    /* renamed from: c  reason: collision with root package name */
    private final AtomicInteger f34804c;

    /* renamed from: d  reason: collision with root package name */
    private final PriorityBlockingQueue<Request<?>> f34805d;
    private final PriorityBlockingQueue<Request<?>> e;
    private final Cache f;
    private final Network g;
    private final ResponseDelivery h;
    private final NetworkDispatcher[] i;
    private CacheDispatcher j;
    private final List<RequestEventListener> k;

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
        this.f34804c = new AtomicInteger();
        this.f34802a = new HashSet();
        this.f34805d = new PriorityBlockingQueue<>();
        this.e = new PriorityBlockingQueue<>();
        this.f34803b = new ArrayList();
        this.k = new ArrayList();
        this.f = cache;
        this.g = network;
        this.i = new NetworkDispatcher[i];
        this.h = responseDelivery;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Request<?> request, int i) {
        synchronized (this.k) {
            for (RequestEventListener requestEventListener : this.k) {
                requestEventListener.onRequestEvent(request, i);
            }
        }
    }

    public <T> Request<T> add(Request<T> request) {
        request.setRequestQueue(this);
        synchronized (this.f34802a) {
            this.f34802a.add(request);
        }
        request.setSequence(getSequenceNumber());
        request.addMarker("add-to-queue");
        a(request, 0);
        if (!request.shouldCache()) {
            this.e.add(request);
            return request;
        }
        this.f34805d.add(request);
        return request;
    }

    public void addRequestEventListener(RequestEventListener requestEventListener) {
        synchronized (this.k) {
            this.k.add(requestEventListener);
        }
    }

    @Deprecated
    public <T> void addRequestFinishedListener(RequestFinishedListener<T> requestFinishedListener) {
        synchronized (this.f34803b) {
            this.f34803b.add(requestFinishedListener);
        }
    }

    public void cancelAll(RequestFilter requestFilter) {
        synchronized (this.f34802a) {
            for (Request<?> request : this.f34802a) {
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
        return this.f;
    }

    public int getSequenceNumber() {
        return this.f34804c.incrementAndGet();
    }

    public void removeRequestEventListener(RequestEventListener requestEventListener) {
        synchronized (this.k) {
            this.k.remove(requestEventListener);
        }
    }

    @Deprecated
    public <T> void removeRequestFinishedListener(RequestFinishedListener<T> requestFinishedListener) {
        synchronized (this.f34803b) {
            this.f34803b.remove(requestFinishedListener);
        }
    }

    public void start() {
        stop();
        CacheDispatcher cacheDispatcher = new CacheDispatcher(this.f34805d, this.e, this.f, this.h);
        this.j = cacheDispatcher;
        cacheDispatcher.start();
        for (int i = 0; i < this.i.length; i++) {
            NetworkDispatcher networkDispatcher = new NetworkDispatcher(this.e, this.g, this.f, this.h);
            this.i[i] = networkDispatcher;
            networkDispatcher.start();
        }
    }

    public void stop() {
        NetworkDispatcher[] networkDispatcherArr;
        CacheDispatcher cacheDispatcher = this.j;
        if (cacheDispatcher != null) {
            cacheDispatcher.quit();
        }
        for (NetworkDispatcher networkDispatcher : this.i) {
            if (networkDispatcher != null) {
                networkDispatcher.quit();
            }
        }
    }
}
