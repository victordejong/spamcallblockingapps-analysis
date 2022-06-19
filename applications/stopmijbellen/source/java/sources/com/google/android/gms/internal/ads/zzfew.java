package com.google.android.gms.internal.ads;

import java.util.Deque;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingDeque;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfew.class */
public final class zzfew<T> {
    @GuardedBy("this")
    private final Deque<zzfxa<T>> zza = new LinkedBlockingDeque();
    private final Callable<T> zzb;
    private final zzfxb zzc;

    public zzfew(Callable<T> callable, zzfxb zzfxbVar) {
        this.zzb = callable;
        this.zzc = zzfxbVar;
    }

    public final zzfxa<T> zza() {
        zzfxa<T> poll;
        synchronized (this) {
            zzc(1);
            poll = this.zza.poll();
        }
        return poll;
    }

    public final void zzb(zzfxa<T> zzfxaVar) {
        synchronized (this) {
            this.zza.addFirst(zzfxaVar);
        }
    }

    public final void zzc(int i) {
        synchronized (this) {
            int size = this.zza.size();
            for (int i2 = 0; i2 < i - size; i2++) {
                this.zza.add(this.zzc.zzb(this.zzb));
            }
        }
    }
}
