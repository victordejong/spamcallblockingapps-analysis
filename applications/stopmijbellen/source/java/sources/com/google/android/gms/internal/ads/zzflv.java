package com.google.android.gms.internal.ads;

import java.util.ArrayDeque;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzflv.class */
public final class zzflv {
    private final BlockingQueue<Runnable> zza;
    private final ThreadPoolExecutor zzb;
    private final ArrayDeque<zzflu> zzc = new ArrayDeque<>();
    private zzflu zzd = null;

    public zzflv() {
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        this.zza = linkedBlockingQueue;
        this.zzb = new ThreadPoolExecutor(1, 1, 1L, TimeUnit.SECONDS, linkedBlockingQueue);
    }

    private final void zzc() {
        zzflu poll = this.zzc.poll();
        this.zzd = poll;
        if (poll != null) {
            poll.executeOnExecutor(this.zzb, new Object[0]);
        }
    }

    public final void zza(zzflu zzfluVar) {
        this.zzd = null;
        zzc();
    }

    public final void zzb(zzflu zzfluVar) {
        zzfluVar.zzb(this);
        this.zzc.add(zzfluVar);
        if (this.zzd == null) {
            zzc();
        }
    }
}
