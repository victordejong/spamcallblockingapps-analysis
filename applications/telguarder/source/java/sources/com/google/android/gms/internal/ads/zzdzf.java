package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdzf.class */
public class zzdzf<V> extends zzdzo<V> {
    public static <V> zzdzf<V> zzg(zzdzw<V> zzdzwVar) {
        return zzdzwVar instanceof zzdzf ? (zzdzf) zzdzwVar : new zzdzh(zzdzwVar);
    }

    public final zzdzf<V> zza(long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        return (zzdzf) zzdzk.zza(this, j, timeUnit, scheduledExecutorService);
    }

    public final <T> zzdzf<T> zza(zzdvz<? super V, T> zzdvzVar, Executor executor) {
        zzdwl.checkNotNull(zzdvzVar);
        zzdyp zzdypVar = new zzdyp(this, zzdvzVar);
        addListener(zzdypVar, zzdzy.zza(executor, zzdypVar));
        return zzdypVar;
    }

    public final <X extends Throwable> zzdzf<V> zza(Class<X> cls, zzdvz<? super X, ? extends V> zzdvzVar, Executor executor) {
        zzdyi zzdyiVar = new zzdyi(this, cls, zzdvzVar);
        addListener(zzdyiVar, zzdzy.zza(executor, zzdyiVar));
        return zzdyiVar;
    }

    public final <X extends Throwable> zzdzf<V> zza(Class<X> cls, zzdyu<? super X, ? extends V> zzdyuVar, Executor executor) {
        zzdyj zzdyjVar = new zzdyj(this, cls, zzdyuVar);
        addListener(zzdyjVar, zzdzy.zza(executor, zzdyjVar));
        return zzdyjVar;
    }

    public final <T> zzdzf<T> zzb(zzdyu<? super V, T> zzdyuVar, Executor executor) {
        zzdwl.checkNotNull(executor);
        zzdym zzdymVar = new zzdym(this, zzdyuVar);
        addListener(zzdymVar, zzdzy.zza(executor, zzdymVar));
        return zzdymVar;
    }
}
