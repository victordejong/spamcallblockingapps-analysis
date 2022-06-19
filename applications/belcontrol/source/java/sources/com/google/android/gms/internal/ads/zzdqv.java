package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdqv.class */
public abstract class zzdqv<E> {
    private static final zzdzw<?> zzhps = zzdzk.zzag((Object) null);
    private final ScheduledExecutorService zzfth;
    private final zzdzv zzghl;
    private final zzdrh<E> zzhpt;

    public zzdqv(zzdzv zzdzvVar, ScheduledExecutorService scheduledExecutorService, zzdrh<E> zzdrhVar) {
        this.zzghl = zzdzvVar;
        this.zzfth = scheduledExecutorService;
        this.zzhpt = zzdrhVar;
    }

    public final zzdqx zza(E e, zzdzw<?>... zzdzwVarArr) {
        return new zzdqx(this, e, Arrays.asList(zzdzwVarArr), (zzdqy) null);
    }

    public final <I> zzdrb<I> zza(E e, zzdzw<I> zzdzwVar) {
        return new zzdrb<>(this, e, (String) null, zzdzwVar, Collections.singletonList(zzdzwVar), zzdzwVar, (zzdqy) null);
    }

    public final zzdqz zzt(E e) {
        return new zzdqz(this, e, (zzdqy) null);
    }

    public abstract String zzu(E e);
}
