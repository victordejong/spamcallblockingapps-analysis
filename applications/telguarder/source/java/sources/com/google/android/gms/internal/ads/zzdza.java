package com.google.android.gms.internal.ads;

import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdza.class */
public abstract class zzdza<T> extends zzdzs<T> {
    private final Executor zziag;
    private final /* synthetic */ zzdyy zziah;

    public zzdza(zzdyy zzdyyVar, Executor executor) {
        this.zziah = zzdyyVar;
        this.zziag = (Executor) zzdwl.checkNotNull(executor);
    }

    public final void execute() {
        try {
            this.zziag.execute(this);
        } catch (RejectedExecutionException e) {
            this.zziah.setException(e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdzs
    final boolean isDone() {
        return this.zziah.isDone();
    }

    abstract void setValue(T t);

    @Override // com.google.android.gms.internal.ads.zzdzs
    final void zzb(T t, Throwable th) {
        this.zziah.zziaf = null;
        if (th == null) {
            setValue(t);
        } else if (th instanceof ExecutionException) {
            this.zziah.setException(th.getCause());
        } else if (th instanceof CancellationException) {
            this.zziah.cancel(false);
        } else {
            this.zziah.setException(th);
        }
    }
}
