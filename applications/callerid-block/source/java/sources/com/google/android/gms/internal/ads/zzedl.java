package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.AbstractSequentialList;
import java.util.List;
import java.util.ListIterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzedl.class */
final class zzedl<F, T> extends AbstractSequentialList<T> implements Serializable {
    final List<F> zza;
    final fw1<? super F, ? extends T> zzb;

    public zzedl(List<F> list, fw1<? super F, ? extends T> fw1Var) {
        this.zza = list;
        this.zzb = fw1Var;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        this.zza.clear();
    }

    @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
    public final ListIterator<T> listIterator(int i) {
        return new hx1(this, this.zza.listIterator(i));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zza.size();
    }
}
