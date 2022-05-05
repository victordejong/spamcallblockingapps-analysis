package com.google.android.gms.internal.measurement;

import java.util.AbstractCollection;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzeu.class */
final class zzeu extends AbstractCollection<V> {

    /* renamed from: f */
    private final /* synthetic */ zzem f8400f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzeu(zzem zzemVar) {
        this.f8400f = zzemVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        this.f8400f.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator<V> iterator() {
        return this.f8400f.m12711v();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        return this.f8400f.size();
    }
}
