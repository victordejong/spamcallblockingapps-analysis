package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfy.class */
public final class zzfy<V> extends FutureTask<V> implements Comparable<zzfy> {
    final boolean zza;
    private final long zzb;
    private final String zzc;
    private final /* synthetic */ zzft zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfy(zzft zzftVar, Runnable runnable, boolean z, String str) {
        super(runnable, null);
        AtomicLong atomicLong;
        this.zzd = zzftVar;
        Preconditions.checkNotNull(str);
        atomicLong = zzft.zzj;
        this.zzb = atomicLong.getAndIncrement();
        this.zzc = str;
        this.zza = false;
        if (this.zzb == Long.MAX_VALUE) {
            zzftVar.zzr().zzf().zza("Tasks index overflow");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfy(zzft zzftVar, Callable<V> callable, boolean z, String str) {
        super(callable);
        AtomicLong atomicLong;
        this.zzd = zzftVar;
        Preconditions.checkNotNull(str);
        atomicLong = zzft.zzj;
        this.zzb = atomicLong.getAndIncrement();
        this.zzc = str;
        this.zza = z;
        if (this.zzb == Long.MAX_VALUE) {
            zzftVar.zzr().zzf().zza("Tasks index overflow");
        }
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(zzfy zzfyVar) {
        zzfy zzfyVar2 = zzfyVar;
        boolean z = this.zza;
        if (z != zzfyVar2.zza) {
            return z ? -1 : 1;
        }
        long j = this.zzb;
        long j2 = zzfyVar2.zzb;
        if (j < j2) {
            return -1;
        }
        if (j > j2) {
            return 1;
        }
        this.zzd.zzr().zzg().zza("Two tasks share the same index. index", Long.valueOf(this.zzb));
        return 0;
    }

    @Override // java.util.concurrent.FutureTask
    protected final void setException(Throwable th) {
        this.zzd.zzr().zzf().zza(this.zzc, th);
        if (th instanceof zzfw) {
            Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
        }
        super.setException(th);
    }
}
