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

    /* renamed from: c  reason: collision with root package name */
    private final Map<Request<?>, a> f34732c = new HashMap(10);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/mopub/network/MoPubRequestQueue$a.class */
    public final class a {

        /* renamed from: a  reason: collision with root package name */
        final int f34737a;

        /* renamed from: b  reason: collision with root package name */
        final Handler f34738b;

        /* renamed from: c  reason: collision with root package name */
        final Runnable f34739c;

        a(MoPubRequestQueue moPubRequestQueue, Request<?> request, int i) {
            this(request, i, new Handler());
        }

        a(final Request<?> request, int i, Handler handler) {
            this.f34737a = i;
            this.f34738b = handler;
            this.f34739c = new Runnable() { // from class: com.mopub.network.MoPubRequestQueue.a.1
                @Override // java.lang.Runnable
                public final void run() {
                    MoPubRequestQueue.this.f34732c.remove(request);
                    MoPubRequestQueue.this.add(request);
                }
            };
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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
        a aVar = new a(this, request, i);
        Preconditions.checkNotNull(aVar);
        if (this.f34732c.containsKey(request)) {
            cancel(request);
        }
        aVar.f34738b.postDelayed(aVar.f34739c, aVar.f34737a);
        this.f34732c.put(request, aVar);
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
        Iterator<Map.Entry<Request<?>, a>> it2 = this.f34732c.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry<Request<?>, a> next = it2.next();
            if (requestFilter.apply(next.getKey())) {
                next.getKey().cancel();
                a value = next.getValue();
                value.f34738b.removeCallbacks(value.f34739c);
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
