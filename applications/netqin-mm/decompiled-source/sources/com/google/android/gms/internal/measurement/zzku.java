package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import p131c.p161d.p170b.p224d.p252g.p258f.C4501g5;
import p131c.p161d.p170b.p224d.p252g.p258f.C4508h5;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzku.class */
public final class zzku extends AbstractList<String> implements zziq, RandomAccess {

    /* renamed from: a */
    public final zziq f29525a;

    public zzku(zziq zziqVar) {
        this.f29525a = zziqVar;
    }

    @Override // com.google.android.gms.internal.measurement.zziq
    /* renamed from: a */
    public final void mo9598a(zzgp zzgpVar) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return (String) this.f29525a.get(i);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<String> iterator() {
        return new C4501g5(this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<String> listIterator(int i) {
        return new C4508h5(this, i);
    }

    @Override // com.google.android.gms.internal.measurement.zziq
    /* renamed from: p */
    public final zziq mo9596p() {
        return this;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f29525a.size();
    }

    @Override // com.google.android.gms.internal.measurement.zziq
    public final Object zzb(int i) {
        return this.f29525a.zzb(i);
    }

    @Override // com.google.android.gms.internal.measurement.zziq
    public final List<?> zzb() {
        return this.f29525a.zzb();
    }
}
