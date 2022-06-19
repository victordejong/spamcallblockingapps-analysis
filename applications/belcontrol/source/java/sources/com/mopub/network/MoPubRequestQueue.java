package com.mopub.network;

import android.os.Handler;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.volley.Cache;
import com.mopub.volley.Network;
import com.mopub.volley.Request;
import com.mopub.volley.RequestQueue;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/mopub/network/MoPubRequestQueue.class */
public class MoPubRequestQueue extends RequestQueue {

    /* renamed from: l */
    public final Map<Request<?>, C1219c> f5403l = new HashMap(10);

    /* renamed from: com.mopub.network.MoPubRequestQueue$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/network/MoPubRequestQueue$a.class */
    public class C1217a implements RequestQueue.RequestFilter {

        /* renamed from: a */
        public final /* synthetic */ Object f5404a;

        public C1217a(MoPubRequestQueue moPubRequestQueue, Object obj) {
            this.f5404a = obj;
        }

        @Override // com.mopub.volley.RequestQueue.RequestFilter
        public boolean apply(Request<?> request) {
            return request.getTag() == this.f5404a;
        }
    }

    /* renamed from: com.mopub.network.MoPubRequestQueue$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/network/MoPubRequestQueue$b.class */
    public class C1218b implements RequestQueue.RequestFilter {

        /* renamed from: a */
        public final /* synthetic */ Request f5405a;

        public C1218b(MoPubRequestQueue moPubRequestQueue, Request request) {
            this.f5405a = request;
        }

        @Override // com.mopub.volley.RequestQueue.RequestFilter
        public boolean apply(Request<?> request) {
            return this.f5405a == request;
        }
    }

    /* renamed from: com.mopub.network.MoPubRequestQueue$c */
    /* loaded from: classes3-dex2jar.jar:com/mopub/network/MoPubRequestQueue$c.class */
    public class C1219c {

        /* renamed from: a */
        public final int f5406a;

        /* renamed from: b */
        public final Handler f5407b;

        /* renamed from: c */
        public final Runnable f5408c;

        /* renamed from: com.mopub.network.MoPubRequestQueue$c$a */
        /* loaded from: classes3-dex2jar.jar:com/mopub/network/MoPubRequestQueue$c$a.class */
        public class RunnableC1220a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ Request f5410a;

            public RunnableC1220a(MoPubRequestQueue moPubRequestQueue, Request request) {
                C1219c.this = r4;
                this.f5410a = request;
            }

            @Override // java.lang.Runnable
            public void run() {
                MoPubRequestQueue.this.f5403l.remove(this.f5410a);
                MoPubRequestQueue.this.add(this.f5410a);
            }
        }

        public C1219c(MoPubRequestQueue moPubRequestQueue, Request<?> request, int i) {
            this(request, i, new Handler());
        }

        @VisibleForTesting
        public C1219c(Request<?> request, int i, Handler handler) {
            MoPubRequestQueue.this = r8;
            this.f5406a = i;
            this.f5407b = handler;
            this.f5408c = new RunnableC1220a(r8, request);
        }

        /* renamed from: a */
        public void m3207a() {
            this.f5407b.removeCallbacks(this.f5408c);
        }

        /* renamed from: b */
        public void m3206b() {
            this.f5407b.postDelayed(this.f5408c, this.f5406a);
        }
    }

    public MoPubRequestQueue(Cache cache, Network network) {
        super(cache, network);
    }

    public void addDelayedRequest(Request<?> request, int i) {
        Preconditions.checkNotNull(request);
        m3208d(request, new C1219c(this, request, i));
    }

    public void cancel(Request<?> request) {
        Preconditions.checkNotNull(request);
        cancelAll((RequestQueue.RequestFilter) new C1218b(this, request));
    }

    @Override // com.mopub.volley.RequestQueue
    public void cancelAll(RequestQueue.RequestFilter requestFilter) {
        Preconditions.checkNotNull(requestFilter);
        super.cancelAll(requestFilter);
        Iterator<Map.Entry<Request<?>, C1219c>> it = this.f5403l.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<Request<?>, C1219c> next = it.next();
            if (requestFilter.apply(next.getKey())) {
                next.getKey().cancel();
                next.getValue().m3207a();
                it.remove();
            }
        }
    }

    @Override // com.mopub.volley.RequestQueue
    public void cancelAll(Object obj) {
        Preconditions.checkNotNull(obj);
        super.cancelAll(obj);
        cancelAll((RequestQueue.RequestFilter) new C1217a(this, obj));
    }

    @VisibleForTesting
    /* renamed from: d */
    public void m3208d(Request<?> request, C1219c c1219c) {
        Preconditions.checkNotNull(c1219c);
        if (this.f5403l.containsKey(request)) {
            cancel(request);
        }
        c1219c.m3206b();
        this.f5403l.put(request, c1219c);
    }
}
