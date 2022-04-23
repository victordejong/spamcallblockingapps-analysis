package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.AbstractSequentialList;
import java.util.List;
import java.util.ListIterator;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/czh.class */
final class czh<F, T> extends AbstractSequentialList<T> implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    final cxu<? super F, ? extends T> f26598a;

    /* renamed from: b  reason: collision with root package name */
    private final List<F> f26599b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public czh(List<F> list, cxu<? super F, ? extends T> cxuVar) {
        this.f26599b = (List) cyg.a(list);
        this.f26598a = (cxu) cyg.a(cxuVar);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        this.f26599b.clear();
    }

    @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
    public final ListIterator<T> listIterator(int i) {
        return new czj(this, this.f26599b.listIterator(i));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f26599b.size();
    }
}
