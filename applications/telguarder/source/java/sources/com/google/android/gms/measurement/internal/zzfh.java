package com.google.android.gms.measurement.internal;

import android.os.Process;
import androidx.work.WorkRequest;
import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Semaphore;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzfh.class */
public final class zzfh extends Thread {
    final /* synthetic */ zzfi zza;
    private final BlockingQueue<zzfg<?>> zzc;
    private boolean zzd = false;
    private final Object zzb = new Object();

    public zzfh(zzfi zzfiVar, String str, BlockingQueue<zzfg<?>> blockingQueue) {
        this.zza = zzfiVar;
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(blockingQueue);
        this.zzc = blockingQueue;
        setName(str);
    }

    private final void zzb() {
        Object obj;
        Semaphore semaphore;
        Object obj2;
        zzfh zzfhVar;
        zzfh zzfhVar2;
        obj = this.zza.zzg;
        synchronized (obj) {
            if (!this.zzd) {
                semaphore = this.zza.zzh;
                semaphore.release();
                obj2 = this.zza.zzg;
                obj2.notifyAll();
                zzfhVar = this.zza.zza;
                if (this == zzfhVar) {
                    this.zza.zza = null;
                } else {
                    zzfhVar2 = this.zza.zzb;
                    if (this == zzfhVar2) {
                        this.zza.zzb = null;
                    } else {
                        this.zza.zzx.zzat().zzb().zza("Current scheduler thread is neither worker nor network");
                    }
                }
                this.zzd = true;
            }
        }
    }

    private final void zzc(InterruptedException interruptedException) {
        this.zza.zzx.zzat().zze().zzb(String.valueOf(getName()).concat(" was interrupted"), interruptedException);
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
                zzfg<?> poll = this.zzc.poll();
                if (poll != null) {
                    Process.setThreadPriority(true != poll.zza ? 10 : threadPriority);
                    poll.run();
                } else {
                    synchronized (this.zzb) {
                        if (this.zzc.peek() == null) {
                            boolean unused = this.zza.zzi;
                            try {
                                this.zzb.wait(WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS);
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
            if (this.zza.zzx.zzc().zzn(null, zzdw.zzap)) {
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
