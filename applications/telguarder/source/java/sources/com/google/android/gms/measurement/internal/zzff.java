package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.lang.Thread;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzff.class */
public final class zzff implements Thread.UncaughtExceptionHandler {
    final /* synthetic */ zzfi zza;
    private final String zzb;

    public zzff(zzfi zzfiVar, String str) {
        this.zza = zzfiVar;
        Preconditions.checkNotNull(str);
        this.zzb = str;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        synchronized (this) {
            this.zza.zzx.zzat().zzb().zzb(this.zzb, th);
        }
    }
}
