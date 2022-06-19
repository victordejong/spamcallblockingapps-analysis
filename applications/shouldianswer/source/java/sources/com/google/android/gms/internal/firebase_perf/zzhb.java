package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzdd;
import com.google.android.gms.internal.firebase-perf.zzey;
import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzhb.class */
public final class zzhb extends AbstractList<String> implements zzey, RandomAccess {
    private final zzey zzui;

    public zzhb(zzey zzeyVar) {
        this.zzui = zzeyVar;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return (String) this.zzui.get(i);
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzey
    public final Object getRaw(int i) {
        return this.zzui.getRaw(i);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<String> iterator() {
        return new zzhd(this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<String> listIterator(int i) {
        return new zzha(this, i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzui.size();
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzey
    public final void zzc(zzdd zzddVar) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzey
    public final List<?> zzgy() {
        return this.zzui.zzgy();
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzey
    public final zzey zzgz() {
        return this;
    }
}
