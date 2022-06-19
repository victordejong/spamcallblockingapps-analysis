package com.mopub.network;

import android.os.Handler;
import com.mopub.common.Preconditions;
import com.mopub.volley.Cache;
import com.mopub.volley.Network;
import com.mopub.volley.Request;
import com.mopub.volley.RequestQueue;
import com.mopub.volley.ResponseDelivery;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/mopub/network/MoPubRequestQueue.class */
public class MoPubRequestQueue extends RequestQueue {

    /* renamed from: c */
    private final Map<Request<?>, C16998a> f60300c = new HashMap(10);

    /* renamed from: com.mopub.network.MoPubRequestQueue$a */
    /* loaded from: classes4-dex2jar.jar:com/mopub/network/MoPubRequestQueue$a.class */
    public final class C16998a {

        /* renamed from: a */
        final int f60305a;

        /* renamed from: b */
        final Handler f60306b;

        /* renamed from: c */
        final Runnable f60307c;

        C16998a(MoPubRequestQueue moPubRequestQueue, Request<?> request, int i) {
            this(request, i, new Handler());
        }

        C16998a(final Request<?> request, int i, Handler handler) {
            MoPubRequestQueue.this = r8;
            this.f60305a = i;
            this.f60306b = handler;
            this.f60307c = new Runnable() { // from class: com.mopub.network.MoPubRequestQueue.a.1
                @Override // java.lang.Runnable
                public final void run() {
                    MoPubRequestQueue.this.f60300c.remove(request);
                    MoPubRequestQueue.this.add(request);
                }
            };
        }
    }

    public MoPubRequestQueue(Cache cache, Network network) {
        super(cache, network);
    }

    MoPubRequestQueue(Cache cache, Network network, int i) {
        super(cache, network, i);
    }

    MoPubRequestQueue(Cache cache, Network network, int i, ResponseDelivery responseDelivery) {
        super(cache, network, i, responseDelivery);
    }

    public void addDelayedRequest(Request<?> request, int i) {
        Preconditions.checkNotNull(request);
        C16998a c16998a = new C16998a(this, request, i);
        Preconditions.checkNotNull(c16998a);
        if (this.f60300c.containsKey(request)) {
            cancel(request);
        }
        c16998a.f60306b.postDelayed(c16998a.f60307c, c16998a.f60305a);
        this.f60300c.put(request, c16998a);
    }

    public void cancel(final Request<?> request) {
        Preconditions.checkNotNull(request);
        cancelAll(new RequestQueue.RequestFilter() { // from class: com.mopub.network.MoPubRequestQueue.2
            @Override // com.mopub.volley.RequestQueue.RequestFilter
            public final boolean apply(Request<?> request2) {
                return request == request2;
            }
        });
    }

    @Override // com.mopub.volley.RequestQueue
    public void cancelAll(RequestQueue.RequestFilter requestFilter) {
        Preconditions.checkNotNull(requestFilter);
        super.cancelAll(requestFilter);
        Iterator<Map.Entry<Request<?>, C16998a>> it2 = this.f60300c.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry<Request<?>, C16998a> next = it2.next();
            if (requestFilter.apply(next.getKey())) {
                next.getKey().cancel();
                C16998a value = next.getValue();
                value.f60306b.removeCallbacks(value.f60307c);
                it2.remove();
            }
        }
    }

    @Override // com.mopub.volley.RequestQueue
    public void cancelAll(final Object obj) {
        Preconditions.checkNotNull(obj);
        super.cancelAll(obj);
        cancelAll(new RequestQueue.RequestFilter() { // from class: com.mopub.network.MoPubRequestQueue.1
            @Override // com.mopub.volley.RequestQueue.RequestFilter
            public final boolean apply(Request<?> request) {
                return request.getTag() == obj;
            }
        });
    }
}
