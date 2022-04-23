package com.bytedance.sdk.adnet.core;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.bytedance.sdk.adnet.face.c;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/core/l.class */
public class l {

    /* renamed from: a  reason: collision with root package name */
    private final AtomicInteger f8328a;

    /* renamed from: b  reason: collision with root package name */
    private final Set<Request<?>> f8329b;

    /* renamed from: c  reason: collision with root package name */
    private final PriorityBlockingQueue<Request<?>> f8330c;

    /* renamed from: d  reason: collision with root package name */
    private final PriorityBlockingQueue<Request<?>> f8331d;
    private final com.bytedance.sdk.adnet.face.a e;
    private final com.bytedance.sdk.adnet.face.b f;
    private final c g;
    private final h[] h;
    private d i;
    private final List<b> j;
    private final List<a> k;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/core/l$a.class */
    public interface a {
        void a(Request<?> request, int i);
    }

    @Deprecated
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/core/l$b.class */
    public interface b<T> {
        void a(Request<T> request);
    }

    public l(com.bytedance.sdk.adnet.face.a aVar, com.bytedance.sdk.adnet.face.b bVar) {
        this(aVar, bVar, 4);
    }

    public l(com.bytedance.sdk.adnet.face.a aVar, com.bytedance.sdk.adnet.face.b bVar, int i) {
        this(aVar, bVar, i, new g(new Handler(Looper.getMainLooper())));
    }

    public l(com.bytedance.sdk.adnet.face.a aVar, com.bytedance.sdk.adnet.face.b bVar, int i, c cVar) {
        this.f8328a = new AtomicInteger();
        this.f8329b = new HashSet();
        this.f8330c = new PriorityBlockingQueue<>();
        this.f8331d = new PriorityBlockingQueue<>();
        this.j = new ArrayList();
        this.k = new ArrayList();
        this.e = aVar;
        this.f = bVar;
        this.h = new h[i];
        this.g = cVar;
    }

    public <T> Request<T> a(Request<T> request) {
        b(request);
        request.setStartTime();
        request.setRequestQueue(this);
        synchronized (this.f8329b) {
            this.f8329b.add(request);
        }
        request.setSequence(c());
        request.addMarker("add-to-queue");
        a(request, 0);
        if (!request.shouldCache()) {
            this.f8331d.add(request);
            return request;
        }
        this.f8330c.add(request);
        return request;
    }

    public void a() {
        b();
        d dVar = new d(this.f8330c, this.f8331d, this.e, this.g);
        this.i = dVar;
        dVar.setName("tt_pangle_thread_CacheDispatcher");
        this.i.start();
        for (int i = 0; i < this.h.length; i++) {
            h hVar = new h(this.f8331d, this.f, this.e, this.g);
            hVar.setName("tt_pangle_thread_NetworkDispatcher".concat(String.valueOf(i)));
            this.h[i] = hVar;
            hVar.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Request<?> request, int i) {
        synchronized (this.k) {
            for (a aVar : this.k) {
                aVar.a(request, i);
            }
        }
    }

    public void b() {
        h[] hVarArr;
        d dVar = this.i;
        if (dVar != null) {
            dVar.a();
        }
        for (h hVar : this.h) {
            if (hVar != null) {
                hVar.a();
            }
        }
    }

    public <T> void b(Request<T> request) {
        if (request != null && !TextUtils.isEmpty(request.getUrl())) {
            String url = request.getUrl();
            if (com.bytedance.sdk.adnet.a.d() != null) {
                String a2 = com.bytedance.sdk.adnet.a.d().a(url);
                if (!TextUtils.isEmpty(a2)) {
                    request.setUrl(a2);
                }
            }
        }
    }

    public int c() {
        return this.f8328a.incrementAndGet();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <T> void c(Request<T> request) {
        synchronized (this.f8329b) {
            this.f8329b.remove(request);
        }
        synchronized (this.j) {
            for (b bVar : this.j) {
                bVar.a(request);
            }
        }
        a(request, 5);
    }
}
