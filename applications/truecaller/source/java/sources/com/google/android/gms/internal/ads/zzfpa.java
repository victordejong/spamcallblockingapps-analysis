package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.AbstractSequentialList;
import java.util.List;
import java.util.ListIterator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfpa.class */
public final class zzfpa<F, T> extends AbstractSequentialList<T> implements Serializable {
    public final List<F> zza;
    public final zzfln<? super F, ? extends T> zzb;

    public zzfpa(List<F> list, zzfln<? super F, ? extends T> zzflnVar) {
        this.zza = list;
        this.zzb = zzflnVar;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        this.zza.clear();
    }

    @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
    public final ListIterator<T> listIterator(int i) {
        return new zzfoz(this, this.zza.listIterator(i));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zza.size();
    }
}
