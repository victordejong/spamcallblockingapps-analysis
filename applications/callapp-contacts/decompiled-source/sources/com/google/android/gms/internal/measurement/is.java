package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/is.class */
public final class is extends AbstractList<String> implements gz, RandomAccess {

    /* renamed from: a  reason: collision with root package name */
    private final gz f29141a;

    public is(gz gzVar) {
        this.f29141a = gzVar;
    }

    @Override // com.google.android.gms.internal.measurement.gz
    public final void a(fm fmVar) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.measurement.gz
    public final Object c(int i) {
        return this.f29141a.c(i);
    }

    @Override // com.google.android.gms.internal.measurement.gz
    public final List<?> d() {
        return this.f29141a.d();
    }

    @Override // com.google.android.gms.internal.measurement.gz
    public final gz e() {
        return this;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return ((gy) this.f29141a).get(i);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<String> iterator() {
        return new iq(this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<String> listIterator(int i) {
        return new ip(this, i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f29141a.size();
    }
}
