package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfhw.class */
public abstract class zzfhw<E> {
    private static final zzfxa<?> zza = zzfwq.zzi(null);
    private final zzfxb zzb;
    private final ScheduledExecutorService zzc;
    private final zzfhx<E> zzd;

    public zzfhw(zzfxb zzfxbVar, ScheduledExecutorService scheduledExecutorService, zzfhx<E> zzfhxVar) {
        this.zzb = zzfxbVar;
        this.zzc = scheduledExecutorService;
        this.zzd = zzfhxVar;
    }

    public final zzfhm zza(E e, zzfxa<?>... zzfxaVarArr) {
        return new zzfhm(this, e, Arrays.asList(zzfxaVarArr), null);
    }

    public final <I> zzfhv<I> zzb(E e, zzfxa<I> zzfxaVar) {
        return new zzfhv<>(this, e, zzfxaVar, Collections.singletonList(zzfxaVar), zzfxaVar);
    }

    public abstract String zzf(E e);
}
