package com.google.android.gms.measurement.internal;

import android.content.Context;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import java.lang.Thread;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzft.class */
public final class zzft extends zzgu {
    private static final AtomicLong zzj = new AtomicLong(Long.MIN_VALUE);
    private zzfx zza;
    private zzfx zzb;
    private volatile boolean zzi;
    private final Object zzg = new Object();
    private final Semaphore zzh = new Semaphore(2);
    private final PriorityBlockingQueue<zzfy<?>> zzc = new PriorityBlockingQueue<>();
    private final BlockingQueue<zzfy<?>> zzd = new LinkedBlockingQueue();
    private final Thread.UncaughtExceptionHandler zze = new zzfv(this, "Thread death: Uncaught exception on worker thread");
    private final Thread.UncaughtExceptionHandler zzf = new zzfv(this, "Thread death: Uncaught exception on network thread");

    public zzft(zzga zzgaVar) {
        super(zzgaVar);
    }

    private final void zza(zzfy<?> zzfyVar) {
        synchronized (this.zzg) {
            this.zzc.add(zzfyVar);
            if (this.zza == null) {
                this.zza = new zzfx(this, "Measurement Worker", this.zzc);
                this.zza.setUncaughtExceptionHandler(this.zze);
                this.zza.start();
            } else {
                this.zza.zza();
            }
        }
    }

    public final <T> T zza(AtomicReference<T> atomicReference, long j, String str, Runnable runnable) {
        synchronized (atomicReference) {
            zzq().zza(runnable);
            try {
                atomicReference.wait(j);
            } catch (InterruptedException e) {
                zzey zzi = zzr().zzi();
                String valueOf = String.valueOf(str);
                zzi.zza(valueOf.length() != 0 ? "Interrupted waiting for ".concat(valueOf) : new String("Interrupted waiting for "));
                return null;
            }
        }
        T t = atomicReference.get();
        if (t == null) {
            zzey zzi2 = zzr().zzi();
            String valueOf2 = String.valueOf(str);
            zzi2.zza(valueOf2.length() != 0 ? "Timed out waiting for ".concat(valueOf2) : new String("Timed out waiting for "));
        }
        return t;
    }

    public final <V> Future<V> zza(Callable<V> callable) {
        zzaa();
        Preconditions.checkNotNull(callable);
        zzfy<?> zzfyVar = new zzfy<>(this, (Callable<?>) callable, false, "Task exception on worker thread");
        if (Thread.currentThread() == this.zza) {
            if (!this.zzc.isEmpty()) {
                zzr().zzi().zza("Callable skipped the worker queue.");
            }
            zzfyVar.run();
        } else {
            zza(zzfyVar);
        }
        return zzfyVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zza() {
        super.zza();
    }

    public final void zza(Runnable runnable) {
        zzaa();
        Preconditions.checkNotNull(runnable);
        zza(new zzfy<>(this, runnable, false, "Task exception on worker thread"));
    }

    public final <V> Future<V> zzb(Callable<V> callable) {
        zzaa();
        Preconditions.checkNotNull(callable);
        zzfy<?> zzfyVar = new zzfy<>(this, (Callable<?>) callable, true, "Task exception on worker thread");
        if (Thread.currentThread() == this.zza) {
            zzfyVar.run();
        } else {
            zza(zzfyVar);
        }
        return zzfyVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zzb() {
        super.zzb();
    }

    public final void zzb(Runnable runnable) {
        zzaa();
        Preconditions.checkNotNull(runnable);
        zzfy<?> zzfyVar = new zzfy<>(this, runnable, false, "Task exception on network thread");
        synchronized (this.zzg) {
            this.zzd.add(zzfyVar);
            if (this.zzb == null) {
                this.zzb = new zzfx(this, "Measurement Network", this.zzd);
                this.zzb.setUncaughtExceptionHandler(this.zzf);
                this.zzb.start();
            } else {
                this.zzb.zza();
            }
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final void zzc() {
        if (Thread.currentThread() == this.zzb) {
            return;
        }
        throw new IllegalStateException("Call expected from network thread");
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final void zzd() {
        if (Thread.currentThread() == this.zza) {
            return;
        }
        throw new IllegalStateException("Call expected from worker thread");
    }

    @Override // com.google.android.gms.measurement.internal.zzgu
    protected final boolean zze() {
        return false;
    }

    public final boolean zzg() {
        return Thread.currentThread() == this.zza;
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzah zzl() {
        return super.zzl();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ Clock zzm() {
        return super.zzm();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ Context zzn() {
        return super.zzn();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzeu zzo() {
        return super.zzo();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzkm zzp() {
        return super.zzp();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ zzft zzq() {
        return super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ zzew zzr() {
        return super.zzr();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzff zzs() {
        return super.zzs();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzx zzt() {
        return super.zzt();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ zzw zzu() {
        return super.zzu();
    }
}
