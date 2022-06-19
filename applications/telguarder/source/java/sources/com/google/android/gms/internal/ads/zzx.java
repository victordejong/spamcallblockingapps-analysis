package com.google.android.gms.internal.ads;

import android.net.TrafficStats;
import android.os.Process;
import android.os.SystemClock;
import java.util.concurrent.BlockingQueue;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzx.class */
public final class zzx extends Thread {
    private final BlockingQueue<zzab<?>> zzah;
    private final zzu zzai;
    private final zzk zzn;
    private final zzal zzo;
    private volatile boolean zzp = false;

    public zzx(BlockingQueue<zzab<?>> blockingQueue, zzu zzuVar, zzk zzkVar, zzal zzalVar) {
        this.zzah = blockingQueue;
        this.zzai = zzuVar;
        this.zzn = zzkVar;
        this.zzo = zzalVar;
    }

    private final void processRequest() throws InterruptedException {
        zzab<?> take = this.zzah.take();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        take.zzd(3);
        try {
            take.zzc("network-queue-take");
            take.isCanceled();
            TrafficStats.setThreadStatsTag(take.zzd());
            zzz zza = this.zzai.zza(take);
            take.zzc("network-http-complete");
            if (zza.zzak && take.zzl()) {
                take.zzd("not-modified");
                take.zzm();
                return;
            }
            zzag<?> zza2 = take.zza(zza);
            take.zzc("network-parse-complete");
            if (take.zzh() && zza2.zzbq != null) {
                this.zzn.zza(take.zze(), zza2.zzbq);
                take.zzc("network-cache-written");
            }
            take.zzk();
            this.zzo.zza(take, zza2);
            take.zza(zza2);
        } catch (zzap e) {
            e.zza(SystemClock.elapsedRealtime() - elapsedRealtime);
            this.zzo.zza(take, e);
            take.zzm();
        } catch (Exception e2) {
            zzao.zza(e2, "Unhandled exception %s", e2.toString());
            zzap zzapVar = new zzap(e2);
            zzapVar.zza(SystemClock.elapsedRealtime() - elapsedRealtime);
            this.zzo.zza(take, zzapVar);
            take.zzm();
        } finally {
            take.zzd(4);
        }
    }

    public final void quit() {
        this.zzp = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(10);
        while (true) {
            try {
                processRequest();
            } catch (InterruptedException e) {
                if (this.zzp) {
                    Thread.currentThread().interrupt();
                    return;
                }
                zzao.m1355e("Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }
}
