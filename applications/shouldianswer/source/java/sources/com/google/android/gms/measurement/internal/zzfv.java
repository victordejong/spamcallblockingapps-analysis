package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.lang.Thread;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfv.class */
public final class zzfv implements Thread.UncaughtExceptionHandler {
    private final String zza;
    private final /* synthetic */ zzft zzb;

    public zzfv(zzft zzftVar, String str) {
        this.zzb = zzftVar;
        Preconditions.checkNotNull(str);
        this.zza = str;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        synchronized (this) {
            this.zzb.zzr().zzf().zza(this.zza, th);
        }
    }
}
