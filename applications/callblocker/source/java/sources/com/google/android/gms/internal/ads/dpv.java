package com.google.android.gms.internal.ads;

import android.net.TrafficStats;
import android.os.Process;
import android.os.SystemClock;
import java.util.concurrent.BlockingQueue;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dpv.class */
public final class dpv extends Thread {

    /* renamed from: a */
    private final BlockingQueue<dts<?>> f15335a;

    /* renamed from: b */
    private final dqu f15336b;

    /* renamed from: c */
    private final AbstractC2759a f15337c;

    /* renamed from: d */
    private final AbstractC2823b f15338d;

    /* renamed from: e */
    private volatile boolean f15339e = false;

    public dpv(BlockingQueue<dts<?>> blockingQueue, dqu dquVar, AbstractC2759a abstractC2759a, AbstractC2823b abstractC2823b) {
        this.f15335a = blockingQueue;
        this.f15336b = dquVar;
        this.f15337c = abstractC2759a;
        this.f15338d = abstractC2823b;
    }

    /* renamed from: b */
    private final void m8907b() {
        dts<?> take = this.f15335a.take();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        take.m8608a(3);
        try {
            take.m8600b("network-queue-take");
            take.m8593h();
            TrafficStats.setThreadStatsTag(take.m8597d());
            drt mo6883a = this.f15336b.mo6883a(take);
            take.m8600b("network-http-complete");
            if (mo6883a.f15525e && take.m8588m()) {
                take.m8598c("not-modified");
                take.m8587n();
                return;
            }
            ecj<?> mo6863a = take.mo6863a(mo6883a);
            take.m8600b("network-parse-complete");
            if (take.m8592i() && mo6863a.f16284b != null) {
                this.f15337c.mo7707a(take.m8595f(), mo6863a.f16284b);
                take.m8600b("network-cache-written");
            }
            take.m8589l();
            this.f15338d.mo9085a(take, mo6863a);
            take.m8603a(mo6863a);
        } catch (zzae e) {
            e.m6644a(SystemClock.elapsedRealtime() - elapsedRealtime);
            this.f15338d.mo9083a(take, e);
            take.m8587n();
        } catch (Exception e2) {
            C3128ez.m7852a(e2, "Unhandled exception %s", e2.toString());
            zzae zzaeVar = new zzae(e2);
            zzaeVar.m6644a(SystemClock.elapsedRealtime() - elapsedRealtime);
            this.f15338d.mo9083a(take, zzaeVar);
            take.m8587n();
        } finally {
            take.m8608a(4);
        }
    }

    /* renamed from: a */
    public final void m8908a() {
        this.f15339e = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(10);
        while (true) {
            try {
                m8907b();
            } catch (InterruptedException e) {
                if (this.f15339e) {
                    Thread.currentThread().interrupt();
                    return;
                }
                C3128ez.m7850c("Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }
}
