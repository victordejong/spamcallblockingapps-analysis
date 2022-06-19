package com.google.android.gms.internal.ads;

import android.net.TrafficStats;
import android.os.Process;
import android.os.SystemClock;
import java.util.concurrent.BlockingQueue;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzvw.class */
public final class zzvw extends Thread {
    private final BlockingQueue<zzwc<?>> zza;
    private final zzvv zzb;
    private final zzvm zzc;
    private volatile boolean zzd = false;
    private final zzvt zze;

    /* JADX WARN: Multi-variable type inference failed */
    public zzvw(BlockingQueue blockingQueue, BlockingQueue<zzwc<?>> blockingQueue2, zzvv zzvvVar, zzvm zzvmVar, zzvt zzvtVar) {
        this.zza = blockingQueue;
        this.zzb = blockingQueue2;
        this.zzc = zzvvVar;
        this.zze = zzvmVar;
    }

    private void zzb() throws InterruptedException {
        zzwc<?> take = this.zza.take();
        SystemClock.elapsedRealtime();
        take.zzf(3);
        try {
            take.zzd("network-queue-take");
            take.zzm();
            TrafficStats.setThreadStatsTag(take.zzc());
            zzvy zza = this.zzb.zza(take);
            take.zzd("network-http-complete");
            if (zza.zze && take.zzr()) {
                take.zze("not-modified");
                take.zzx();
                return;
            }
            zzwi<?> zzs = take.zzs(zza);
            take.zzd("network-parse-complete");
            if (zzs.zzb != null) {
                this.zzc.zzb(take.zzj(), zzs.zzb);
                take.zzd("network-cache-written");
            }
            take.zzq();
            this.zze.zza(take, zzs, null);
            take.zzw(zzs);
        } catch (zzwl e) {
            SystemClock.elapsedRealtime();
            this.zze.zzb(take, e);
            take.zzx();
        } catch (Exception e2) {
            zzwo.zzd(e2, "Unhandled exception %s", e2.toString());
            zzwl zzwlVar = new zzwl(e2);
            SystemClock.elapsedRealtime();
            this.zze.zzb(take, zzwlVar);
            take.zzx();
        } finally {
            take.zzf(4);
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
                zzwo.zzc("Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }

    public final void zza() {
        this.zzd = true;
        interrupt();
    }
}
