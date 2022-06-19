package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.lang.Thread;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicLong;
import p007a6.C0033h;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfp.class */
public final class zzfp<V> extends FutureTask<V> implements Comparable<zzfp<V>> {
    public final boolean zza;
    public final /* synthetic */ zzfr zzb;
    private final long zzc;
    private final String zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfp(zzfr zzfrVar, Runnable runnable, boolean z, String str) {
        super(runnable, null);
        AtomicLong atomicLong;
        this.zzb = zzfrVar;
        Preconditions.checkNotNull(str);
        atomicLong = zzfr.zzj;
        long andIncrement = atomicLong.getAndIncrement();
        this.zzc = andIncrement;
        this.zzd = str;
        this.zza = z;
        if (andIncrement == Long.MAX_VALUE) {
            C0033h.m8883n(zzfrVar.zzs, "Tasks index overflow");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfp(zzfr zzfrVar, Callable<V> callable, boolean z, String str) {
        super(callable);
        AtomicLong atomicLong;
        this.zzb = zzfrVar;
        Preconditions.checkNotNull("Task exception on worker thread");
        atomicLong = zzfr.zzj;
        long andIncrement = atomicLong.getAndIncrement();
        this.zzc = andIncrement;
        this.zzd = "Task exception on worker thread";
        this.zza = z;
        if (andIncrement == Long.MAX_VALUE) {
            C0033h.m8883n(zzfrVar.zzs, "Tasks index overflow");
        }
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        zzfp zzfpVar = (zzfp) obj;
        boolean z = this.zza;
        int i = 1;
        if (z == zzfpVar.zza) {
            int i2 = (this.zzc > zzfpVar.zzc ? 1 : (this.zzc == zzfpVar.zzc ? 0 : -1));
            if (i2 < 0) {
                i = -1;
            } else if (i2 <= 0) {
                this.zzb.zzs.zzau().zzc().zzb("Two tasks share the same index. index", Long.valueOf(this.zzc));
                return 0;
            }
        } else if (z) {
            return -1;
        }
        return i;
    }

    @Override // java.util.concurrent.FutureTask
    public final void setException(Throwable th) {
        Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler;
        this.zzb.zzs.zzau().zzb().zzb(this.zzd, th);
        if ((th instanceof zzfn) && (defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler()) != null) {
            defaultUncaughtExceptionHandler.uncaughtException(Thread.currentThread(), th);
        }
        super.setException(th);
    }
}
