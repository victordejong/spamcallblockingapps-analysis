package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dfw.class */
public final class dfw extends AbstractList<String> implements ddm, RandomAccess {

    /* renamed from: a */
    private final ddm f14228a;

    public dfw(ddm ddmVar) {
        this.f14228a = ddmVar;
    }

    @Override // com.google.android.gms.internal.ads.ddm
    /* renamed from: a */
    public final void mo9740a(dbi dbiVar) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.ads.ddm
    /* renamed from: b */
    public final Object mo9738b(int i) {
        return this.f14228a.mo9738b(i);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return (String) this.f14228a.get(i);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<String> iterator() {
        return new dfy(this);
    }

    @Override // com.google.android.gms.internal.ads.ddm
    /* renamed from: l_ */
    public final List<?> mo9737l_() {
        return this.f14228a.mo9737l_();
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<String> listIterator(int i) {
        return new dfz(this, i);
    }

    @Override // com.google.android.gms.internal.ads.ddm
    /* renamed from: m_ */
    public final ddm mo9736m_() {
        return this;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f14228a.size();
    }
}
