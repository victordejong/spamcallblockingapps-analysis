package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfso.class */
public final class zzfso implements Executor {
    public final /* synthetic */ Executor zza;
    public final /* synthetic */ zzfqw zzb;

    public zzfso(Executor executor, zzfqw zzfqwVar) {
        this.zza = executor;
        this.zzb = zzfqwVar;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        try {
            this.zza.execute(runnable);
        } catch (RejectedExecutionException e) {
            this.zzb.zzq(e);
        }
    }
}
