package com.google.android.gms.internal.ads;

import java.util.Deque;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingDeque;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdof.class */
public final class zzdof<T> {
    private final zzdzv zzghl;
    @GuardedBy("this")
    private final Deque<zzdzw<T>> zzhlo = new LinkedBlockingDeque();
    private final Callable<T> zzhlp;

    public zzdof(Callable<T> callable, zzdzv zzdzvVar) {
        this.zzhlp = callable;
        this.zzghl = zzdzvVar;
    }

    public final void ensureSize(int i) {
        synchronized (this) {
            int size = this.zzhlo.size();
            for (int i2 = 0; i2 < i - size; i2++) {
                this.zzhlo.add(this.zzghl.zze(this.zzhlp));
            }
        }
    }

    public final zzdzw<T> zzavm() {
        zzdzw<T> poll;
        synchronized (this) {
            ensureSize(1);
            poll = this.zzhlo.poll();
        }
        return poll;
    }

    public final void zzd(zzdzw<T> zzdzwVar) {
        synchronized (this) {
            this.zzhlo.addFirst(zzdzwVar);
        }
    }
}
