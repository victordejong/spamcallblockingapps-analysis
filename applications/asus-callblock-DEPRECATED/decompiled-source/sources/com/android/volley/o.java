package com.android.volley;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:com/android/volley/o.class */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    final Map<String, Queue<n<?>>> f2308a;

    /* renamed from: b  reason: collision with root package name */
    final Set<n<?>> f2309b;
    final PriorityBlockingQueue<n<?>> c;
    List<Object> d;
    private AtomicInteger e;
    private final PriorityBlockingQueue<n<?>> f;
    private final b g;
    private final g h;
    private final q i;
    private h[] j;
    private c k;

    private o(b bVar, g gVar) {
        this(bVar, gVar, new e(new Handler(Looper.getMainLooper())));
    }

    public o(b bVar, g gVar, byte b2) {
        this(bVar, gVar);
    }

    private o(b bVar, g gVar, q qVar) {
        this.e = new AtomicInteger();
        this.f2308a = new HashMap();
        this.f2309b = new HashSet();
        this.c = new PriorityBlockingQueue<>();
        this.f = new PriorityBlockingQueue<>();
        this.d = new ArrayList();
        this.g = bVar;
        this.h = gVar;
        this.j = new h[4];
        this.i = qVar;
    }

    public final <T> n<T> a(n<T> nVar) {
        nVar.g = this;
        synchronized (this.f2309b) {
            this.f2309b.add(nVar);
        }
        nVar.f = Integer.valueOf(this.e.incrementAndGet());
        nVar.a("add-to-queue");
        if (!nVar.h) {
            this.f.add(nVar);
        } else {
            synchronized (this.f2308a) {
                String c = nVar.c();
                if (this.f2308a.containsKey(c)) {
                    Queue<n<?>> queue = this.f2308a.get(c);
                    Queue<n<?>> queue2 = queue;
                    if (queue == null) {
                        queue2 = new LinkedList<>();
                    }
                    queue2.add(nVar);
                    this.f2308a.put(c, queue2);
                    if (v.f2345b) {
                        v.a("Request for cacheKey=%s is in flight, putting on hold.", c);
                    }
                } else {
                    this.f2308a.put(c, null);
                    this.c.add(nVar);
                }
            }
        }
        return nVar;
    }

    public final void a() {
        if (this.k != null) {
            c cVar = this.k;
            cVar.f2287a = true;
            cVar.interrupt();
        }
        for (int i = 0; i < this.j.length; i++) {
            if (this.j[i] != null) {
                h hVar = this.j[i];
                hVar.f2298a = true;
                hVar.interrupt();
            }
        }
        this.k = new c(this.c, this.f, this.g, this.i);
        this.k.start();
        for (int i2 = 0; i2 < this.j.length; i2++) {
            h hVar2 = new h(this.f, this.h, this.g, this.i);
            this.j[i2] = hVar2;
            hVar2.start();
        }
    }
}
