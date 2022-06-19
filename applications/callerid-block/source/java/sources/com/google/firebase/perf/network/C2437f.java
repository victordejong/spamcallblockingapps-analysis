package com.google.firebase.perf.network;

import com.google.firebase.perf.e.a;
import com.google.firebase.perf.util.Timer;
import org.apache.http.HttpResponse;
import org.apache.http.client.ResponseHandler;
/* renamed from: com.google.firebase.perf.network.f */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/network/f.class */
public class C2437f<T> implements ResponseHandler<T> {

    /* renamed from: a */
    private final ResponseHandler<? extends T> f10675a;

    /* renamed from: b */
    private final Timer f10676b;

    /* renamed from: c */
    private final a f10677c;

    public C2437f(ResponseHandler<? extends T> responseHandler, Timer timer, a aVar) {
        this.f10675a = responseHandler;
        this.f10676b = timer;
        this.f10677c = aVar;
    }

    public T handleResponse(HttpResponse httpResponse) {
        this.f10677c.v(this.f10676b.m3587b());
        this.f10677c.m(httpResponse.getStatusLine().getStatusCode());
        Long m3592a = C2439h.m3592a(httpResponse);
        if (m3592a != null) {
            this.f10677c.s(m3592a.longValue());
        }
        String m3591b = C2439h.m3591b(httpResponse);
        if (m3591b != null) {
            this.f10677c.q(m3591b);
        }
        this.f10677c.b();
        return (T) this.f10675a.handleResponse(httpResponse);
    }
}
