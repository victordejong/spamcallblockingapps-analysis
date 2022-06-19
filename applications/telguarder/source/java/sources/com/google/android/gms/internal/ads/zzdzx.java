package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdzx.class */
public final class zzdzx implements Executor {
    private final /* synthetic */ Executor zziat;
    private final /* synthetic */ zzdyk zziau;

    public zzdzx(Executor executor, zzdyk zzdykVar) {
        this.zziat = executor;
        this.zziau = zzdykVar;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        try {
            this.zziat.execute(runnable);
        } catch (RejectedExecutionException e) {
            this.zziau.setException(e);
        }
    }
}
