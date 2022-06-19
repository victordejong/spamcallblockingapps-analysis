package com.google.android.gms.measurement.internal;

import android.os.Process;
import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Semaphore;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfx.class */
public final class zzfx extends Thread {
    private final BlockingQueue<zzfy<?>> zzb;
    private final /* synthetic */ zzft zzd;
    private boolean zzc = false;
    private final Object zza = new Object();

    public zzfx(zzft zzftVar, String str, BlockingQueue<zzfy<?>> blockingQueue) {
        this.zzd = zzftVar;
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(blockingQueue);
        this.zzb = blockingQueue;
        setName(str);
    }

    private final void zza(InterruptedException interruptedException) {
        this.zzd.zzr().zzi().zza(String.valueOf(getName()).concat(" was interrupted"), interruptedException);
    }

    private final void zzb() {
        Object obj;
        Semaphore semaphore;
        Object obj2;
        zzfx zzfxVar;
        zzfx zzfxVar2;
        obj = this.zzd.zzg;
        synchronized (obj) {
            if (!this.zzc) {
                semaphore = this.zzd.zzh;
                semaphore.release();
                obj2 = this.zzd.zzg;
                obj2.notifyAll();
                zzfxVar = this.zzd.zza;
                if (this == zzfxVar) {
                    this.zzd.zza = null;
                } else {
                    zzfxVar2 = this.zzd.zzb;
                    if (this == zzfxVar2) {
                        this.zzd.zzb = null;
                    } else {
                        this.zzd.zzr().zzf().zza("Current scheduler thread is neither worker nor network");
                    }
                }
                this.zzc = true;
            }
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Object obj;
        boolean z;
        Semaphore semaphore;
        boolean z2 = false;
        while (!z2) {
            try {
                semaphore = this.zzd.zzh;
                semaphore.acquire();
                z2 = true;
            } catch (InterruptedException e) {
                zza(e);
            }
        }
        try {
            int threadPriority = Process.getThreadPriority(Process.myTid());
            while (true) {
                zzfy<?> poll = this.zzb.poll();
                if (poll != null) {
                    Process.setThreadPriority(poll.zza ? threadPriority : 10);
                    poll.run();
                } else {
                    synchronized (this.zza) {
                        if (this.zzb.peek() == null) {
                            z = this.zzd.zzi;
                            if (!z) {
                                try {
                                    this.zza.wait(30000L);
                                } catch (InterruptedException e2) {
                                    zza(e2);
                                }
                            }
                        }
                    }
                    obj = this.zzd.zzg;
                    synchronized (obj) {
                        if (this.zzb.peek() == null) {
                            break;
                        }
                    }
                }
            }
            if (this.zzd.zzt().zza(zzap.zzco)) {
                zzb();
            }
        } finally {
            zzb();
        }
    }

    public final void zza() {
        synchronized (this.zza) {
            this.zza.notifyAll();
        }
    }
}
