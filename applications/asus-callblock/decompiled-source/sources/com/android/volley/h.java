package com.android.volley;

import android.net.TrafficStats;
import android.os.Build;
import android.os.Process;
import android.os.SystemClock;
import java.util.concurrent.BlockingQueue;
/* loaded from: classes-dex2jar.jar:com/android/volley/h.class */
public final class h extends Thread {

    /* renamed from: a  reason: collision with root package name */
    volatile boolean f2298a = false;

    /* renamed from: b  reason: collision with root package name */
    private final BlockingQueue<n<?>> f2299b;
    private final g c;
    private final b d;
    private final q e;

    public h(BlockingQueue<n<?>> blockingQueue, g gVar, b bVar, q qVar) {
        this.f2299b = blockingQueue;
        this.c = gVar;
        this.d = bVar;
        this.e = qVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(10);
        while (true) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            try {
                n<?> take = this.f2299b.take();
                try {
                    take.a("network-queue-take");
                    if (take.i) {
                        take.b("network-discard-cancelled");
                    } else {
                        if (Build.VERSION.SDK_INT >= 14) {
                            TrafficStats.setThreadStatsTag(take.d);
                        }
                        j a2 = this.c.a(take);
                        take.a("network-http-complete");
                        if (!a2.d || !take.j) {
                            p<?> a3 = take.a(a2);
                            take.a("network-parse-complete");
                            if (take.h && a3.f2311b != null) {
                                this.d.a(take.c(), a3.f2311b);
                                take.a("network-cache-written");
                            }
                            take.j = true;
                            this.e.a(take, a3);
                        } else {
                            take.b("not-modified");
                        }
                    }
                } catch (u e) {
                    e.f2343b = SystemClock.elapsedRealtime() - elapsedRealtime;
                    this.e.a(take, n.a(e));
                } catch (Exception e2) {
                    v.a(e2, "Unhandled exception %s", e2.toString());
                    u uVar = new u(e2);
                    uVar.f2343b = SystemClock.elapsedRealtime() - elapsedRealtime;
                    this.e.a(take, uVar);
                }
            } catch (InterruptedException e3) {
                if (this.f2298a) {
                    return;
                }
            }
        }
    }
}
