package com.google.android.gms.measurement.internal;

import android.os.Process;
import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Semaphore;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfq.class */
public final class zzfq extends Thread {
    public final /* synthetic */ zzfr zza;
    private final BlockingQueue<zzfp<?>> zzc;
    private boolean zzd = false;
    private final Object zzb = new Object();

    public zzfq(zzfr zzfrVar, String str, BlockingQueue<zzfp<?>> blockingQueue) {
        this.zza = zzfrVar;
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(blockingQueue);
        this.zzc = blockingQueue;
        setName(str);
    }

    private final void zzb() {
        Object obj;
        Semaphore semaphore;
        Object obj2;
        zzfq zzfqVar;
        zzfq zzfqVar2;
        obj = this.zza.zzg;
        synchronized (obj) {
            if (!this.zzd) {
                semaphore = this.zza.zzh;
                semaphore.release();
                obj2 = this.zza.zzg;
                obj2.notifyAll();
                zzfqVar = this.zza.zza;
                if (this == zzfqVar) {
                    this.zza.zza = null;
                } else {
                    zzfqVar2 = this.zza.zzb;
                    if (this == zzfqVar2) {
                        this.zza.zzb = null;
                    } else {
                        this.zza.zzs.zzau().zzb().zza("Current scheduler thread is neither worker nor network");
                    }
                }
                this.zzd = true;
            }
        }
    }

    private final void zzc(InterruptedException interruptedException) {
        this.zza.zzs.zzau().zze().zzb(String.valueOf(getName()).concat(" was interrupted"), interruptedException);
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Object obj;
        Semaphore semaphore;
        boolean z = false;
        while (!z) {
            try {
                semaphore = this.zza.zzh;
                semaphore.acquire();
                z = true;
            } catch (InterruptedException e) {
                zzc(e);
            }
        }
        try {
            int threadPriority = Process.getThreadPriority(Process.myTid());
            while (true) {
                zzfp<?> poll = this.zzc.poll();
                if (poll != null) {
                    Process.setThreadPriority(true != poll.zza ? 10 : threadPriority);
                    poll.run();
                } else {
                    synchronized (this.zzb) {
                        if (this.zzc.peek() == null) {
                            boolean unused = this.zza.zzi;
                            try {
                                this.zzb.wait(30000L);
                            } catch (InterruptedException e2) {
                                zzc(e2);
                            }
                        }
                    }
                    obj = this.zza.zzg;
                    synchronized (obj) {
                        if (this.zzc.peek() == null) {
                            break;
                        }
                    }
                }
            }
            if (this.zza.zzs.zzc().zzn(null, zzea.zzao)) {
                zzb();
            }
        } finally {
            zzb();
        }
    }

    public final void zza() {
        synchronized (this.zzb) {
            this.zzb.notifyAll();
        }
    }
}
