package com.google.android.gms.tasks;

import java.util.ArrayDeque;
import java.util.Queue;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/zzr.class */
public final class zzr<TResult> {
    private final Object zza = new Object();
    @GuardedBy("mLock")
    private Queue<zzq<TResult>> zzb;
    @GuardedBy("mLock")
    private boolean zzc;

    public final void zza(zzq<TResult> zzqVar) {
        synchronized (this.zza) {
            if (this.zzb == null) {
                this.zzb = new ArrayDeque();
            }
            this.zzb.add(zzqVar);
        }
    }

    public final void zzb(Task<TResult> task) {
        zzq<TResult> poll;
        synchronized (this.zza) {
            if (this.zzb != null && !this.zzc) {
                this.zzc = true;
                while (true) {
                    synchronized (this.zza) {
                        poll = this.zzb.poll();
                        if (poll == null) {
                            this.zzc = false;
                            return;
                        }
                    }
                    poll.zza(task);
                }
            }
        }
    }
}
