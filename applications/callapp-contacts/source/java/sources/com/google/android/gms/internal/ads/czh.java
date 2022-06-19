package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.AbstractSequentialList;
import java.util.List;
import java.util.ListIterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/czh.class */
public final class czh<F, T> extends AbstractSequentialList<T> implements Serializable {

    /* renamed from: a */
    final cxu<? super F, ? extends T> f46794a;

    /* renamed from: b */
    private final List<F> f46795b;

    public czh(List<F> list, cxu<? super F, ? extends T> cxuVar) {
        this.f46795b = (List) cyg.m17060a(list);
        this.f46794a = (cxu) cyg.m17060a(cxuVar);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        this.f46795b.clear();
    }

    @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
    public final ListIterator<T> listIterator(int i) {
        return new czj(this, this.f46795b.listIterator(i));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f46795b.size();
    }
}
