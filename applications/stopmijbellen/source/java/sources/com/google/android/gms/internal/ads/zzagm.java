package com.google.android.gms.internal.ads;

import android.net.TrafficStats;
import android.os.Process;
import android.os.SystemClock;
import java.util.concurrent.BlockingQueue;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzagm.class */
public final class zzagm extends Thread {
    private final BlockingQueue<zzags<?>> zza;
    private final zzagl zzb;
    private final zzagc zzc;
    private volatile boolean zzd = false;
    private final zzagj zze;

    /* JADX WARN: Multi-variable type inference failed */
    public zzagm(BlockingQueue blockingQueue, BlockingQueue<zzags<?>> blockingQueue2, zzagl zzaglVar, zzagc zzagcVar, zzagj zzagjVar) {
        this.zza = blockingQueue;
        this.zzb = blockingQueue2;
        this.zzc = zzaglVar;
        this.zze = zzagcVar;
    }

    private void zzb() throws InterruptedException {
        zzags<?> take = this.zza.take();
        SystemClock.elapsedRealtime();
        take.zzt(3);
        try {
            take.zzm("network-queue-take");
            take.zzw();
            TrafficStats.setThreadStatsTag(take.zzc());
            zzago zza = this.zzb.zza(take);
            take.zzm("network-http-complete");
            if (zza.zze && take.zzv()) {
                take.zzp("not-modified");
                take.zzr();
                return;
            }
            zzagy<?> zzh = take.zzh(zza);
            take.zzm("network-parse-complete");
            if (zzh.zzb != null) {
                this.zzc.zzd(take.zzj(), zzh.zzb);
                take.zzm("network-cache-written");
            }
            take.zzq();
            this.zze.zzb(take, zzh, null);
            take.zzs(zzh);
        } catch (zzahb e) {
            SystemClock.elapsedRealtime();
            this.zze.zza(take, e);
            take.zzr();
        } catch (Exception e2) {
            zzahe.zzc(e2, "Unhandled exception %s", e2.toString());
            zzahb zzahbVar = new zzahb(e2);
            SystemClock.elapsedRealtime();
            this.zze.zza(take, zzahbVar);
            take.zzr();
        } finally {
            take.zzt(4);
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(10);
        while (true) {
            try {
                zzb();
            } catch (InterruptedException e) {
                if (this.zzd) {
                    Thread.currentThread().interrupt();
                    return;
                }
                zzahe.zzb("Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }

    public final void zza() {
        this.zzd = true;
        interrupt();
    }
}
