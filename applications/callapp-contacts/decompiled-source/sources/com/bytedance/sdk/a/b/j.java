package com.bytedance.sdk.a.b;

import com.bytedance.sdk.a.b.a.b.d;
import com.bytedance.sdk.a.b.a.b.g;
import com.bytedance.sdk.a.b.a.c;
import com.bytedance.sdk.a.b.a.g.e;
import java.lang.ref.Reference;
import java.net.Socket;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/j.class */
public final class j {

    /* renamed from: c  reason: collision with root package name */
    static final /* synthetic */ boolean f8102c = true;

    /* renamed from: d  reason: collision with root package name */
    private static final Executor f8103d = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), c.a("OkHttp ConnectionPool", true));

    /* renamed from: a  reason: collision with root package name */
    final d f8104a;

    /* renamed from: b  reason: collision with root package name */
    boolean f8105b;
    private final int e;
    private final long f;
    private final Runnable g;
    private final Deque<com.bytedance.sdk.a.b.a.b.c> h;

    public j() {
        this(5, 5L, TimeUnit.MINUTES);
    }

    public j(int i, long j, TimeUnit timeUnit) {
        this.g = new Runnable() { // from class: com.bytedance.sdk.a.b.j.1
            @Override // java.lang.Runnable
            public void run() {
                while (true) {
                    long a2 = j.this.a(System.nanoTime());
                    if (a2 != -1) {
                        if (a2 > 0) {
                            long j2 = a2 / 1000000;
                            synchronized (j.this) {
                                try {
                                    j.this.wait(j2, (int) (a2 - (1000000 * j2)));
                                } catch (InterruptedException e) {
                                }
                            }
                        }
                    } else {
                        return;
                    }
                }
            }
        };
        this.h = new ArrayDeque();
        this.f8104a = new d();
        this.e = i;
        this.f = timeUnit.toNanos(j);
        if (j <= 0) {
            throw new IllegalArgumentException("keepAliveDuration <= 0: ".concat(String.valueOf(j)));
        }
    }

    private int a(com.bytedance.sdk.a.b.a.b.c cVar, long j) {
        List<Reference<g>> list = cVar.f7863d;
        int i = 0;
        while (i < list.size()) {
            Reference<g> reference = list.get(i);
            if (reference.get() != null) {
                i++;
            } else {
                g.a aVar = (g.a) reference;
                e.b().a("A connection to " + cVar.a().a().a() + " was leaked. Did you forget to close a response body?", aVar.f7877a);
                list.remove(i);
                cVar.f7860a = true;
                if (list.isEmpty()) {
                    cVar.e = j - this.f;
                    return 0;
                }
            }
        }
        return list.size();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final long a(long r6) {
        /*
            r5 = this;
            r0 = r5
            monitor-enter(r0)
            r0 = r5
            java.util.Deque<com.bytedance.sdk.a.b.a.b.c> r0 = r0.h     // Catch: all -> 0x00b8
            java.util.Iterator r0 = r0.iterator()     // Catch: all -> 0x00b8
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = -9223372036854775808
            r10 = r0
            r0 = 0
            r12 = r0
            r0 = 0
            r13 = r0
        L_0x001a:
            r0 = r8
            boolean r0 = r0.hasNext()     // Catch: all -> 0x00b8
            if (r0 == 0) goto L_0x0068
            r0 = r8
            java.lang.Object r0 = r0.next()     // Catch: all -> 0x00b8
            com.bytedance.sdk.a.b.a.b.c r0 = (com.bytedance.sdk.a.b.a.b.c) r0     // Catch: all -> 0x00b8
            r14 = r0
            r0 = r5
            r1 = r14
            r2 = r6
            int r0 = r0.a(r1, r2)     // Catch: all -> 0x00b8
            if (r0 <= 0) goto L_0x003e
            int r13 = r13 + 1
            goto L_0x001a
        L_0x003e:
            r0 = r12
            r1 = 1
            int r0 = r0 + r1
            r15 = r0
            r0 = r6
            r1 = r14
            long r1 = r1.e     // Catch: all -> 0x00b8
            long r0 = r0 - r1
            r16 = r0
            r0 = r15
            r12 = r0
            r0 = r16
            r1 = r10
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x001a
            r0 = r14
            r9 = r0
            r0 = r16
            r10 = r0
            r0 = r15
            r12 = r0
            goto L_0x001a
        L_0x0068:
            r0 = r5
            long r0 = r0.f     // Catch: all -> 0x00b8
            r6 = r0
            r0 = r10
            r1 = r6
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x00a0
            r0 = r12
            r1 = r5
            int r1 = r1.e     // Catch: all -> 0x00b8
            if (r0 <= r1) goto L_0x0080
            goto L_0x00a0
        L_0x0080:
            r0 = r12
            if (r0 <= 0) goto L_0x008c
            r0 = r5
            monitor-exit(r0)     // Catch: all -> 0x00b8
            r0 = r6
            r1 = r10
            long r0 = r0 - r1
            return r0
        L_0x008c:
            r0 = r13
            if (r0 <= 0) goto L_0x0095
            r0 = r5
            monitor-exit(r0)     // Catch: all -> 0x00b8
            r0 = r6
            return r0
        L_0x0095:
            r0 = r5
            r1 = 0
            r0.f8105b = r1     // Catch: all -> 0x00b8
            r0 = r5
            monitor-exit(r0)     // Catch: all -> 0x00b8
            r0 = -1
            return r0
        L_0x00a0:
            r0 = r5
            java.util.Deque<com.bytedance.sdk.a.b.a.b.c> r0 = r0.h     // Catch: all -> 0x00b8
            r1 = r9
            boolean r0 = r0.remove(r1)     // Catch: all -> 0x00b8
            r0 = r5
            monitor-exit(r0)     // Catch: all -> 0x00b8
            r0 = r9
            java.net.Socket r0 = r0.b()
            com.bytedance.sdk.a.b.a.c.a(r0)
            r0 = 0
            return r0
        L_0x00b8:
            r9 = move-exception
            r0 = r5
            monitor-exit(r0)     // Catch: all -> 0x00b8
            r0 = r9
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.a.b.j.a(long):long");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final com.bytedance.sdk.a.b.a.b.c a(a aVar, g gVar, ac acVar) {
        if (f8102c || Thread.holdsLock(this)) {
            for (com.bytedance.sdk.a.b.a.b.c cVar : this.h) {
                if (cVar.a(aVar, acVar)) {
                    gVar.a(cVar, true);
                    return cVar;
                }
            }
            return null;
        }
        throw new AssertionError();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Socket a(a aVar, g gVar) {
        if (f8102c || Thread.holdsLock(this)) {
            for (com.bytedance.sdk.a.b.a.b.c cVar : this.h) {
                if (cVar.a(aVar, null) && cVar.d() && cVar != gVar.b()) {
                    return gVar.a(cVar);
                }
            }
            return null;
        }
        throw new AssertionError();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(com.bytedance.sdk.a.b.a.b.c cVar) {
        if (f8102c || Thread.holdsLock(this)) {
            if (!this.f8105b) {
                this.f8105b = true;
                f8103d.execute(this.g);
            }
            this.h.add(cVar);
            return;
        }
        throw new AssertionError();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean b(com.bytedance.sdk.a.b.a.b.c cVar) {
        if (!f8102c && !Thread.holdsLock(this)) {
            throw new AssertionError();
        } else if (cVar.f7860a || this.e == 0) {
            this.h.remove(cVar);
            return true;
        } else {
            notifyAll();
            return false;
        }
    }
}
