package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/uc2.class */
public final class uc2<F, T> extends AbstractList<T> {

    /* renamed from: b */
    private final List<F> f8778b;

    public uc2(List<F> list, tc2<F, T> tc2Var) {
        this.f8778b = list;
    }

    @Override // java.util.AbstractList, java.util.List
    public final T get(int i) {
        zzvg zzb = zzvg.zzb(((Integer) this.f8778b.get(i)).intValue());
        T t = (T) zzb;
        if (zzb == null) {
            t = (T) zzvg.b;
        }
        return t;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f8778b.size();
    }
}
