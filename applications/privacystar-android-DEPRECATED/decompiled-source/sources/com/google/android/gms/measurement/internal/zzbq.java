package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.lang.Thread;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzbq.class */
public final class zzbq implements Thread.UncaughtExceptionHandler {
    private final String zzapf;
    private final /* synthetic */ zzbo zzapg;

    public zzbq(zzbo zzboVar, String str) {
        this.zzapg = zzboVar;
        Preconditions.checkNotNull(str);
        this.zzapf = str;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        synchronized (this) {
            this.zzapg.zzgo().zzjd().zzg(this.zzapf, th);
        }
    }
}
