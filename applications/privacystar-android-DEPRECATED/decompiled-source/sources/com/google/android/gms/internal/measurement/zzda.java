package com.google.android.gms.internal.measurement;

import android.os.Handler;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzda.class */
public final class zzda implements zzcd {
    private final /* synthetic */ Runnable zzacf;
    private final /* synthetic */ zzcx zzacg;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzda(zzcx zzcxVar, Runnable runnable) {
        this.zzacg = zzcxVar;
        this.zzacf = runnable;
    }

    @Override // com.google.android.gms.internal.measurement.zzcd
    public final void zza(Throwable th) {
        Handler handler;
        handler = this.zzacg.handler;
        handler.post(this.zzacf);
    }
}
