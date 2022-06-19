package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfxc.class */
public final class zzfxc implements Executor {
    public final /* synthetic */ Executor zza;
    public final /* synthetic */ zzfvg zzb;

    public zzfxc(Executor executor, zzfvg zzfvgVar) {
        this.zza = executor;
        this.zzb = zzfvgVar;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        try {
            this.zza.execute(runnable);
        } catch (RejectedExecutionException e) {
            this.zzb.zzt(e);
        }
    }
}
