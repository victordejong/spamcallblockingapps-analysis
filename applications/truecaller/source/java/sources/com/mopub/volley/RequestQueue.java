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
/* loaded from: classes3-dex2jar.jar:com/mopub/volley/RequestQueue.class */
public class RequestQueue {

    /* renamed from: a */
    public final AtomicInteger f9294a;

    /* renamed from: b */
    public final Set<Request<?>> f9295b;

    /* renamed from: c */
    public final PriorityBlockingQueue<Request<?>> f9296c;

    /* renamed from: d */
    public final PriorityBlockingQueue<Request<?>> f9297d;

    /* renamed from: e */
    public final Cache f9298e;

    /* renamed from: f */
    public final Network f9299f;

    /* renamed from: g */
    public final ResponseDelivery f9300g;

    /* renamed from: h */
    public final NetworkDispatcher[] f9301h;

    /* renamed from: i */
    public CacheDispatcher f9302i;

    /* renamed from: j */
    public final List<RequestFinishedListener> f9303j;

    /* renamed from: k */
    public final List<RequestEventListener> f9304k;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3-dex2jar.jar:com/mopub/volley/RequestQueue$RequestEvent.class */
    public @interface RequestEvent {
        public static final int REQUEST_CACHE_LOOKUP_FINISHED = 2;
        public static final int REQUEST_CACHE_LOOKUP_STARTED = 1;
        public static final int REQUEST_FINISHED = 5;
        public static final int REQUEST_NETWORK_DISPATCH_FINISHED = 4;
        public static final int REQUEST_NETWORK_DISPATCH_STARTED = 3;
        public static final int REQUEST_QUEUED = 0;
    }

    /* loaded from: classes3-dex2jar.jar:com/mopub/volley/RequestQueue$RequestEventListener.class */
    public interface RequestEventListener {
        void onRequestEvent(Request<?> request, int i);
    }

    /* loaded from: classes3-dex2jar.jar:com/mopub/volley/RequestQueue$RequestFilter.class */
    public interface RequestFilter {
        boolean apply(Request<?> request);
    }

    @Deprecated
    /* loaded from: classes3-dex2jar.jar:com/mopub/volley/RequestQueue$RequestFinishedListener.class */
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
        this.f9294a = new AtomicInteger();
        this.f9295b = new HashSet();
        this.f9296c = new PriorityBlockingQueue<>();
        this.f9297d = new PriorityBlockingQueue<>();
        this.f9303j = new ArrayList();
        this.f9304k = new ArrayList();
        this.f9298e = cache;
        this.f9299f = network;
        this.f9301h = new NetworkDispatcher[i];
        this.f9300g = responseDelivery;
    }

    /* renamed from: a */
    public void m36161a(Request<?> request, int i) {
        synchronized (this.f9304k) {
            for (RequestEventListener requestEventListener : this.f9304k) {
                requestEventListener.onRequestEvent(request, i);
            }
        }
    }

    public <T> Request<T> add(Request<T> request) {
        request.setRequestQueue(this);
        synchronized (this.f9295b) {
            this.f9295b.add(request);
        }
        request.setSequence(getSequenceNumber());
        request.addMarker("add-to-queue");
        m36161a(request, 0);
        if (!request.shouldCache()) {
            this.f9297d.add(request);
            return request;
        }
        this.f9296c.add(request);
        return request;
    }

    public void addRequestEventListener(RequestEventListener requestEventListener) {
        synchronized (this.f9304k) {
            this.f9304k.add(requestEventListener);
        }
    }

    @Deprecated
    public <T> void addRequestFinishedListener(RequestFinishedListener<T> requestFinishedListener) {
        synchronized (this.f9303j) {
            this.f9303j.add(requestFinishedListener);
        }
    }

    public void cancelAll(RequestFilter requestFilter) {
        synchronized (this.f9295b) {
            for (Request<?> request : this.f9295b) {
                if (requestFilter.apply(request)) {
                    request.cancel();
                }
            }
        }
    }

    public void cancelAll(Object obj) {
        if (obj != null) {
            cancelAll((RequestFilter) new a(this, obj));
            return;
        }
        throw new IllegalArgumentException("Cannot cancelAll with a null tag");
    }

    public Cache getCache() {
        return this.f9298e;
    }

    public int getSequenceNumber() {
        return this.f9294a.incrementAndGet();
    }

    public void removeRequestEventListener(RequestEventListener requestEventListener) {
        synchronized (this.f9304k) {
            this.f9304k.remove(requestEventListener);
        }
    }

    @Deprecated
    public <T> void removeRequestFinishedListener(RequestFinishedListener<T> requestFinishedListener) {
        synchronized (this.f9303j) {
            this.f9303j.remove(requestFinishedListener);
        }
    }

    public void start() {
        stop();
        CacheDispatcher cacheDispatcher = new CacheDispatcher(this.f9296c, this.f9297d, this.f9298e, this.f9300g);
        this.f9302i = cacheDispatcher;
        cacheDispatcher.start();
        for (int i = 0; i < this.f9301h.length; i++) {
            NetworkDispatcher networkDispatcher = new NetworkDispatcher(this.f9297d, this.f9299f, this.f9298e, this.f9300g);
            this.f9301h[i] = networkDispatcher;
            networkDispatcher.start();
        }
    }

    public void stop() {
        NetworkDispatcher[] networkDispatcherArr;
        CacheDispatcher cacheDispatcher = this.f9302i;
        if (cacheDispatcher != null) {
            cacheDispatcher.quit();
        }
        for (NetworkDispatcher networkDispatcher : this.f9301h) {
            if (networkDispatcher != null) {
                networkDispatcher.quit();
            }
        }
    }
}
