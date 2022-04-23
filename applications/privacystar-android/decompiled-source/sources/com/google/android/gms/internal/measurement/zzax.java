package com.google.android.gms.internal.measurement;

import java.lang.Thread;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzax.class */
public final class zzax implements Thread.UncaughtExceptionHandler {
    private final /* synthetic */ zzaw zzwp;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzax(zzaw zzawVar) {
        this.zzwp = zzawVar;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        zzcp zzcn = this.zzwp.zzcn();
        if (zzcn != null) {
            zzcn.zze("Job execution failed", th);
        }
    }
}
