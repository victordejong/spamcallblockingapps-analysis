package com.google.android.gms.internal.ads;

import android.net.TrafficStats;
import android.os.Process;
import android.os.SystemClock;
import java.util.concurrent.BlockingQueue;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/fx2.class */
public final class fx2 extends Thread {

    /* renamed from: b */
    private final BlockingQueue<AbstractC1676c1<?>> f6601b;

    /* renamed from: c */
    private final kw2 f6602c;

    /* renamed from: d */
    private final do2 f6603d;

    /* renamed from: e */
    private volatile boolean f6604e = false;

    /* renamed from: f */
    private final qu2 f6605f;

    /* JADX WARN: Multi-variable type inference failed */
    public fx2(BlockingQueue blockingQueue, BlockingQueue<AbstractC1676c1<?>> blockingQueue2, kw2 kw2Var, do2 do2Var, qu2 qu2Var) {
        this.f6601b = blockingQueue;
        this.f6602c = blockingQueue2;
        this.f6603d = kw2Var;
        this.f6605f = do2Var;
    }

    /* renamed from: b */
    private void m7425b() {
        AbstractC1676c1<?> take = this.f6601b.take();
        SystemClock.elapsedRealtime();
        take.m7896j(3);
        try {
            take.m7898e("network-queue-take");
            take.m7889q();
            TrafficStats.setThreadStatsTag(take.m7899a());
            yy2 a = this.f6602c.m6747a(take);
            take.m7898e("network-http-complete");
            if (!a.f9289e || !take.m7884v()) {
                C1992v6<?> w = take.m7883w(a);
                take.m7898e("network-parse-complete");
                if (w.f8869b != null) {
                    this.f6603d.m7713b(take.m7892n(), w.f8869b);
                    take.m7898e("network-cache-written");
                }
                take.m7885u();
                this.f6605f.m6032a(take, w, null);
                take.m7903A(w);
                return;
            }
            take.m7897h("not-modified");
            take.m7902B();
        } catch (zzal e) {
            SystemClock.elapsedRealtime();
            this.f6605f.m6031b(take, e);
            take.m7902B();
        } catch (Exception e2) {
            C1718ec.m7657d(e2, "Unhandled exception %s", e2.toString());
            zzal zzalVar = new zzal(e2);
            SystemClock.elapsedRealtime();
            this.f6605f.m6031b(take, zzalVar);
            take.m7902B();
        } finally {
            take.m7896j(4);
        }
    }

    /* renamed from: a */
    public final void m7426a() {
        this.f6604e = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(10);
        while (true) {
            try {
                m7425b();
            } catch (InterruptedException e) {
                if (this.f6604e) {
                    Thread.currentThread().interrupt();
                    return;
                }
                C1718ec.m7658c("Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }
}
