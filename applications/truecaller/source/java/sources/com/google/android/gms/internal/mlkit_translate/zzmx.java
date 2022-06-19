package com.google.android.gms.internal.mlkit_translate;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzmx.class */
public final class zzmx extends AbstractList<String> implements zzkv, RandomAccess {
    private final zzkv zza;

    public zzmx(zzkv zzkvVar) {
        this.zza = zzkvVar;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return (String) this.zza.get(i);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<String> iterator() {
        return new zzmz(this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<String> listIterator(int i) {
        return new zzmw(this, i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zza.size();
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzkv
    public final Object zza(int i) {
        return this.zza.zza(i);
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzkv
    public final void zza(zziy zziyVar) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzkv
    public final List<?> zzd() {
        return this.zza.zzd();
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzkv
    public final zzkv zze() {
        return this;
    }
}
