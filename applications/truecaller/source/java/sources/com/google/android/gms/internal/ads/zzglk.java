package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzglk.class */
public final class zzglk<T> {
    private final List<zzgln<T>> zza;
    private final List<zzgln<Collection<T>>> zzb;

    public /* synthetic */ zzglk(int i, int i2, zzglj zzgljVar) {
        this.zza = zzgkx.zza(i);
        this.zzb = zzgkx.zza(i2);
    }

    public final zzglk<T> zza(zzgln<? extends T> zzglnVar) {
        this.zza.add(zzglnVar);
        return this;
    }

    public final zzglk<T> zzb(zzgln<? extends Collection<? extends T>> zzglnVar) {
        this.zzb.add(zzglnVar);
        return this;
    }

    public final zzgll<T> zzc() {
        return new zzgll<>(this.zza, this.zzb, null);
    }
}
