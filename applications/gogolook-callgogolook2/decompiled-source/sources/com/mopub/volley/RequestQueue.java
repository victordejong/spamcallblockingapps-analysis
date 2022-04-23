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
/* loaded from: classes2-dex2jar.jar:com/mopub/volley/RequestQueue.class */
public class RequestQueue {

    /* renamed from: a */
    public final AtomicInteger f9514a;

    /* renamed from: b */
    public final Set<Request<?>> f9515b;

    /* renamed from: c */
    public final PriorityBlockingQueue<Request<?>> f9516c;

    /* renamed from: d */
    public final PriorityBlockingQueue<Request<?>> f9517d;

    /* renamed from: e */
    public final Cache f9518e;

    /* renamed from: f */
    public final Network f9519f;

    /* renamed from: g */
    public final ResponseDelivery f9520g;

    /* renamed from: h */
    public final NetworkDispatcher[] f9521h;

    /* renamed from: i */
    public CacheDispatcher f9522i;

    /* renamed from: j */
    public final List<RequestFinishedListener> f9523j;

    /* renamed from: k */
    public final List<RequestEventListener> f9524k;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2-dex2jar.jar:com/mopub/volley/RequestQueue$RequestEvent.class */
    public @interface RequestEvent {
        public static final int REQUEST_CACHE_LOOKUP_FINISHED = 2;
        public static final int REQUEST_CACHE_LOOKUP_STARTED = 1;
        public static final int REQUEST_FINISHED = 5;
        public static final int REQUEST_NETWORK_DISPATCH_FINISHED = 4;
        public static final int REQUEST_NETWORK_DISPATCH_STARTED = 3;
        public static final int REQUEST_QUEUED = 0;
    }

    /* loaded from: classes2-dex2jar.jar:com/mopub/volley/RequestQueue$RequestEventListener.class */
    public interface RequestEventListener {
        void onRequestEvent(Request<?> request, int i);
    }

    /* loaded from: classes2-dex2jar.jar:com/mopub/volley/RequestQueue$RequestFilter.class */
    public interface RequestFilter {
        boolean apply(Request<?> request);
    }

    @Deprecated
    /* loaded from: classes2-dex2jar.jar:com/mopub/volley/RequestQueue$RequestFinishedListener.class */
    public interface RequestFinishedListener<T> {
        void onRequestFinished(Request<T> request);
    }

    /* renamed from: com.mopub.volley.RequestQueue$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/volley/RequestQueue$a.class */
    public class C4046a implements RequestFilter {

        /* renamed from: a */
        public final /* synthetic */ Object f9525a;

        public C4046a(RequestQueue requestQueue, Object obj) {
            this.f9525a = obj;
        }

        @Override // com.mopub.volley.RequestQueue.RequestFilter
        public boolean apply(Request<?> request) {
            return request.getTag() == this.f9525a;
        }
    }

    public RequestQueue(Cache cache, Network network) {
        this(cache, network, 4);
    }

    public RequestQueue(Cache cache, Network network, int i) {
        this(cache, network, i, new ExecutorDelivery(new Handler(Looper.getMainLooper())));
    }

    public RequestQueue(Cache cache, Network network, int i, ResponseDelivery responseDelivery) {
        this.f9514a = new AtomicInteger();
        this.f9515b = new HashSet();
        this.f9516c = new PriorityBlockingQueue<>();
        this.f9517d = new PriorityBlockingQueue<>();
        this.f9523j = new ArrayList();
        this.f9524k = new ArrayList();
        this.f9518e = cache;
        this.f9519f = network;
        this.f9521h = new NetworkDispatcher[i];
        this.f9520g = responseDelivery;
    }

    /* renamed from: a */
    public <T> void m29944a(Request<T> request) {
        synchronized (this.f9515b) {
            this.f9515b.remove(request);
        }
        synchronized (this.f9523j) {
            for (RequestFinishedListener requestFinishedListener : this.f9523j) {
                requestFinishedListener.onRequestFinished(request);
            }
        }
        m29943a(request, 5);
    }

    /* renamed from: a */
    public void m29943a(Request<?> request, int i) {
        synchronized (this.f9524k) {
            for (RequestEventListener requestEventListener : this.f9524k) {
                requestEventListener.onRequestEvent(request, i);
            }
        }
    }

    public <T> Request<T> add(Request<T> request) {
        request.setRequestQueue(this);
        synchronized (this.f9515b) {
            this.f9515b.add(request);
        }
        request.setSequence(getSequenceNumber());
        request.addMarker("add-to-queue");
        m29943a(request, 0);
        if (!request.shouldCache()) {
            this.f9517d.add(request);
            return request;
        }
        this.f9516c.add(request);
        return request;
    }

    public void addRequestEventListener(RequestEventListener requestEventListener) {
        synchronized (this.f9524k) {
            this.f9524k.add(requestEventListener);
        }
    }

    @Deprecated
    public <T> void addRequestFinishedListener(RequestFinishedListener<T> requestFinishedListener) {
        synchronized (this.f9523j) {
            this.f9523j.add(requestFinishedListener);
        }
    }

    public void cancelAll(RequestFilter requestFilter) {
        synchronized (this.f9515b) {
            for (Request<?> request : this.f9515b) {
                if (requestFilter.apply(request)) {
                    request.cancel();
                }
            }
        }
    }

    public void cancelAll(Object obj) {
        if (obj != null) {
            cancelAll((RequestFilter) new C4046a(this, obj));
            return;
        }
        throw new IllegalArgumentException("Cannot cancelAll with a null tag");
    }

    public Cache getCache() {
        return this.f9518e;
    }

    public int getSequenceNumber() {
        return this.f9514a.incrementAndGet();
    }

    public void removeRequestEventListener(RequestEventListener requestEventListener) {
        synchronized (this.f9524k) {
            this.f9524k.remove(requestEventListener);
        }
    }

    @Deprecated
    public <T> void removeRequestFinishedListener(RequestFinishedListener<T> requestFinishedListener) {
        synchronized (this.f9523j) {
            this.f9523j.remove(requestFinishedListener);
        }
    }

    public void start() {
        stop();
        this.f9522i = new CacheDispatcher(this.f9516c, this.f9517d, this.f9518e, this.f9520g);
        this.f9522i.start();
        for (int i = 0; i < this.f9521h.length; i++) {
            NetworkDispatcher networkDispatcher = new NetworkDispatcher(this.f9517d, this.f9519f, this.f9518e, this.f9520g);
            this.f9521h[i] = networkDispatcher;
            networkDispatcher.start();
        }
    }

    public void stop() {
        NetworkDispatcher[] networkDispatcherArr;
        CacheDispatcher cacheDispatcher = this.f9522i;
        if (cacheDispatcher != null) {
            cacheDispatcher.quit();
        }
        for (NetworkDispatcher networkDispatcher : this.f9521h) {
            if (networkDispatcher != null) {
                networkDispatcher.quit();
            }
        }
    }
}
