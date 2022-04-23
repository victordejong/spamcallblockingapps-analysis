package com.google.android.gms.internal.ads;

import android.os.Process;
import java.util.concurrent.BlockingQueue;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/up2.class */
public final class up2 extends Thread {

    /* renamed from: h */
    private static final boolean f8825h = C1718ec.f6391b;

    /* renamed from: b */
    private final BlockingQueue<AbstractC1676c1<?>> f8826b;

    /* renamed from: c */
    private final BlockingQueue<AbstractC1676c1<?>> f8827c;

    /* renamed from: d */
    private final do2 f8828d;

    /* renamed from: e */
    private volatile boolean f8829e = false;

    /* renamed from: f */
    private final ed f8830f;

    /* renamed from: g */
    private final qu2 f8831g;

    /* JADX WARN: Multi-variable type inference failed */
    public up2(BlockingQueue blockingQueue, BlockingQueue<AbstractC1676c1<?>> blockingQueue2, BlockingQueue<AbstractC1676c1<?>> blockingQueue3, do2 do2Var, qu2 qu2Var) {
        this.f8826b = blockingQueue;
        this.f8827c = blockingQueue2;
        this.f8828d = blockingQueue3;
        this.f8831g = do2Var;
        this.f8830f = new ed(this, blockingQueue2, do2Var, (byte[]) null);
    }

    /* renamed from: c */
    private void m5352c() {
        qu2 qu2Var;
        AbstractC1676c1<?> take = this.f8826b.take();
        take.m7898e("cache-queue-take");
        take.m7896j(1);
        try {
            take.m7889q();
            dn2 g = this.f8828d.m7711g(take.m7892n());
            if (g == null) {
                take.m7898e("cache-miss");
                if (!this.f8830f.c(take)) {
                    this.f8827c.put(take);
                }
                take.m7896j(2);
                return;
            }
            long currentTimeMillis = System.currentTimeMillis();
            if (g.m7716a(currentTimeMillis)) {
                take.m7898e("cache-hit-expired");
                take.m7891o(g);
                if (!this.f8830f.c(take)) {
                    this.f8827c.put(take);
                }
                take.m7896j(2);
                return;
            }
            take.m7898e("cache-hit");
            C1992v6<?> w = take.m7883w(new yy2(g.f6342a, g.f6348g));
            take.m7898e("cache-hit-parsed");
            if (!w.m5309c()) {
                take.m7898e("cache-parsing-failed");
                this.f8828d.m7714a(take.m7892n(), true);
                take.m7891o(null);
                if (!this.f8830f.c(take)) {
                    this.f8827c.put(take);
                }
                take.m7896j(2);
                return;
            }
            if (g.f6347f < currentTimeMillis) {
                take.m7898e("cache-hit-refresh-needed");
                take.m7891o(g);
                w.f8871d = true;
                if (!this.f8830f.c(take)) {
                    this.f8831g.m6032a(take, w, new zo2(this, take));
                    take.m7896j(2);
                }
                qu2Var = this.f8831g;
            } else {
                qu2Var = this.f8831g;
            }
            qu2Var.m6032a(take, w, null);
            take.m7896j(2);
        } catch (Throwable th) {
            take.m7896j(2);
            throw th;
        }
    }

    /* renamed from: a */
    public final void m5354a() {
        this.f8829e = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        if (f8825h) {
            C1718ec.m7660a("start new dispatcher", new Object[0]);
        }
        Process.setThreadPriority(10);
        this.f8828d.m7712c();
        while (true) {
            try {
                m5352c();
            } catch (InterruptedException e) {
                if (this.f8829e) {
                    Thread.currentThread().interrupt();
                    return;
                }
                C1718ec.m7658c("Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }
}
