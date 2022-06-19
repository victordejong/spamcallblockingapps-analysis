package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdxd.class */
public abstract class zzdxd<E> extends zzdwy<E> implements List<E>, RandomAccess {
    private static final zzdyd<Object> zzhxq = new zzdxf(zzdxr.zzhyi, 0);

    public static <E> zzdxd<E> zzac(E e) {
        Object[] objArr = {e};
        for (int i = 0; i <= 0; i++) {
            zzdxo.zzd(objArr[0], 0);
        }
        return zzb(objArr, 1);
    }

    public static <E> zzdxd<E> zzazm() {
        return (zzdxd<E>) zzdxr.zzhyi;
    }

    public static <E> zzdxd<E> zzb(Collection<? extends E> collection) {
        if (collection instanceof zzdwy) {
            zzdxd<E> zzazk = ((zzdwy) collection).zzazk();
            zzdxd<E> zzdxdVar = zzazk;
            if (zzazk.zzazl()) {
                Object[] array = zzazk.toArray();
                zzdxdVar = zzb(array, array.length);
            }
            return zzdxdVar;
        }
        Object[] array2 = collection.toArray();
        int length = array2.length;
        for (int i = 0; i < length; i++) {
            zzdxo.zzd(array2[i], i);
        }
        return zzb(array2, array2.length);
    }

    public static <E> zzdxd<E> zzb(E[] eArr) {
        if (eArr.length == 0) {
            return (zzdxd<E>) zzdxr.zzhyi;
        }
        Object[] objArr = (Object[]) eArr.clone();
        int length = objArr.length;
        for (int i = 0; i < length; i++) {
            zzdxo.zzd(objArr[i], i);
        }
        return zzb(objArr, objArr.length);
    }

    public static <E> zzdxd<E> zzb(Object[] objArr, int i) {
        return i == 0 ? (zzdxd<E>) zzdxr.zzhyi : new zzdxr(objArr, i);
    }

    public static <E> zzdxd<E> zzc(Object[] objArr) {
        return zzb(objArr, objArr.length);
    }

    public static <E> zzdxd<E> zzh(Iterable<? extends E> iterable) {
        zzdwl.checkNotNull(iterable);
        if (iterable instanceof Collection) {
            return zzb((Collection) iterable);
        }
        Iterator<? extends E> it = iterable.iterator();
        if (!it.hasNext()) {
            return (zzdxd<E>) zzdxr.zzhyi;
        }
        E next = it.next();
        if (!it.hasNext()) {
            return zzac(next);
        }
        zzdxc zzdxcVar = (zzdxc) ((zzdxc) new zzdxc().zzaa(next)).zza(it);
        zzdxcVar.zzhxp = true;
        return zzb(zzdxcVar.zzhxo, zzdxcVar.size);
    }

    @Override // java.util.List
    @Deprecated
    public final void add(int i, E e) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final boolean addAll(int i, Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.ads.zzdwy, java.util.AbstractCollection, java.util.Collection
    public boolean contains(@NullableDecl Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.List
    public boolean equals(@NullableDecl Object obj) {
        if (obj == zzdwl.checkNotNull(this)) {
            return true;
        }
        if (!(obj instanceof List)) {
            return false;
        }
        List list = (List) obj;
        int size = size();
        if (size != list.size()) {
            return false;
        }
        if ((this instanceof RandomAccess) && (list instanceof RandomAccess)) {
            for (int i = 0; i < size; i++) {
                if (!zzdwf.equal(get(i), list.get(i))) {
                    return false;
                }
            }
            return true;
        }
        zzdxd<E> zzdxdVar = this;
        int size2 = zzdxdVar.size();
        Iterator<E> it = list.iterator();
        int i2 = 0;
        while (i2 < size2) {
            if (!it.hasNext()) {
                return false;
            }
            i2++;
            if (!zzdwf.equal(zzdxdVar.get(i2), it.next())) {
                return false;
            }
        }
        return !it.hasNext();
    }

    @Override // java.util.Collection, java.util.List
    public int hashCode() {
        int size = size();
        int i = 1;
        for (int i2 = 0; i2 < size; i2++) {
            i = (((i * 31) + get(i2).hashCode()) ^ (-1)) ^ (-1);
        }
        return i;
    }

    @Override // java.util.List
    public int indexOf(@NullableDecl Object obj) {
        if (obj == null) {
            return -1;
        }
        if (!(this instanceof RandomAccess)) {
            ListIterator<E> listIterator = listIterator();
            while (listIterator.hasNext()) {
                if (zzdwf.equal(obj, listIterator.next())) {
                    return listIterator.previousIndex();
                }
            }
            return -1;
        }
        int size = size();
        if (obj != null) {
            for (int i = 0; i < size; i++) {
                if (obj.equals(get(i))) {
                    return i;
                }
            }
            return -1;
        }
        for (int i2 = 0; i2 < size; i2++) {
            if (get(i2) == null) {
                return i2;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzdwy, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public /* synthetic */ Iterator iterator() {
        return iterator();
    }

    @Override // java.util.List
    public int lastIndexOf(@NullableDecl Object obj) {
        if (obj == null) {
            return -1;
        }
        if (!(this instanceof RandomAccess)) {
            ListIterator<E> listIterator = listIterator(size());
            while (listIterator.hasPrevious()) {
                if (zzdwf.equal(obj, listIterator.previous())) {
                    return listIterator.nextIndex();
                }
            }
            return -1;
        } else if (obj == null) {
            for (int size = size() - 1; size >= 0; size--) {
                if (get(size) == null) {
                    return size;
                }
            }
            return -1;
        } else {
            for (int size2 = size() - 1; size2 >= 0; size2--) {
                if (obj.equals(get(size2))) {
                    return size2;
                }
            }
            return -1;
        }
    }

    @Override // java.util.List
    public /* synthetic */ ListIterator listIterator() {
        return (zzdyd) listIterator(0);
    }

    @Override // java.util.List
    public /* synthetic */ ListIterator listIterator(int i) {
        zzdwl.zzu(i, size());
        return isEmpty() ? zzhxq : new zzdxf(this, i);
    }

    @Override // java.util.List
    @Deprecated
    public final E remove(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final E set(int i, E e) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.ads.zzdwy
    public int zza(Object[] objArr, int i) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            objArr[i + i2] = get(i2);
        }
        return i + size;
    }

    @Override // com.google.android.gms.internal.ads.zzdwy
    public final zzdya<E> zzazg() {
        return (zzdyd) listIterator();
    }

    @Override // com.google.android.gms.internal.ads.zzdwy
    public final zzdxd<E> zzazk() {
        return this;
    }

    /* renamed from: zzv */
    public zzdxd<E> subList(int i, int i2) {
        zzdwl.zzf(i, i2, size());
        int i3 = i2 - i;
        return i3 == size() ? this : i3 == 0 ? (zzdxd<E>) zzdxr.zzhyi : new zzdxe(this, i, i3);
    }
}
