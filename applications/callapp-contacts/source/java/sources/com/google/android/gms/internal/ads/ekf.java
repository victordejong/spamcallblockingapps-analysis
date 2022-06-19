package com.google.android.gms.internal.ads;

import android.net.TrafficStats;
import android.os.Process;
import android.os.SystemClock;
import java.util.concurrent.BlockingQueue;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ekf.class */
public final class ekf extends Thread {

    /* renamed from: a */
    private final BlockingQueue<AbstractC13087z<?>> f49158a;

    /* renamed from: b */
    private final ehl f49159b;

    /* renamed from: c */
    private final dxu f49160c;

    /* renamed from: d */
    private final AbstractC12678jz f49161d;

    /* renamed from: e */
    private volatile boolean f49162e = false;

    public ekf(BlockingQueue<AbstractC13087z<?>> blockingQueue, ehl ehlVar, dxu dxuVar, AbstractC12678jz abstractC12678jz) {
        this.f49158a = blockingQueue;
        this.f49159b = ehlVar;
        this.f49160c = dxuVar;
        this.f49161d = abstractC12678jz;
    }

    /* renamed from: a */
    public final void m14825a() {
        this.f49162e = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(10);
        while (true) {
            try {
                AbstractC13087z<?> take = this.f49158a.take();
                long elapsedRealtime = SystemClock.elapsedRealtime();
                take.zzd(3);
                try {
                    try {
                        take.zzc("network-queue-take");
                        take.isCanceled();
                        TrafficStats.setThreadStatsTag(take.zzd());
                        emg zza = this.f49159b.zza(take);
                        take.zzc("network-http-complete");
                        if (!zza.f49175e || !take.zzl()) {
                            C12545fa<?> zza2 = take.zza(zza);
                            take.zzc("network-parse-complete");
                            if (take.zzh() && zza2.f49281b != null) {
                                this.f49160c.mo14165a(take.zze(), zza2.f49281b);
                                take.zzc("network-cache-written");
                            }
                            take.zzk();
                            this.f49161d.mo14561a(take, zza2);
                            take.zza(zza2);
                            take.zzd(4);
                        } else {
                            take.zzd("not-modified");
                            take.zzm();
                            take.zzd(4);
                        }
                    } catch (Exception e) {
                        C12759mz.m14481a(e, "Unhandled exception %s", e.toString());
                        zzap zzapVar = new zzap(e);
                        zzapVar.f50146a = SystemClock.elapsedRealtime() - elapsedRealtime;
                        this.f49161d.mo14559a(take, zzapVar);
                        take.zzm();
                        take.zzd(4);
                    }
                } catch (zzap e2) {
                    e2.f50146a = SystemClock.elapsedRealtime() - elapsedRealtime;
                    this.f49161d.mo14559a(take, e2);
                    take.zzm();
                    take.zzd(4);
                }
            } catch (InterruptedException e3) {
                if (this.f49162e) {
                    Thread.currentThread().interrupt();
                    return;
                }
                C12759mz.m14479c("Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }
}
