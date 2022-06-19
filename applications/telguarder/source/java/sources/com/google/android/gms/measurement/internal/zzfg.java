package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.lang.Thread;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.jvm.internal.LongCompanionObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzfg.class */
public final class zzfg<V> extends FutureTask<V> implements Comparable<zzfg<V>> {
    final boolean zza;
    final /* synthetic */ zzfi zzb;
    private final long zzc;
    private final String zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfg(zzfi zzfiVar, Runnable runnable, boolean z, String str) {
        super(runnable, null);
        AtomicLong atomicLong;
        this.zzb = zzfiVar;
        Preconditions.checkNotNull(str);
        atomicLong = zzfi.zzj;
        long andIncrement = atomicLong.getAndIncrement();
        this.zzc = andIncrement;
        this.zzd = str;
        this.zza = z;
        if (andIncrement == LongCompanionObject.MAX_VALUE) {
            zzfiVar.zzx.zzat().zzb().zza("Tasks index overflow");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfg(zzfi zzfiVar, Callable<V> callable, boolean z, String str) {
        super(callable);
        AtomicLong atomicLong;
        this.zzb = zzfiVar;
        Preconditions.checkNotNull("Task exception on worker thread");
        atomicLong = zzfi.zzj;
        long andIncrement = atomicLong.getAndIncrement();
        this.zzc = andIncrement;
        this.zzd = "Task exception on worker thread";
        this.zza = z;
        if (andIncrement == LongCompanionObject.MAX_VALUE) {
            zzfiVar.zzx.zzat().zzb().zza("Tasks index overflow");
        }
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        zzfg zzfgVar = (zzfg) obj;
        boolean z = this.zza;
        int i = 1;
        if (z == zzfgVar.zza) {
            int i2 = (this.zzc > zzfgVar.zzc ? 1 : (this.zzc == zzfgVar.zzc ? 0 : -1));
            if (i2 < 0) {
                i = -1;
            } else if (i2 <= 0) {
                this.zzb.zzx.zzat().zzc().zzb("Two tasks share the same index. index", Long.valueOf(this.zzc));
                return 0;
            }
        } else if (z) {
            return -1;
        }
        return i;
    }

    @Override // java.util.concurrent.FutureTask
    protected final void setException(Throwable th) {
        Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler;
        this.zzb.zzx.zzat().zzb().zzb(this.zzd, th);
        if ((th instanceof zzfe) && (defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler()) != null) {
            defaultUncaughtExceptionHandler.uncaughtException(Thread.currentThread(), th);
        }
        super.setException(th);
    }
}
