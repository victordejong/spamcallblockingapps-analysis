package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzggh.class */
public final class zzggh<F, T> extends AbstractList<T> {
    private final List<F> zza;
    private final zzggg<F, T> zzb;

    public zzggh(List<F> list, zzggg<F, T> zzgggVar) {
        this.zza = list;
        this.zzb = zzgggVar;
    }

    @Override // java.util.AbstractList, java.util.List
    public final T get(int i) {
        zzazx zzb = zzazx.zzb(((Integer) this.zza.get(i)).intValue());
        zzazx zzazxVar = zzb;
        if (zzb == null) {
            zzazxVar = zzazx.AD_FORMAT_TYPE_UNSPECIFIED;
        }
        return (T) zzazxVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zza.size();
    }
}
