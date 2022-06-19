package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdzq;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdzk.class */
public final class zzdzk extends zzdzr {
    public static <V> zzdzw<V> immediateFailedFuture(Throwable th) {
        zzdwl.checkNotNull(th);
        return new zzdzq.zza(th);
    }

    @SafeVarargs
    public static <V> zzdzp<V> zza(zzdzw<? extends V>... zzdzwVarArr) {
        return new zzdzp<>(false, zzdxd.zzb(zzdzwVarArr), null);
    }

    public static <O> zzdzw<O> zza(zzdyv<O> zzdyvVar, Executor executor) {
        zzeah zzeahVar = new zzeah(zzdyvVar);
        executor.execute(zzeahVar);
        return zzeahVar;
    }

    public static <V> zzdzw<V> zza(zzdzw<V> zzdzwVar, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        return zzdzwVar.isDone() ? zzdzwVar : zzead.zzb(zzdzwVar, j, timeUnit, scheduledExecutorService);
    }

    public static <O> zzdzw<O> zza(Callable<O> callable, Executor executor) {
        zzeah zzf = zzeah.zzf(callable);
        executor.execute(zzf);
        return zzf;
    }

    public static <V> V zza(Future<V> future) throws ExecutionException {
        if (future.isDone()) {
            return (V) zzeal.getUninterruptibly(future);
        }
        throw new IllegalStateException(zzdwt.zzb("Future was expected to be done: %s", future));
    }

    public static <V> void zza(zzdzw<V> zzdzwVar, zzdzl<? super V> zzdzlVar, Executor executor) {
        zzdwl.checkNotNull(zzdzlVar);
        zzdzwVar.addListener(new zzdzm(zzdzwVar, zzdzlVar), executor);
    }

    public static <V> zzdzw<V> zzag(@NullableDecl V v) {
        return v == null ? (zzdzw<V>) zzdzq.zziap : new zzdzq(v);
    }

    @SafeVarargs
    public static <V> zzdzp<V> zzb(zzdzw<? extends V>... zzdzwVarArr) {
        return new zzdzp<>(true, zzdxd.zzb(zzdzwVarArr), null);
    }

    public static <I, O> zzdzw<O> zzb(zzdzw<I> zzdzwVar, zzdvz<? super I, ? extends O> zzdvzVar, Executor executor) {
        return zzdyn.zza(zzdzwVar, zzdvzVar, executor);
    }

    public static <I, O> zzdzw<O> zzb(zzdzw<I> zzdzwVar, zzdyu<? super I, ? extends O> zzdyuVar, Executor executor) {
        return zzdyn.zza(zzdzwVar, zzdyuVar, executor);
    }

    public static <V, X extends Throwable> zzdzw<V> zzb(zzdzw<? extends V> zzdzwVar, Class<X> cls, zzdyu<? super X, ? extends V> zzdyuVar, Executor executor) {
        return zzdyg.zza(zzdzwVar, cls, zzdyuVar, executor);
    }

    public static <V> V zzb(Future<V> future) {
        zzdwl.checkNotNull(future);
        try {
            return (V) zzeal.getUninterruptibly(future);
        } catch (ExecutionException e) {
            Throwable cause = e.getCause();
            if (!(cause instanceof Error)) {
                throw new zzeam(cause);
            }
            throw new zzdzc((Error) cause);
        }
    }

    public static <V> zzdzw<List<V>> zzi(Iterable<? extends zzdzw<? extends V>> iterable) {
        return new zzdyw(zzdxd.zzh(iterable), true);
    }

    public static <V> zzdzp<V> zzj(Iterable<? extends zzdzw<? extends V>> iterable) {
        return new zzdzp<>(false, zzdxd.zzh(iterable), null);
    }

    public static <V> zzdzp<V> zzk(Iterable<? extends zzdzw<? extends V>> iterable) {
        return new zzdzp<>(true, zzdxd.zzh(iterable), null);
    }
}
