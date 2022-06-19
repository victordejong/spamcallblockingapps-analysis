package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzelk.class */
public final class zzelk<F, T> extends AbstractList<T> {
    private final List<F> zzhyb;
    private final zzelj<F, T> zzire;

    public zzelk(List<F> list, zzelj<F, T> zzeljVar) {
        this.zzhyb = list;
        this.zzire = zzeljVar;
    }

    @Override // java.util.AbstractList, java.util.List
    public final T get(int i) {
        return this.zzire.convert(this.zzhyb.get(i));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzhyb.size();
    }
}
