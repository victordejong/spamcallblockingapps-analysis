package com.google.android.gms.internal.ads;

import java.util.Deque;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingDeque;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfbj.class */
public final class zzfbj<T> {
    private final Deque<zzfsm<T>> zza = new LinkedBlockingDeque();
    private final Callable<T> zzb;
    private final zzfsn zzc;

    public zzfbj(Callable<T> callable, zzfsn zzfsnVar) {
        this.zzb = callable;
        this.zzc = zzfsnVar;
    }

    public final void zza(int i) {
        synchronized (this) {
            int size = this.zza.size();
            for (int i2 = 0; i2 < i - size; i2++) {
                this.zza.add(this.zzc.zzb(this.zzb));
            }
        }
    }

    public final zzfsm<T> zzb() {
        zzfsm<T> poll;
        synchronized (this) {
            zza(1);
            poll = this.zza.poll();
        }
        return poll;
    }

    public final void zzc(zzfsm<T> zzfsmVar) {
        synchronized (this) {
            this.zza.addFirst(zzfsmVar);
        }
    }
}
