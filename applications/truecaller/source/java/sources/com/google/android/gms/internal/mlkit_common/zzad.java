package com.google.android.gms.internal.mlkit_common;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzad.class */
public abstract class zzad<E> extends zzac<E> implements List<E>, RandomAccess {
    private static final zzaj<Object> zza = new zzaf(zzah.zza, 0);

    public static <E> zzad<E> zza(E e, E e2, E e3, E e4, E e5, E e6, E e7, E e8, E e9, E e10, E e11) {
        Object[] objArr = {e, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11};
        for (int i = 0; i < 11; i++) {
            if (objArr[i] == null) {
                throw new NullPointerException(C22128a.m8690L1(20, "at index ", i));
            }
        }
        return zzb(objArr, 11);
    }

    public static <E> zzad<E> zzb(Object[] objArr, int i) {
        return i == 0 ? (zzad<E>) zzah.zza : new zzah(objArr, i);
    }

    public static <E> zzag<E> zze() {
        return new zzag<>();
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

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (obj == zzy.zza(this)) {
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
                if (!zzs.zza(get(i), list.get(i))) {
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
            if (!zzs.zza(get(i2), it.next())) {
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
        zzy.zzb(i, size());
        return isEmpty() ? zza : new zzaf(this, i);
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

    @Override // com.google.android.gms.internal.mlkit_common.zzac
    public int zza(Object[] objArr, int i) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            objArr[i2] = get(i2);
        }
        return size;
    }

    /* renamed from: zza */
    public zzad<E> subList(int i, int i2) {
        zzy.zza(i, i2, size());
        int i3 = i2 - i;
        return i3 == size() ? this : i3 == 0 ? (zzad<E>) zzah.zza : new zzai(this, i, i3);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzac
    /* renamed from: zza */
    public final zzak<E> iterator() {
        return (zzaj) listIterator();
    }
}
