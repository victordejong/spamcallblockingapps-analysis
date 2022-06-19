package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeog.class */
public final class zzeog extends AbstractList<String> implements zzelv, RandomAccess {
    private final zzelv zzive;

    public zzeog(zzelv zzelvVar) {
        this.zzive = zzelvVar;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return (String) this.zzive.get(i);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<String> iterator() {
        return new zzeoi(this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<String> listIterator(int i) {
        return new zzeof(this, i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzive.size();
    }

    @Override // com.google.android.gms.internal.ads.zzelv
    public final void zzak(zzejr zzejrVar) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.ads.zzelv
    public final List<?> zzbjm() {
        return this.zzive.zzbjm();
    }

    @Override // com.google.android.gms.internal.ads.zzelv
    public final zzelv zzbjn() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzelv
    public final Object zzhj(int i) {
        return this.zzive.zzhj(i);
    }
}
