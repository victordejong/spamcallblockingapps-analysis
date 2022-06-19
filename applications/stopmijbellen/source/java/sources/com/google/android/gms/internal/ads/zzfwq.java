package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfwq.class */
public final class zzfwq extends zzfws {
    public static <V> zzfwp<V> zza(Iterable<? extends zzfxa<? extends V>> iterable) {
        return new zzfwp<>(false, zzfss.zzl(iterable), null);
    }

    @SafeVarargs
    public static <V> zzfwp<V> zzb(zzfxa<? extends V>... zzfxaVarArr) {
        return new zzfwp<>(false, zzfss.zzn(zzfxaVarArr), null);
    }

    public static <V> zzfwp<V> zzc(Iterable<? extends zzfxa<? extends V>> iterable) {
        return new zzfwp<>(true, zzfss.zzl(iterable), null);
    }

    @SafeVarargs
    public static <V> zzfwp<V> zzd(zzfxa<? extends V>... zzfxaVarArr) {
        return new zzfwp<>(true, zzfss.zzn(zzfxaVarArr), null);
    }

    public static <V> zzfxa<List<V>> zze(Iterable<? extends zzfxa<? extends V>> iterable) {
        return new zzfvy(zzfss.zzl(iterable), true);
    }

    public static <V, X extends Throwable> zzfxa<V> zzf(zzfxa<? extends V> zzfxaVar, Class<X> cls, zzfpv<? super X, ? extends V> zzfpvVar, Executor executor) {
        zzfvd zzfvdVar = new zzfvd(zzfxaVar, cls, zzfpvVar);
        zzfxaVar.zzc(zzfvdVar, zzfxh.zzc(executor, zzfvdVar));
        return zzfvdVar;
    }

    public static <V, X extends Throwable> zzfxa<V> zzg(zzfxa<? extends V> zzfxaVar, Class<X> cls, zzfvx<? super X, ? extends V> zzfvxVar, Executor executor) {
        zzfvc zzfvcVar = new zzfvc(zzfxaVar, cls, zzfvxVar);
        zzfxaVar.zzc(zzfvcVar, zzfxh.zzc(executor, zzfvcVar));
        return zzfvcVar;
    }

    public static <V> zzfxa<V> zzh(Throwable th) {
        Objects.requireNonNull(th);
        return new zzfwt(th);
    }

    public static <V> zzfxa<V> zzi(V v) {
        return v == null ? (zzfxa<V>) zzfwu.zza : new zzfwu(v);
    }

    public static zzfxa<Void> zzj() {
        return zzfwu.zza;
    }

    public static <O> zzfxa<O> zzk(Callable<O> callable, Executor executor) {
        zzfxp zzfxpVar = new zzfxp(callable);
        executor.execute(zzfxpVar);
        return zzfxpVar;
    }

    public static <O> zzfxa<O> zzl(zzfvw<O> zzfvwVar, Executor executor) {
        zzfxp zzfxpVar = new zzfxp(zzfvwVar);
        executor.execute(zzfxpVar);
        return zzfxpVar;
    }

    public static <I, O> zzfxa<O> zzm(zzfxa<I> zzfxaVar, zzfpv<? super I, ? extends O> zzfpvVar, Executor executor) {
        int i = zzfvm.zzc;
        Objects.requireNonNull(zzfpvVar);
        zzfvl zzfvlVar = new zzfvl(zzfxaVar, zzfpvVar);
        zzfxaVar.zzc(zzfvlVar, zzfxh.zzc(executor, zzfvlVar));
        return zzfvlVar;
    }

    public static <I, O> zzfxa<O> zzn(zzfxa<I> zzfxaVar, zzfvx<? super I, ? extends O> zzfvxVar, Executor executor) {
        int i = zzfvm.zzc;
        Objects.requireNonNull(executor);
        zzfvk zzfvkVar = new zzfvk(zzfxaVar, zzfvxVar);
        zzfxaVar.zzc(zzfvkVar, zzfxh.zzc(executor, zzfvkVar));
        return zzfvkVar;
    }

    public static <V> zzfxa<V> zzo(zzfxa<V> zzfxaVar, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        return zzfxaVar.isDone() ? zzfxaVar : zzfxm.zzb(zzfxaVar, j, timeUnit, scheduledExecutorService);
    }

    public static <V> V zzp(Future<V> future) throws ExecutionException {
        if (future.isDone()) {
            return (V) zzfxr.zza(future);
        }
        throw new IllegalStateException(zzfqr.zzb("Future was expected to be done: %s", future));
    }

    public static <V> V zzq(Future<V> future) {
        try {
            return (V) zzfxr.zza(future);
        } catch (ExecutionException e) {
            Throwable cause = e.getCause();
            if (!(cause instanceof Error)) {
                throw new zzfxq(cause);
            }
            throw new zzfwf((Error) cause);
        }
    }

    public static <V> void zzr(zzfxa<V> zzfxaVar, zzfwm<? super V> zzfwmVar, Executor executor) {
        Objects.requireNonNull(zzfwmVar);
        zzfxaVar.zzc(new zzfwn(zzfxaVar, zzfwmVar), executor);
    }
}
