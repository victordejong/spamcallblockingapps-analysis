package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
/* renamed from: com.google.android.gms.internal.measurement.gz */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/gz.class */
public final class C3982gz extends AbstractList<String> implements AbstractC3923eu, RandomAccess {

    /* renamed from: a */
    private final AbstractC3923eu f18238a;

    public C3982gz(AbstractC3923eu abstractC3923eu) {
        this.f18238a = abstractC3923eu;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3923eu
    /* renamed from: a */
    public final void mo5304a(AbstractC3859ct abstractC3859ct) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3923eu
    /* renamed from: b */
    public final Object mo5302b(int i) {
        return this.f18238a.mo5302b(i);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3923eu
    /* renamed from: c */
    public final AbstractC3923eu mo5301c() {
        return this;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return (String) this.f18238a.get(i);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<String> iterator() {
        return new C3989hb(this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<String> listIterator(int i) {
        return new C3981gy(this, i);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3923eu
    /* renamed from: p_ */
    public final List<?> mo5300p_() {
        return this.f18238a.mo5300p_();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f18238a.size();
    }
}
