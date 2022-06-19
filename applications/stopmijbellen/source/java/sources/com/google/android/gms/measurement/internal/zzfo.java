package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.lang.Thread;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfo.class */
public final class zzfo implements Thread.UncaughtExceptionHandler {
    public final /* synthetic */ zzfr zza;
    private final String zzb;

    public zzfo(zzfr zzfrVar, String str) {
        this.zza = zzfrVar;
        Preconditions.checkNotNull(str);
        this.zzb = str;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        synchronized (this) {
            this.zza.zzs.zzau().zzb().zzb(this.zzb, th);
        }
    }
}
