package com.aotter.net.trek.network;

import com.aotter.net.volley.Request;
import com.aotter.net.volley.RequestQueue;
/* renamed from: com.aotter.net.trek.network.e */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/network/e.class */
public class C1759e implements RequestQueue.RequestFilter {

    /* renamed from: a */
    public final /* synthetic */ Object f1570a;

    /* renamed from: b */
    public final /* synthetic */ TrekRequestQueue f1571b;

    public C1759e(TrekRequestQueue trekRequestQueue, Object obj) {
        this.f1571b = trekRequestQueue;
        this.f1570a = obj;
    }

    @Override // com.aotter.net.volley.RequestQueue.RequestFilter
    public boolean apply(Request<?> request) {
        return request.getTag() == this.f1570a;
    }
}
