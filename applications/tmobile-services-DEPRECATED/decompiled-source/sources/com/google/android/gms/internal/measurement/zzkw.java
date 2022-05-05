package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzkw.class */
public final class zzkw extends AbstractList<String> implements zzis, RandomAccess {

    /* renamed from: f */
    private final zzis f8630f;

    public zzkw(zzis zzisVar) {
        this.f8630f = zzisVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    /* renamed from: K */
    public final void mo12102K(zzgr zzgrVar) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    /* renamed from: b */
    public final Object mo12101b(int i) {
        return this.f8630f.mo12101b(i);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return (String) this.f8630f.get(i);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<String> iterator() {
        return new zzky(this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<String> listIterator(int i) {
        return new zzkv(this, i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f8630f.size();
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final List<?> zzd() {
        return this.f8630f.zzd();
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final zzis zze() {
        return this;
    }
}
