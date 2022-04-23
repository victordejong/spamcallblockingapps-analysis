package com.bytedance.sdk.a.b;

import com.bytedance.sdk.a.b.a.c;
import com.bytedance.sdk.a.b.x;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/n.class */
public final class n {

    /* renamed from: c  reason: collision with root package name */
    private Runnable f8122c;

    /* renamed from: d  reason: collision with root package name */
    private ExecutorService f8123d;

    /* renamed from: a  reason: collision with root package name */
    private int f8120a = 64;

    /* renamed from: b  reason: collision with root package name */
    private int f8121b = 5;
    private final Deque<x.a> e = new ArrayDeque();
    private final Deque<x.a> f = new ArrayDeque();
    private final Deque<x> g = new ArrayDeque();

    private <T> void a(Deque<T> deque, T t, boolean z) {
        int b2;
        Runnable runnable;
        synchronized (this) {
            if (deque.remove(t)) {
                if (z) {
                    c();
                }
                b2 = b();
                runnable = this.f8122c;
            } else {
                throw new AssertionError("Call wasn't in-flight!");
            }
        }
        if (b2 == 0 && runnable != null) {
            runnable.run();
        }
    }

    private int b(x.a aVar) {
        int i = 0;
        for (x.a aVar2 : this.f) {
            if (aVar2.a().equals(aVar.a())) {
                i++;
            }
        }
        return i;
    }

    private void c() {
        if (this.f.size() < this.f8120a && !this.e.isEmpty()) {
            Iterator<x.a> it2 = this.e.iterator();
            while (it2.hasNext()) {
                x.a next = it2.next();
                if (b(next) < this.f8121b) {
                    it2.remove();
                    this.f.add(next);
                    a().execute(next);
                }
                if (this.f.size() >= this.f8120a) {
                    return;
                }
            }
        }
    }

    public final ExecutorService a() {
        ExecutorService executorService;
        synchronized (this) {
            if (this.f8123d == null) {
                this.f8123d = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), c.a("OkHttp Dispatcher", false));
            }
            executorService = this.f8123d;
        }
        return executorService;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(x.a aVar) {
        a(this.f, aVar, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(x xVar) {
        synchronized (this) {
            this.g.add(xVar);
        }
    }

    public final int b() {
        int size;
        int size2;
        synchronized (this) {
            size = this.f.size();
            size2 = this.g.size();
        }
        return size + size2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(x xVar) {
        a(this.g, xVar, false);
    }
}
