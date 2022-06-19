package com.google.android.gms.internal.mlkit_translate;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzq.class */
public abstract class zzq<E> extends zzl<E> implements List<E>, RandomAccess {
    private static final zzaj<Object> zza = new zzs(zzaa.zza, 0);

    public static <E> zzq<E> zza(E e) {
        Object[] objArr = {e};
        for (int i = 0; i <= 0; i++) {
            zzx.zza(objArr[0], 0);
        }
        return zzb(objArr, 1);
    }

    public static <E> zzq<E> zza(E e, E e2) {
        Object[] objArr = {e, e2};
        for (int i = 0; i < 2; i++) {
            zzx.zza(objArr[i], i);
        }
        return zzb(objArr, 2);
    }

    public static <E> zzq<E> zza(E e, E e2, E e3) {
        Object[] objArr = {e, e2, e3};
        for (int i = 0; i < 3; i++) {
            zzx.zza(objArr[i], i);
        }
        return zzb(objArr, 3);
    }

    public static <E> zzq<E> zza(E e, E e2, E e3, E e4) {
        Object[] objArr = {e, e2, e3, e4};
        for (int i = 0; i < 4; i++) {
            zzx.zza(objArr[i], i);
        }
        return zzb(objArr, 4);
    }

    @SafeVarargs
    public static <E> zzq<E> zza(E e, E e2, E e3, E e4, E e5, E e6, E e7, E e8, E e9, E e10, E e11, E e12, E... eArr) {
        zzi.zza(eArr.length <= 2147483635, "the total number of elements must fit in an int");
        int length = eArr.length + 12;
        Object[] objArr = new Object[length];
        objArr[0] = e;
        objArr[1] = e2;
        objArr[2] = e3;
        objArr[3] = e4;
        objArr[4] = e5;
        objArr[5] = e6;
        objArr[6] = e7;
        objArr[7] = e8;
        objArr[8] = e9;
        objArr[9] = e10;
        objArr[10] = e11;
        objArr[11] = e12;
        System.arraycopy(eArr, 0, objArr, 12, eArr.length);
        for (int i = 0; i < length; i++) {
            zzx.zza(objArr[i], i);
        }
        return zzb(objArr, length);
    }

    public static <E> zzq<E> zza(E[] eArr) {
        if (eArr.length == 0) {
            return (zzq<E>) zzaa.zza;
        }
        Object[] objArr = (Object[]) eArr.clone();
        int length = objArr.length;
        for (int i = 0; i < length; i++) {
            zzx.zza(objArr[i], i);
        }
        return zzb(objArr, objArr.length);
    }

    public static <E> zzq<E> zzb(Object[] objArr) {
        return zzb(objArr, objArr.length);
    }

    public static <E> zzq<E> zzb(Object[] objArr, int i) {
        return i == 0 ? (zzq<E>) zzaa.zza : new zzaa(objArr, i);
    }

    public static <E> zzq<E> zzf() {
        return (zzq<E>) zzaa.zza;
    }

    public static <E> zzp<E> zzg() {
        return new zzp<>();
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

    @Override // com.google.android.gms.internal.mlkit_translate.zzl, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (obj == zzi.zza(this)) {
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
        if (list instanceof RandomAccess) {
            for (int i = 0; i < size; i++) {
                if (!zzc.zza(get(i), list.get(i))) {
                    return false;
                }
            }
            return true;
        }
        int size2 = size();
        Iterator<E> it = list.iterator();
        int i2 = 0;
        while (i2 < size2) {
            if (!it.hasNext()) {
                return false;
            }
            i2++;
            if (!zzc.zza(get(i2), it.next())) {
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
            i = ((get(i2).hashCode() + (i * 31)) ^ (-1)) ^ (-1);
        }
        return i;
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        int size = size();
        for (int i = 0; i < size; i++) {
            if (obj.equals(get(i))) {
                return i;
            }
        }
        return -1;
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        for (int size = size() - 1; size >= 0; size--) {
            if (obj.equals(get(size))) {
                return size;
            }
        }
        return -1;
    }

    @Override // java.util.List
    public /* synthetic */ ListIterator listIterator() {
        return (zzaj) listIterator(0);
    }

    @Override // java.util.List
    public /* synthetic */ ListIterator listIterator(int i) {
        zzi.zzb(i, size());
        return isEmpty() ? zza : new zzs(this, i);
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

    @Override // com.google.android.gms.internal.mlkit_translate.zzl
    public int zza(Object[] objArr, int i) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            objArr[i + i2] = get(i2);
        }
        return i + size;
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzl
    /* renamed from: zza */
    public final zzak<E> iterator() {
        return (zzaj) listIterator();
    }

    /* renamed from: zza */
    public zzq<E> subList(int i, int i2) {
        zzi.zza(i, i2, size());
        int i3 = i2 - i;
        return i3 == size() ? this : i3 == 0 ? (zzq<E>) zzaa.zza : new zzr(this, i, i3);
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzl
    public final zzq<E> zze() {
        return this;
    }
}
