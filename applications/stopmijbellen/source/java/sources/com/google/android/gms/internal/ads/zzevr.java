package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzevr.class */
public final class zzevr<T> implements zzgpr<zzevq<T>> {
    private final zzgqe<Executor> zza;
    private final zzgqe<Set<zzevn<? extends zzevm<T>>>> zzb;

    public zzevr(zzgqe<Executor> zzgqeVar, zzgqe<Set<zzevn<? extends zzevm<T>>>> zzgqeVar2) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
    }

    /* renamed from: zza */
    public final zzevq<T> zzb() {
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        return new zzevq<>(zzfxbVar, ((zzgqc) this.zzb).zzb());
    }
}
