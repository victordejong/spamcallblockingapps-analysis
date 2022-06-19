package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
/* renamed from: com.google.android.gms.internal.measurement.d8 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/d8.class */
public final class C7339d8 extends AbstractList<String> implements RandomAccess, AbstractC7421j6 {

    /* renamed from: d */
    private final AbstractC7421j6 f34403d;

    public C7339d8(AbstractC7421j6 abstractC7421j6) {
        this.f34403d = abstractC7421j6;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7421j6
    /* renamed from: Z */
    public final Object mo7245Z(int i) {
        return this.f34403d.mo7245Z(i);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7421j6
    /* renamed from: e0 */
    public final void mo7244e0(zzgr zzgrVar) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7421j6
    /* renamed from: f */
    public final List<?> mo7243f() {
        return this.f34403d.mo7243f();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        return ((C7407i6) this.f34403d).get(i);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<String> iterator() {
        return new C7311b8(this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<String> listIterator(int i) {
        return new C7297a8(this, i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f34403d.size();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7421j6
    public final AbstractC7421j6 zzi() {
        return this;
    }
}
