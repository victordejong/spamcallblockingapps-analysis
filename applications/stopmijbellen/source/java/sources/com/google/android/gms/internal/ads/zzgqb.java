package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgqb.class */
public final class zzgqb<T> {
    private final List<zzgqe<T>> zza;
    private final List<zzgqe<Collection<T>>> zzb;

    public /* synthetic */ zzgqb(int i, int i2, zzgqa zzgqaVar) {
        this.zza = zzgpo.zzc(i);
        this.zzb = zzgpo.zzc(i2);
    }

    public final zzgqb<T> zza(zzgqe<? extends Collection<? extends T>> zzgqeVar) {
        this.zzb.add(zzgqeVar);
        return this;
    }

    public final zzgqb<T> zzb(zzgqe<? extends T> zzgqeVar) {
        this.zza.add(zzgqeVar);
        return this;
    }

    public final zzgqc<T> zzc() {
        return new zzgqc<>(this.zza, this.zzb, null);
    }
}
