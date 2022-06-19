package com.google.android.gms.internal.ads;

import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfrp.class */
public abstract class zzfrp<T> extends zzfsl<T> {
    private final Executor zza;
    final /* synthetic */ yz2 zzb;

    public zzfrp(yz2 yz2Var, Executor executor) {
        this.zzb = yz2Var;
        Objects.requireNonNull(executor);
        this.zza = executor;
    }

    abstract void zzb(T t);

    @Override // com.google.android.gms.internal.ads.zzfsl
    final boolean zzd() {
        return this.zzb.isDone();
    }

    public final void zze() {
        try {
            this.zza.execute(this);
        } catch (RejectedExecutionException e) {
            this.zzb.mo8631v(e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfsl
    final void zzf(T t) {
        this.zzb.f32733s = null;
        zzb(t);
    }

    @Override // com.google.android.gms.internal.ads.zzfsl
    final void zzg(Throwable th) {
        this.zzb.f32733s = null;
        if (th instanceof ExecutionException) {
            this.zzb.mo8631v(((ExecutionException) th).getCause());
        } else if (th instanceof CancellationException) {
            this.zzb.cancel(false);
        } else {
            this.zzb.mo8631v(th);
        }
    }
}
