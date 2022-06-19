package com.google.android.gms.internal.ads;

import android.os.Process;
import java.util.concurrent.BlockingQueue;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzvo.class */
public final class zzvo extends Thread {
    private static final boolean zza = zzwo.zzb;
    private final BlockingQueue<zzwc<?>> zzb;
    private final BlockingQueue<zzwc<?>> zzc;
    private final zzvm zzd;
    private volatile boolean zze = false;
    private final zzwp zzf;
    private final zzvt zzg;

    /* JADX WARN: Multi-variable type inference failed */
    public zzvo(BlockingQueue blockingQueue, BlockingQueue<zzwc<?>> blockingQueue2, BlockingQueue<zzwc<?>> blockingQueue3, zzvm zzvmVar, zzvt zzvtVar) {
        this.zzb = blockingQueue;
        this.zzc = blockingQueue2;
        this.zzd = blockingQueue3;
        this.zzg = zzvmVar;
        this.zzf = new zzwp(this, blockingQueue2, zzvmVar, null);
    }

    private void zzc() throws InterruptedException {
        zzwc<?> take = this.zzb.take();
        take.zzd("cache-queue-take");
        take.zzf(1);
        try {
            take.zzm();
            zzvl zza2 = this.zzd.zza(take.zzj());
            if (zza2 == null) {
                take.zzd("cache-miss");
                if (!this.zzf.zzc(take)) {
                    this.zzc.put(take);
                }
                return;
            }
            long currentTimeMillis = System.currentTimeMillis();
            if (zza2.zza(currentTimeMillis)) {
                take.zzd("cache-hit-expired");
                take.zzk(zza2);
                if (!this.zzf.zzc(take)) {
                    this.zzc.put(take);
                }
                return;
            }
            take.zzd("cache-hit");
            zzwi<?> zzs = take.zzs(new zzvy(zza2.zza, zza2.zzg));
            take.zzd("cache-hit-parsed");
            if (!zzs.zzc()) {
                take.zzd("cache-parsing-failed");
                this.zzd.zzd(take.zzj(), true);
                take.zzk(null);
                if (!this.zzf.zzc(take)) {
                    this.zzc.put(take);
                }
                return;
            }
            if (zza2.zzf < currentTimeMillis) {
                take.zzd("cache-hit-refresh-needed");
                take.zzk(zza2);
                zzs.zzd = true;
                if (!this.zzf.zzc(take)) {
                    this.zzg.zza(take, zzs, new zzvn(this, take));
                } else {
                    this.zzg.zza(take, zzs, null);
                }
            } else {
                this.zzg.zza(take, zzs, null);
            }
        } finally {
            take.zzf(2);
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        if (zza) {
            zzwo.zza("start new dispatcher", new Object[0]);
        }
        Process.setThreadPriority(10);
        this.zzd.zzc();
        while (true) {
            try {
                zzc();
            } catch (InterruptedException e) {
                if (this.zze) {
                    Thread.currentThread().interrupt();
                    return;
                }
                zzwo.zzc("Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }

    public final void zzb() {
        this.zze = true;
        interrupt();
    }
}
