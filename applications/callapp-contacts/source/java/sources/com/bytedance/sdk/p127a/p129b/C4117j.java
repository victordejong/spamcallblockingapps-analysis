package com.bytedance.sdk.p127a.p129b;

import com.bytedance.sdk.p127a.p129b.p130a.C4015c;
import com.bytedance.sdk.p127a.p129b.p130a.p132b.C4008c;
import com.bytedance.sdk.p127a.p129b.p130a.p132b.C4009d;
import com.bytedance.sdk.p127a.p129b.p130a.p132b.C4013g;
import com.bytedance.sdk.p127a.p129b.p130a.p137g.C4090e;
import java.lang.ref.Reference;
import java.net.Socket;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: com.bytedance.sdk.a.b.j */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/j.class */
public final class C4117j {

    /* renamed from: c */
    static final /* synthetic */ boolean f15063c = true;

    /* renamed from: d */
    private static final Executor f15064d = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), C4015c.m36904a("OkHttp ConnectionPool", true));

    /* renamed from: a */
    final C4009d f15065a;

    /* renamed from: b */
    boolean f15066b;

    /* renamed from: e */
    private final int f15067e;

    /* renamed from: f */
    private final long f15068f;

    /* renamed from: g */
    private final Runnable f15069g;

    /* renamed from: h */
    private final Deque<C4008c> f15070h;

    public C4117j() {
        this(5, 5L, TimeUnit.MINUTES);
    }

    public C4117j(int i, long j, TimeUnit timeUnit) {
        this.f15069g = new Runnable() { // from class: com.bytedance.sdk.a.b.j.1
            @Override // java.lang.Runnable
            public void run() {
                while (true) {
                    long m36537a = C4117j.this.m36537a(System.nanoTime());
                    if (m36537a == -1) {
                        return;
                    }
                    if (m36537a > 0) {
                        long j2 = m36537a / 1000000;
                        synchronized (C4117j.this) {
                            try {
                                C4117j.this.wait(j2, (int) (m36537a - (1000000 * j2)));
                            } catch (InterruptedException e) {
                            }
                        }
                    }
                }
            }
        };
        this.f15070h = new ArrayDeque();
        this.f15065a = new C4009d();
        this.f15067e = i;
        this.f15068f = timeUnit.toNanos(j);
        if (j > 0) {
            return;
        }
        throw new IllegalArgumentException("keepAliveDuration <= 0: ".concat(String.valueOf(j)));
    }

    /* renamed from: a */
    private int m36535a(C4008c c4008c, long j) {
        List<Reference<C4013g>> list = c4008c.f14534d;
        int i = 0;
        while (i < list.size()) {
            Reference<C4013g> reference = list.get(i);
            if (reference.get() != null) {
                i++;
            } else {
                C4090e.m36643b().mo36649a("A connection to " + c4008c.mo36538a().m36575a().m37009a() + " was leaked. Did you forget to close a response body?", ((C4013g.C4014a) reference).f14573a);
                list.remove(i);
                c4008c.f14531a = true;
                if (list.isEmpty()) {
                    c4008c.f14535e = j - this.f15068f;
                    return 0;
                }
            }
        }
        return list.size();
    }

    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    /* renamed from: a */
    final long m36537a(long j) {
        synchronized (this) {
            C4008c c4008c = null;
            char c = 0;
            int i = 0;
            int i2 = 0;
            for (C4008c c4008c2 : this.f15070h) {
                if (m36535a(c4008c2, j) > 0) {
                    i2++;
                } else {
                    int i3 = i + 1;
                    ?? r0 = j - c4008c2.f14535e;
                    i = i3;
                    if (r0 > c) {
                        c4008c = c4008c2;
                        c = r0;
                        i = i3;
                    }
                }
            }
            long j2 = this.f15068f;
            if (c < j2 && i <= this.f15067e) {
                if (i > 0) {
                    return j2 - c;
                }
                if (i2 > 0) {
                    return j2;
                }
                this.f15066b = false;
                return -1L;
            }
            this.f15070h.remove(c4008c);
            C4015c.m36902a(c4008c.m36956b());
            return 0L;
        }
    }

    /* renamed from: a */
    public final C4008c m36533a(C3994a c3994a, C4013g c4013g, C4102ac c4102ac) {
        if (f15063c || Thread.holdsLock(this)) {
            for (C4008c c4008c : this.f15070h) {
                if (c4008c.m36960a(c3994a, c4102ac)) {
                    c4013g.m36931a(c4008c, true);
                    return c4008c;
                }
            }
            return null;
        }
        throw new AssertionError();
    }

    /* renamed from: a */
    public final Socket m36534a(C3994a c3994a, C4013g c4013g) {
        if (f15063c || Thread.holdsLock(this)) {
            for (C4008c c4008c : this.f15070h) {
                if (c4008c.m36960a(c3994a, null) && c4008c.m36954d() && c4008c != c4013g.m36926b()) {
                    return c4013g.m36932a(c4008c);
                }
            }
            return null;
        }
        throw new AssertionError();
    }

    /* renamed from: a */
    public final void m36536a(C4008c c4008c) {
        if (f15063c || Thread.holdsLock(this)) {
            if (!this.f15066b) {
                this.f15066b = true;
                f15064d.execute(this.f15069g);
            }
            this.f15070h.add(c4008c);
            return;
        }
        throw new AssertionError();
    }

    /* renamed from: b */
    public final boolean m36532b(C4008c c4008c) {
        if (f15063c || Thread.holdsLock(this)) {
            if (c4008c.f14531a || this.f15067e == 0) {
                this.f15070h.remove(c4008c);
                return true;
            }
            notifyAll();
            return false;
        }
        throw new AssertionError();
    }
}
