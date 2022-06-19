package com.google.android.gms.internal.ads;

import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdxz.class */
public final class zzdxz<E> extends zzdxg<E> {
    private final transient E zzhyr;
    private transient int zzhys;

    public zzdxz(E e) {
        this.zzhyr = (E) zzdwl.checkNotNull(e);
    }

    public zzdxz(E e, int i) {
        this.zzhyr = e;
        this.zzhys = i;
    }

    @Override // com.google.android.gms.internal.ads.zzdwy, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.zzhyr.equals(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzdxg, java.util.Collection, java.util.Set
    public final int hashCode() {
        int i = this.zzhys;
        int i2 = i;
        if (i == 0) {
            i2 = this.zzhyr.hashCode();
            this.zzhys = i2;
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.ads.zzdxg, com.google.android.gms.internal.ads.zzdwy, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return iterator();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        String obj = this.zzhyr.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(obj).length() + 2);
        sb.append('[');
        sb.append(obj);
        sb.append(']');
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzdwy
    public final int zza(Object[] objArr, int i) {
        objArr[i] = this.zzhyr;
        return i + 1;
    }

    @Override // com.google.android.gms.internal.ads.zzdwy
    public final zzdya<E> zzazg() {
        return new zzdxi(this.zzhyr);
    }

    @Override // com.google.android.gms.internal.ads.zzdwy
    public final boolean zzazl() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzdxg
    final boolean zzazn() {
        return this.zzhys != 0;
    }

    @Override // com.google.android.gms.internal.ads.zzdxg
    final zzdxd<E> zzazo() {
        return zzdxd.zzac(this.zzhyr);
    }
}
