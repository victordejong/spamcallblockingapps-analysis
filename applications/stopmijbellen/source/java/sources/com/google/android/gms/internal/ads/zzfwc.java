package com.google.android.gms.internal.ads;

import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfwc.class */
public abstract class zzfwc<T> extends zzfwz<T> {
    private final Executor zza;
    public final /* synthetic */ zzfwd zzb;

    public zzfwc(zzfwd zzfwdVar, Executor executor) {
        this.zzb = zzfwdVar;
        Objects.requireNonNull(executor);
        this.zza = executor;
    }

    public abstract void zzc(T t);

    @Override // com.google.android.gms.internal.ads.zzfwz
    public final void zzd(Throwable th) {
        this.zzb.zza = null;
        if (th instanceof ExecutionException) {
            this.zzb.zzt(((ExecutionException) th).getCause());
        } else if (th instanceof CancellationException) {
            this.zzb.cancel(false);
        } else {
            this.zzb.zzt(th);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfwz
    public final void zze(T t) {
        this.zzb.zza = null;
        zzc((zzfwc<T>) t);
    }

    public final void zzf() {
        try {
            this.zza.execute(this);
        } catch (RejectedExecutionException e) {
            this.zzb.zzt(e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfwz
    public final boolean zzg() {
        return this.zzb.isDone();
    }
}
