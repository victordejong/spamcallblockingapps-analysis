package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dnq.class */
public final class dnq<F, T> extends AbstractList<T> {

    /* renamed from: a  reason: collision with root package name */
    private final List<F> f27008a;

    /* renamed from: b  reason: collision with root package name */
    private final dnp<F, T> f27009b;

    public dnq(List<F> list, dnp<F, T> dnpVar) {
        this.f27008a = list;
        this.f27009b = dnpVar;
    }

    @Override // java.util.AbstractList, java.util.List
    public final T get(int i) {
        return this.f27009b.a(this.f27008a.get(i));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f27008a.size();
    }
}
