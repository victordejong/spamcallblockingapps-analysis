package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
/* renamed from: com.google.android.gms.internal.measurement.is */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/is.class */
public final class C13587is extends AbstractList<String> implements AbstractC13540gz, RandomAccess {

    /* renamed from: a */
    private final AbstractC13540gz f50860a;

    public C13587is(AbstractC13540gz abstractC13540gz) {
        this.f50860a = abstractC13540gz;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13540gz
    /* renamed from: a */
    public final void mo12556a(AbstractC13500fm abstractC13500fm) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13540gz
    /* renamed from: c */
    public final Object mo12554c(int i) {
        return this.f50860a.mo12554c(i);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13540gz
    /* renamed from: d */
    public final List<?> mo12553d() {
        return this.f50860a.mo12553d();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13540gz
    /* renamed from: e */
    public final AbstractC13540gz mo12552e() {
        return this;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return ((C13539gy) this.f50860a).get(i);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<String> iterator() {
        return new C13585iq(this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<String> listIterator(int i) {
        return new C13584ip(this, i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f50860a.size();
    }
}
