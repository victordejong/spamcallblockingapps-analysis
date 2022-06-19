package com.google.android.gms.internal.ads;

import java.util.Iterator;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdxx.class */
public final class zzdxx<E> extends zzdxg<E> {
    static final zzdxx<Object> zzhyn = new zzdxx<>(new Object[0], 0, null, 0, 0);
    private final transient int mask;
    private final transient int size;
    private final transient int zzahx;
    private final transient Object[] zzhyo;
    private final transient Object[] zzhyp;

    public zzdxx(Object[] objArr, int i, Object[] objArr2, int i2, int i3) {
        this.zzhyo = objArr;
        this.zzhyp = objArr2;
        this.mask = i2;
        this.zzahx = i;
        this.size = i3;
    }

    @Override // com.google.android.gms.internal.ads.zzdwy, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(@NullableDecl Object obj) {
        Object[] objArr = this.zzhyp;
        if (obj == null || objArr == null) {
            return false;
        }
        int zzep = zzdwz.zzep(obj == null ? 0 : obj.hashCode());
        while (true) {
            int i = zzep & this.mask;
            Object obj2 = objArr[i];
            if (obj2 == null) {
                return false;
            }
            if (obj2.equals(obj)) {
                return true;
            }
            zzep = i + 1;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdxg, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.zzahx;
    }

    @Override // com.google.android.gms.internal.ads.zzdxg, com.google.android.gms.internal.ads.zzdwy, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return iterator();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.size;
    }

    @Override // com.google.android.gms.internal.ads.zzdwy
    public final int zza(Object[] objArr, int i) {
        System.arraycopy(this.zzhyo, 0, objArr, i, this.size);
        return i + this.size;
    }

    @Override // com.google.android.gms.internal.ads.zzdwy
    public final zzdya<E> zzazg() {
        return (zzdya) zzazk().iterator();
    }

    @Override // com.google.android.gms.internal.ads.zzdwy
    public final Object[] zzazh() {
        return this.zzhyo;
    }

    @Override // com.google.android.gms.internal.ads.zzdwy
    public final int zzazi() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzdwy
    final int zzazj() {
        return this.size;
    }

    @Override // com.google.android.gms.internal.ads.zzdwy
    public final boolean zzazl() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzdxg
    final boolean zzazn() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzdxg
    final zzdxd<E> zzazo() {
        return zzdxd.zzb(this.zzhyo, this.size);
    }
}
