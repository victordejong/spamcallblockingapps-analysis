package com.google.android.gms.internal.firebase_remote_config;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzkc.class */
public final class zzkc extends AbstractList<String> implements zzhx, RandomAccess {
    private final zzhx zzxl;

    public zzkc(zzhx zzhxVar) {
        this.zzxl = zzhxVar;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return (String) this.zzxl.get(i);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<String> iterator() {
        return new zzke(this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<String> listIterator(int i) {
        return new zzkb(this, i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzxl.size();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzhx
    public final Object zzbd(int i) {
        return this.zzxl.zzbd(i);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzhx
    public final void zzd(zzfx zzfxVar) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzhx
    public final List<?> zzhq() {
        return this.zzxl.zzhq();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzhx
    public final zzhx zzhr() {
        return this;
    }
}
