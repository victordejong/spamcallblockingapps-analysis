package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdfm.class */
public final class zzdfm<T> implements zzeqb<zzdfl<T>> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<Set<zzdfi<? extends zzdfj<T>>>> zzhdo;

    private zzdfm(zzeqo<Executor> zzeqoVar, zzeqo<Set<zzdfi<? extends zzdfj<T>>>> zzeqoVar2) {
        this.zzewf = zzeqoVar;
        this.zzhdo = zzeqoVar2;
    }

    public static <T> zzdfl<T> zza(Executor executor, Set<zzdfi<? extends zzdfj<T>>> set) {
        return new zzdfl<>(executor, set);
    }

    public static <T> zzdfm<T> zzba(zzeqo<Executor> zzeqoVar, zzeqo<Set<zzdfi<? extends zzdfj<T>>>> zzeqoVar2) {
        return new zzdfm<>(zzeqoVar, zzeqoVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zza(this.zzewf.get(), this.zzhdo.get());
    }
}
