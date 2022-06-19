package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Objects;
import java.util.RandomAccess;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfoj.class */
public abstract class zzfoj<E> extends zzfoe<E> implements List<E>, RandomAccess {

    /* renamed from: e */
    private static final ky2<Object> f34067e = new bx2(zzfpx.f34079f, 0);

    public static <E> zzfoj<E> zzi() {
        return (zzfoj<E>) zzfpx.f34079f;
    }

    public static <E> zzfoj<E> zzj(E e) {
        Object[] objArr = {e};
        cy2.m15976a(objArr, 1);
        return zzs(objArr, 1);
    }

    public static <E> zzfoj<E> zzk(E e, E e2) {
        Object[] objArr = {e, e2};
        cy2.m15976a(objArr, 2);
        return zzs(objArr, 2);
    }

    public static <E> zzfoj<E> zzl(E e, E e2, E e3) {
        Object[] objArr = {"2011", "1009", "3010"};
        cy2.m15976a(objArr, 3);
        return zzs(objArr, 3);
    }

    public static <E> zzfoj<E> zzm(E e, E e2, E e3, E e4, E e5) {
        Object[] objArr = {e, e2, e3, e4, e5};
        cy2.m15976a(objArr, 5);
        return zzs(objArr, 5);
    }

    public static <E> zzfoj<E> zzn(E e, E e2, E e3, E e4, E e5, E e6) {
        Object[] objArr = {e, e2, e3, e4, e5, e6};
        cy2.m15976a(objArr, 6);
        return zzs(objArr, 6);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <E> zzfoj<E> zzo(Iterable<? extends E> iterable) {
        Objects.requireNonNull(iterable);
        return zzp(iterable);
    }

    public static <E> zzfoj<E> zzp(Collection<? extends E> collection) {
        if (!(collection instanceof zzfoe)) {
            Object[] array = collection.toArray();
            int length = array.length;
            cy2.m15976a(array, length);
            return zzs(array, length);
        }
        zzfoj<E> zze = ((zzfoe) collection).zze();
        zzfoj<E> zzfojVar = zze;
        if (zze.zzf()) {
            Object[] array2 = zze.toArray();
            zzfojVar = zzs(array2, array2.length);
        }
        return zzfojVar;
    }

    public static <E> zzfoj<E> zzq(E[] eArr) {
        Object[] objArr = (Object[]) eArr.clone();
        int length = objArr.length;
        cy2.m15976a(objArr, length);
        return zzs(objArr, length);
    }

    public static <E> zzfoj<E> zzr(Object[] objArr) {
        return zzs(objArr, objArr.length);
    }

    public static <E> zzfoj<E> zzs(Object[] objArr, int i) {
        return i == 0 ? (zzfoj<E>) zzfpx.f34079f : new zzfpx(objArr, i);
    }

    public static <E> ax2<E> zzu() {
        return new ax2<>(4);
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

    @Override // com.google.android.gms.internal.ads.zzfoe, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        boolean z;
        if (obj == this) {
            z = true;
        } else {
            if (obj instanceof List) {
                List list = (List) obj;
                int size = size();
                if (size == list.size()) {
                    if (list instanceof RandomAccess) {
                        int i = 0;
                        while (true) {
                            z = true;
                            if (i >= size) {
                                break;
                            } else if (!tu2.m10497a(get(i), list.get(i))) {
                                break;
                            } else {
                                i++;
                            }
                        }
                    } else {
                        Iterator<E> it = iterator();
                        Iterator<E> it2 = list.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                if (!it2.hasNext()) {
                                    break;
                                } else if (!tu2.m10497a(it.next(), it2.next())) {
                                    break;
                                }
                            } else if (!it2.hasNext()) {
                                z = true;
                            }
                        }
                    }
                }
            }
            z = false;
        }
        return z;
    }

    @Override // java.util.Collection, java.util.List
    public final int hashCode() {
        int size = size();
        int i = 1;
        for (int i2 = 0; i2 < size; i2++) {
            i = (i * 31) + get(i2).hashCode();
        }
        return i;
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        int i;
        if (obj == null) {
            return -1;
        }
        int size = size();
        int i2 = 0;
        while (true) {
            i = -1;
            if (i2 >= size) {
                break;
            } else if (obj.equals(get(i2))) {
                i = i2;
                break;
            } else {
                i2++;
            }
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.zzfoe, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* bridge */ /* synthetic */ Iterator iterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        int i;
        if (obj == null) {
            return -1;
        }
        int size = size() - 1;
        while (true) {
            i = -1;
            if (size < 0) {
                break;
            } else if (obj.equals(get(size))) {
                i = size;
                break;
            } else {
                size--;
            }
        }
        return i;
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ ListIterator listIterator() {
        return listIterator(0);
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

    @Override // com.google.android.gms.internal.ads.zzfoe
    public final jy2<E> zza() {
        return listIterator(0);
    }

    @Override // com.google.android.gms.internal.ads.zzfoe
    @Deprecated
    public final zzfoj<E> zze() {
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzfoe
    public int zzg(Object[] objArr, int i) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            objArr[i + i2] = get(i2);
        }
        return i + size;
    }

    /* renamed from: zzh */
    public zzfoj<E> subList(int i, int i2) {
        xu2.m9050g(i, i2, size());
        int i3 = i2 - i;
        return i3 == size() ? this : i3 == 0 ? (zzfoj<E>) zzfpx.f34079f : new zzfoi(this, i, i3);
    }

    /* renamed from: zzt */
    public final ky2<E> listIterator(int i) {
        xu2.m9051f(i, size(), "index");
        return isEmpty() ? (ky2<E>) f34067e : new bx2(this, i);
    }
}
