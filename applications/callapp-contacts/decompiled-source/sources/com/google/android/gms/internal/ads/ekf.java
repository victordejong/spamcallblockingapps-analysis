package com.google.android.gms.internal.ads;

import android.net.TrafficStats;
import android.os.Process;
import android.os.SystemClock;
import java.util.concurrent.BlockingQueue;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ekf.class */
public final class ekf extends Thread {

    /* renamed from: a  reason: collision with root package name */
    private final BlockingQueue<z<?>> f27937a;

    /* renamed from: b  reason: collision with root package name */
    private final ehl f27938b;

    /* renamed from: c  reason: collision with root package name */
    private final dxu f27939c;

    /* renamed from: d  reason: collision with root package name */
    private final jz f27940d;
    private volatile boolean e = false;

    public ekf(BlockingQueue<z<?>> blockingQueue, ehl ehlVar, dxu dxuVar, jz jzVar) {
        this.f27937a = blockingQueue;
        this.f27938b = ehlVar;
        this.f27939c = dxuVar;
        this.f27940d = jzVar;
    }

    public final void a() {
        this.e = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(10);
        while (true) {
            try {
                z<?> take = this.f27937a.take();
                long elapsedRealtime = SystemClock.elapsedRealtime();
                take.zzd(3);
                try {
                    try {
                        take.zzc("network-queue-take");
                        take.isCanceled();
                        TrafficStats.setThreadStatsTag(take.zzd());
                        emg zza = this.f27938b.zza(take);
                        take.zzc("network-http-complete");
                        if (!zza.e || !take.zzl()) {
                            fa<?> zza2 = take.zza(zza);
                            take.zzc("network-parse-complete");
                            if (take.zzh() && zza2.f27993b != null) {
                                this.f27939c.a(take.zze(), zza2.f27993b);
                                take.zzc("network-cache-written");
                            }
                            take.zzk();
                            this.f27940d.a(take, zza2);
                            take.zza(zza2);
                            take.zzd(4);
                        } else {
                            take.zzd("not-modified");
                            take.zzm();
                            take.zzd(4);
                        }
                    } catch (Exception e) {
                        mz.a(e, "Unhandled exception %s", e.toString());
                        zzap zzapVar = new zzap(e);
                        zzapVar.f28598a = SystemClock.elapsedRealtime() - elapsedRealtime;
                        this.f27940d.a(take, zzapVar);
                        take.zzm();
                        take.zzd(4);
                    }
                } catch (zzap e2) {
                    e2.f28598a = SystemClock.elapsedRealtime() - elapsedRealtime;
                    this.f27940d.a(take, e2);
                    take.zzm();
                    take.zzd(4);
                }
            } catch (InterruptedException e3) {
                if (this.e) {
                    Thread.currentThread().interrupt();
                    return;
                }
                mz.c("Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }
}
