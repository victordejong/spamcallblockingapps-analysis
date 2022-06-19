package com.bytedance.sdk.p127a.p129b;

import com.bytedance.sdk.p127a.p129b.C4144x;
import com.bytedance.sdk.p127a.p129b.p130a.C4015c;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: com.bytedance.sdk.a.b.n */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/n.class */
public final class C4124n {

    /* renamed from: c */
    private Runnable f15100c;

    /* renamed from: d */
    private ExecutorService f15101d;

    /* renamed from: a */
    private int f15098a = 64;

    /* renamed from: b */
    private int f15099b = 5;

    /* renamed from: e */
    private final Deque<C4144x.C4145a> f15102e = new ArrayDeque();

    /* renamed from: f */
    private final Deque<C4144x.C4145a> f15103f = new ArrayDeque();

    /* renamed from: g */
    private final Deque<C4144x> f15104g = new ArrayDeque();

    /* renamed from: a */
    private <T> void m36502a(Deque<T> deque, T t, boolean z) {
        int m36501b;
        Runnable runnable;
        synchronized (this) {
            if (!deque.remove(t)) {
                throw new AssertionError("Call wasn't in-flight!");
            }
            if (z) {
                m36498c();
            }
            m36501b = m36501b();
            runnable = this.f15100c;
        }
        if (m36501b != 0 || runnable == null) {
            return;
        }
        runnable.run();
    }

    /* renamed from: b */
    private int m36500b(C4144x.C4145a c4145a) {
        int i = 0;
        for (C4144x.C4145a c4145a2 : this.f15103f) {
            if (c4145a2.m36343a().equals(c4145a.m36343a())) {
                i++;
            }
        }
        return i;
    }

    /* renamed from: c */
    private void m36498c() {
        if (this.f15103f.size() < this.f15098a && !this.f15102e.isEmpty()) {
            Iterator<C4144x.C4145a> it2 = this.f15102e.iterator();
            while (it2.hasNext()) {
                C4144x.C4145a next = it2.next();
                if (m36500b(next) < this.f15099b) {
                    it2.remove();
                    this.f15103f.add(next);
                    m36505a().execute(next);
                }
                if (this.f15103f.size() >= this.f15098a) {
                    return;
                }
            }
        }
    }

    /* renamed from: a */
    public final ExecutorService m36505a() {
        ExecutorService executorService;
        synchronized (this) {
            if (this.f15101d == null) {
                this.f15101d = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), C4015c.m36904a("OkHttp Dispatcher", false));
            }
            executorService = this.f15101d;
        }
        return executorService;
    }

    /* renamed from: a */
    public final void m36504a(C4144x.C4145a c4145a) {
        m36502a(this.f15103f, c4145a, true);
    }

    /* renamed from: a */
    public final void m36503a(C4144x c4144x) {
        synchronized (this) {
            this.f15104g.add(c4144x);
        }
    }

    /* renamed from: b */
    public final int m36501b() {
        int size;
        int size2;
        synchronized (this) {
            size = this.f15103f.size();
            size2 = this.f15104g.size();
        }
        return size + size2;
    }

    /* renamed from: b */
    public final void m36499b(C4144x c4144x) {
        m36502a(this.f15104g, c4144x, false);
    }
}
