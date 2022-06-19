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
    public final AtomicInteger f5488a;

    /* renamed from: b */
    public final Set<Request<?>> f5489b;

    /* renamed from: c */
    public final PriorityBlockingQueue<Request<?>> f5490c;

    /* renamed from: d */
    public final PriorityBlockingQueue<Request<?>> f5491d;

    /* renamed from: e */
    public final Cache f5492e;

    /* renamed from: f */
    public final Network f5493f;

    /* renamed from: g */
    public final ResponseDelivery f5494g;

    /* renamed from: h */
    public final NetworkDispatcher[] f5495h;

    /* renamed from: i */
    public CacheDispatcher f5496i;

    /* renamed from: j */
    public final List<RequestFinishedListener> f5497j;

    /* renamed from: k */
    public final List<RequestEventListener> f5498k;

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

    /* renamed from: com.mopub.volley.RequestQueue$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/volley/RequestQueue$a.class */
    public class C1232a implements RequestFilter {

        /* renamed from: a */
        public final /* synthetic */ Object f5499a;

        public C1232a(RequestQueue requestQueue, Object obj) {
            this.f5499a = obj;
        }

        @Override // com.mopub.volley.RequestQueue.RequestFilter
        public boolean apply(Request<?> request) {
            return request.getTag() == this.f5499a;
        }
    }

    public RequestQueue(Cache cache, Network network) {
        this(cache, network, 4);
    }

    public RequestQueue(Cache cache, Network network, int i) {
        this(cache, network, i, new ExecutorDelivery(new Handler(Looper.getMainLooper())));
    }

    public RequestQueue(Cache cache, Network network, int i, ResponseDelivery responseDelivery) {
        this.f5488a = new AtomicInteger();
        this.f5489b = new HashSet();
        this.f5490c = new PriorityBlockingQueue<>();
        this.f5491d = new PriorityBlockingQueue<>();
        this.f5497j = new ArrayList();
        this.f5498k = new ArrayList();
        this.f5492e = cache;
        this.f5493f = network;
        this.f5495h = new NetworkDispatcher[i];
        this.f5494g = responseDelivery;
    }

    /* renamed from: a */
    public <T> void m3160a(Request<T> request) {
        synchronized (this.f5489b) {
            this.f5489b.remove(request);
        }
        synchronized (this.f5497j) {
            for (RequestFinishedListener requestFinishedListener : this.f5497j) {
                requestFinishedListener.onRequestFinished(request);
            }
        }
        m3159b(request, 5);
    }

    public <T> Request<T> add(Request<T> request) {
        request.setRequestQueue(this);
        synchronized (this.f5489b) {
            this.f5489b.add(request);
        }
        request.setSequence(getSequenceNumber());
        request.addMarker("add-to-queue");
        m3159b(request, 0);
        (!request.shouldCache() ? this.f5491d : this.f5490c).add(request);
        return request;
    }

    public void addRequestEventListener(RequestEventListener requestEventListener) {
        synchronized (this.f5498k) {
            this.f5498k.add(requestEventListener);
        }
    }

    @Deprecated
    public <T> void addRequestFinishedListener(RequestFinishedListener<T> requestFinishedListener) {
        synchronized (this.f5497j) {
            this.f5497j.add(requestFinishedListener);
        }
    }

    /* renamed from: b */
    public void m3159b(Request<?> request, int i) {
        synchronized (this.f5498k) {
            for (RequestEventListener requestEventListener : this.f5498k) {
                requestEventListener.onRequestEvent(request, i);
            }
        }
    }

    public void cancelAll(RequestFilter requestFilter) {
        synchronized (this.f5489b) {
            for (Request<?> request : this.f5489b) {
                if (requestFilter.apply(request)) {
                    request.cancel();
                }
            }
        }
    }

    public void cancelAll(Object obj) {
        if (obj != null) {
            cancelAll((RequestFilter) new C1232a(this, obj));
            return;
        }
        throw new IllegalArgumentException("Cannot cancelAll with a null tag");
    }

    public Cache getCache() {
        return this.f5492e;
    }

    public int getSequenceNumber() {
        return this.f5488a.incrementAndGet();
    }

    public void removeRequestEventListener(RequestEventListener requestEventListener) {
        synchronized (this.f5498k) {
            this.f5498k.remove(requestEventListener);
        }
    }

    @Deprecated
    public <T> void removeRequestFinishedListener(RequestFinishedListener<T> requestFinishedListener) {
        synchronized (this.f5497j) {
            this.f5497j.remove(requestFinishedListener);
        }
    }

    public void start() {
        stop();
        CacheDispatcher cacheDispatcher = new CacheDispatcher(this.f5490c, this.f5491d, this.f5492e, this.f5494g);
        this.f5496i = cacheDispatcher;
        cacheDispatcher.start();
        for (int i = 0; i < this.f5495h.length; i++) {
            NetworkDispatcher networkDispatcher = new NetworkDispatcher(this.f5491d, this.f5493f, this.f5492e, this.f5494g);
            this.f5495h[i] = networkDispatcher;
            networkDispatcher.start();
        }
    }

    public void stop() {
        NetworkDispatcher[] networkDispatcherArr;
        CacheDispatcher cacheDispatcher = this.f5496i;
        if (cacheDispatcher != null) {
            cacheDispatcher.quit();
        }
        for (NetworkDispatcher networkDispatcher : this.f5495h) {
            if (networkDispatcher != null) {
                networkDispatcher.quit();
            }
        }
    }
}
