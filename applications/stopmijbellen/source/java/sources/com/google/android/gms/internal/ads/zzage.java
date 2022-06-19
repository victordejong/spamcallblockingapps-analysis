package com.google.android.gms.internal.ads;

import android.os.Process;
import java.util.concurrent.BlockingQueue;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzage.class */
public final class zzage extends Thread {
    private static final boolean zza = zzahe.zzb;
    private final BlockingQueue<zzags<?>> zzb;
    private final BlockingQueue<zzags<?>> zzc;
    private final zzagc zzd;
    private volatile boolean zze = false;
    private final zzahf zzf;
    private final zzagj zzg;

    /* JADX WARN: Multi-variable type inference failed */
    public zzage(BlockingQueue blockingQueue, BlockingQueue<zzags<?>> blockingQueue2, BlockingQueue<zzags<?>> blockingQueue3, zzagc zzagcVar, zzagj zzagjVar) {
        this.zzb = blockingQueue;
        this.zzc = blockingQueue2;
        this.zzd = blockingQueue3;
        this.zzg = zzagcVar;
        this.zzf = new zzahf(this, blockingQueue2, zzagcVar, null);
    }

    private void zzc() throws InterruptedException {
        zzags<?> take = this.zzb.take();
        take.zzm("cache-queue-take");
        take.zzt(1);
        try {
            take.zzw();
            zzagb zza2 = this.zzd.zza(take.zzj());
            if (zza2 == null) {
                take.zzm("cache-miss");
                if (!this.zzf.zzc(take)) {
                    this.zzc.put(take);
                }
                return;
            }
            long currentTimeMillis = System.currentTimeMillis();
            if (zza2.zza(currentTimeMillis)) {
                take.zzm("cache-hit-expired");
                take.zze(zza2);
                if (!this.zzf.zzc(take)) {
                    this.zzc.put(take);
                }
                return;
            }
            take.zzm("cache-hit");
            zzagy<?> zzh = take.zzh(new zzago(zza2.zza, zza2.zzg));
            take.zzm("cache-hit-parsed");
            if (!zzh.zzc()) {
                take.zzm("cache-parsing-failed");
                this.zzd.zzc(take.zzj(), true);
                take.zze(null);
                if (!this.zzf.zzc(take)) {
                    this.zzc.put(take);
                }
                return;
            }
            if (zza2.zzf < currentTimeMillis) {
                take.zzm("cache-hit-refresh-needed");
                take.zze(zza2);
                zzh.zzd = true;
                if (!this.zzf.zzc(take)) {
                    this.zzg.zzb(take, zzh, new zzagd(this, take));
                } else {
                    this.zzg.zzb(take, zzh, null);
                }
            } else {
                this.zzg.zzb(take, zzh, null);
            }
        } finally {
            take.zzt(2);
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        if (zza) {
            zzahe.zzd("start new dispatcher", new Object[0]);
        }
        Process.setThreadPriority(10);
        this.zzd.zzb();
        while (true) {
            try {
                zzc();
            } catch (InterruptedException e) {
                if (this.zze) {
                    Thread.currentThread().interrupt();
                    return;
                }
                zzahe.zzb("Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }

    public final void zzb() {
        this.zze = true;
        interrupt();
    }
}
