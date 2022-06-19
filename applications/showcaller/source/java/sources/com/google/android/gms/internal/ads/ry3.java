package com.google.android.gms.internal.ads;

import android.os.Process;
import java.util.concurrent.BlockingQueue;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ry3.class */
public final class ry3 extends Thread {

    /* renamed from: d */
    private static final boolean f29311d = mz3.f26925b;

    /* renamed from: e */
    private final BlockingQueue<dz3<?>> f29312e;

    /* renamed from: f */
    private final BlockingQueue<dz3<?>> f29313f;

    /* renamed from: g */
    private final py3 f29314g;

    /* renamed from: h */
    private volatile boolean f29315h = false;

    /* renamed from: i */
    private final nz3 f29316i;

    /* renamed from: j */
    private final vy3 f29317j;

    /* JADX WARN: Multi-variable type inference failed */
    public ry3(BlockingQueue blockingQueue, BlockingQueue<dz3<?>> blockingQueue2, BlockingQueue<dz3<?>> blockingQueue3, py3 py3Var, vy3 vy3Var) {
        this.f29312e = blockingQueue;
        this.f29313f = blockingQueue2;
        this.f29314g = blockingQueue3;
        this.f29317j = py3Var;
        this.f29316i = new nz3(this, blockingQueue2, py3Var, null);
    }

    /* renamed from: c */
    private void m11250c() {
        dz3<?> take = this.f29312e.take();
        take.m15639f("cache-queue-take");
        take.m15637h(1);
        try {
            take.m15630o();
            oy3 mo9398n = this.f29314g.mo9398n(take.m15633l());
            if (mo9398n == null) {
                take.m15639f("cache-miss");
                if (!this.f29316i.m12765c(take)) {
                    this.f29313f.put(take);
                }
                return;
            }
            long currentTimeMillis = System.currentTimeMillis();
            if (mo9398n.m12472a(currentTimeMillis)) {
                take.m15639f("cache-hit-expired");
                take.m15632m(mo9398n);
                if (!this.f29316i.m12765c(take)) {
                    this.f29313f.put(take);
                }
                return;
            }
            take.m15639f("cache-hit");
            jz3<?> mo14999u = take.mo14999u(new zy3(mo9398n.f27789a, mo9398n.f27795g));
            take.m15639f("cache-hit-parsed");
            if (!mo14999u.m14009c()) {
                take.m15639f("cache-parsing-failed");
                this.f29314g.mo9410b(take.m15633l(), true);
                take.m15632m(null);
                if (!this.f29316i.m12765c(take)) {
                    this.f29313f.put(take);
                }
                return;
            }
            if (mo9398n.f27794f < currentTimeMillis) {
                take.m15639f("cache-hit-refresh-needed");
                take.m15632m(mo9398n);
                mo14999u.f25038d = true;
                if (!this.f29316i.m12765c(take)) {
                    this.f29317j.m9835a(take, mo14999u, new qy3(this, take));
                } else {
                    this.f29317j.m9835a(take, mo14999u, null);
                }
            } else {
                this.f29317j.m9835a(take, mo14999u, null);
            }
        } finally {
            take.m15637h(2);
        }
    }

    /* renamed from: b */
    public final void m11251b() {
        this.f29315h = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        if (f29311d) {
            mz3.m13040a("start new dispatcher", new Object[0]);
        }
        Process.setThreadPriority(10);
        this.f29314g.mo9409c();
        while (true) {
            try {
                m11250c();
            } catch (InterruptedException e) {
                if (this.f29315h) {
                    Thread.currentThread().interrupt();
                    return;
                }
                mz3.m13038c("Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }
}
