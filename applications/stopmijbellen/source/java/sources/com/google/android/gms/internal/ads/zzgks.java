package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgks.class */
public final class zzgks<F, T> extends AbstractList<T> {
    private final List<F> zza;
    private final zzgkr<F, T> zzb;

    public zzgks(List<F> list, zzgkr<F, T> zzgkrVar) {
        this.zza = list;
        this.zzb = zzgkrVar;
    }

    @Override // java.util.AbstractList, java.util.List
    public final T get(int i) {
        zzbbu zzb = zzbbu.zzb(((Integer) this.zza.get(i)).intValue());
        zzbbu zzbbuVar = zzb;
        if (zzb == null) {
            zzbbuVar = zzbbu.AD_FORMAT_TYPE_UNSPECIFIED;
        }
        return (T) zzbbuVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zza.size();
    }
}
