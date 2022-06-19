package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.C1676a;
import java.lang.Thread;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfr.class */
public final class zzfr extends zzgo {
    private static final AtomicLong zzj = new AtomicLong(Long.MIN_VALUE);
    private zzfq zza;
    private zzfq zzb;
    private volatile boolean zzi;
    private final Object zzg = new Object();
    private final Semaphore zzh = new Semaphore(2);
    private final PriorityBlockingQueue<zzfp<?>> zzc = new PriorityBlockingQueue<>();
    private final BlockingQueue<zzfp<?>> zzd = new LinkedBlockingQueue();
    private final Thread.UncaughtExceptionHandler zze = new zzfo(this, "Thread death: Uncaught exception on worker thread");
    private final Thread.UncaughtExceptionHandler zzf = new zzfo(this, "Thread death: Uncaught exception on network thread");

    public zzfr(zzfu zzfuVar) {
        super(zzfuVar);
    }

    private final void zzt(zzfp<?> zzfpVar) {
        synchronized (this.zzg) {
            this.zzc.add(zzfpVar);
            zzfq zzfqVar = this.zza;
            if (zzfqVar == null) {
                zzfq zzfqVar2 = new zzfq(this, "Measurement Worker", this.zzc);
                this.zza = zzfqVar2;
                zzfqVar2.setUncaughtExceptionHandler(this.zze);
                this.zza.start();
            } else {
                zzfqVar.zza();
            }
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgo
    public final boolean zza() {
        return false;
    }

    @Override // com.google.android.gms.measurement.internal.zzgn
    public final void zzaw() {
        if (Thread.currentThread() == this.zzb) {
            return;
        }
        throw new IllegalStateException("Call expected from network thread");
    }

    public final boolean zzd() {
        return Thread.currentThread() == this.zza;
    }

    public final <V> Future<V> zze(Callable<V> callable) throws IllegalStateException {
        zzv();
        Preconditions.checkNotNull(callable);
        zzfp<?> zzfpVar = new zzfp<>(this, (Callable<?>) callable, false, "Task exception on worker thread");
        if (Thread.currentThread() == this.zza) {
            if (!this.zzc.isEmpty()) {
                C1676a.m4786k(this.zzs, "Callable skipped the worker queue.");
            }
            zzfpVar.run();
        } else {
            zzt(zzfpVar);
        }
        return zzfpVar;
    }

    public final <V> Future<V> zzf(Callable<V> callable) throws IllegalStateException {
        zzv();
        Preconditions.checkNotNull(callable);
        zzfp<?> zzfpVar = new zzfp<>(this, (Callable<?>) callable, true, "Task exception on worker thread");
        if (Thread.currentThread() == this.zza) {
            zzfpVar.run();
        } else {
            zzt(zzfpVar);
        }
        return zzfpVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzgn
    public final void zzg() {
        if (Thread.currentThread() == this.zza) {
            return;
        }
        throw new IllegalStateException("Call expected from worker thread");
    }

    public final void zzh(Runnable runnable) throws IllegalStateException {
        zzv();
        Preconditions.checkNotNull(runnable);
        zzt(new zzfp<>(this, runnable, false, "Task exception on worker thread"));
    }

    public final <T> T zzi(AtomicReference<T> atomicReference, long j, String str, Runnable runnable) {
        synchronized (atomicReference) {
            this.zzs.zzav().zzh(runnable);
            try {
                atomicReference.wait(j);
            } catch (InterruptedException e) {
                this.zzs.zzau().zze().zza(str.length() != 0 ? "Interrupted waiting for ".concat(str) : new String("Interrupted waiting for "));
                return null;
            }
        }
        T t = atomicReference.get();
        if (t == null) {
            this.zzs.zzau().zze().zza(str.length() != 0 ? "Timed out waiting for ".concat(str) : new String("Timed out waiting for "));
        }
        return t;
    }

    public final void zzj(Runnable runnable) throws IllegalStateException {
        zzv();
        Preconditions.checkNotNull(runnable);
        zzt(new zzfp<>(this, runnable, true, "Task exception on worker thread"));
    }

    public final void zzk(Runnable runnable) throws IllegalStateException {
        zzv();
        Preconditions.checkNotNull(runnable);
        zzfp<?> zzfpVar = new zzfp<>(this, runnable, false, "Task exception on network thread");
        synchronized (this.zzg) {
            this.zzd.add(zzfpVar);
            zzfq zzfqVar = this.zzb;
            if (zzfqVar == null) {
                zzfq zzfqVar2 = new zzfq(this, "Measurement Network", this.zzd);
                this.zzb = zzfqVar2;
                zzfqVar2.setUncaughtExceptionHandler(this.zzf);
                this.zzb.start();
            } else {
                zzfqVar.zza();
            }
        }
    }
}
