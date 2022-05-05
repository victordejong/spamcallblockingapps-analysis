package com.aotter.net.trek.network;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.aotter.net.trek.common.Preconditions;
import com.aotter.net.volley.Cache;
import com.aotter.net.volley.Network;
import com.aotter.net.volley.Request;
import com.aotter.net.volley.RequestQueue;
import com.aotter.net.volley.ResponseDelivery;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/network/TrekRequestQueue.class */
public class TrekRequestQueue extends RequestQueue {

    /* renamed from: a */
    public static final int f1561a = 10;
    @NonNull

    /* renamed from: b */
    public final Map<Request<?>, C1761g> f1562b = new HashMap(10);

    public TrekRequestQueue(Cache cache, Network network) {
        super(cache, network);
    }

    public TrekRequestQueue(Cache cache, Network network, int i) {
        super(cache, network, i);
    }

    public TrekRequestQueue(Cache cache, Network network, int i, ResponseDelivery responseDelivery) {
        super(cache, network, i, responseDelivery);
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m36335a(@NonNull Request<?> request, @NonNull C1761g gVar) {
        Preconditions.checkNotNull(gVar);
        if (this.f1562b.containsKey(request)) {
            cancel(request);
        }
        gVar.m36330a();
        this.f1562b.put(request, gVar);
    }

    public void addDelayedRequest(@NonNull Request<?> request, int i) {
        Preconditions.checkNotNull(request);
        m36335a(request, new C1761g(this, request, i));
    }

    public void cancel(@NonNull Request<?> request) {
        Preconditions.checkNotNull(request);
        cancelAll((RequestQueue.RequestFilter) new C1760f(this, request));
    }

    @Override // com.aotter.net.volley.RequestQueue
    public void cancelAll(@NonNull RequestQueue.RequestFilter requestFilter) {
        Preconditions.checkNotNull(requestFilter);
        super.cancelAll(requestFilter);
        Iterator<Map.Entry<Request<?>, C1761g>> it = this.f1562b.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<Request<?>, C1761g> next = it.next();
            if (requestFilter.apply(next.getKey())) {
                next.getKey().cancel();
                next.getValue().m36329b();
                it.remove();
            }
        }
    }

    @Override // com.aotter.net.volley.RequestQueue
    public void cancelAll(@NonNull Object obj) {
        Preconditions.checkNotNull(obj);
        super.cancelAll(obj);
        cancelAll((RequestQueue.RequestFilter) new C1759e(this, obj));
    }
}
