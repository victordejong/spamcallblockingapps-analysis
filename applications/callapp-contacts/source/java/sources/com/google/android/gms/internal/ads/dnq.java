package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dnq.class */
public final class dnq<F, T> extends AbstractList<T> {

    /* renamed from: a */
    private final List<F> f47294a;

    /* renamed from: b */
    private final dnp<F, T> f47295b;

    public dnq(List<F> list, dnp<F, T> dnpVar) {
        this.f47294a = list;
        this.f47295b = dnpVar;
    }

    @Override // java.util.AbstractList, java.util.List
    public final T get(int i) {
        return this.f47295b.mo14868a(this.f47294a.get(i));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f47294a.size();
    }
}
