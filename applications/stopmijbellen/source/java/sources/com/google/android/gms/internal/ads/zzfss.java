package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Objects;
import java.util.RandomAccess;
import javax.annotation.CheckForNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfss.class */
public abstract class zzfss<E> extends zzfsn<E> implements List<E>, RandomAccess {
    private static final zzfuv<Object> zza = new zzfsq(zzfug.zza, 0);

    public static <E> zzfsp<E> zzi() {
        return new zzfsp<>(4);
    }

    public static <E> zzfss<E> zzj(Object[] objArr) {
        return zzk(objArr, objArr.length);
    }

    public static <E> zzfss<E> zzk(Object[] objArr, int i) {
        return i == 0 ? (zzfss<E>) zzfug.zza : new zzfug(objArr, i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <E> zzfss<E> zzl(Iterable<? extends E> iterable) {
        Objects.requireNonNull(iterable);
        return zzm(iterable);
    }

    public static <E> zzfss<E> zzm(Collection<? extends E> collection) {
        if (!(collection instanceof zzfsn)) {
            Object[] array = collection.toArray();
            int length = array.length;
            zzfue.zzb(array, length);
            return zzk(array, length);
        }
        zzfss<E> zzd = ((zzfsn) collection).zzd();
        zzfss<E> zzfssVar = zzd;
        if (zzd.zzf()) {
            Object[] array2 = zzd.toArray();
            zzfssVar = zzk(array2, array2.length);
        }
        return zzfssVar;
    }

    public static <E> zzfss<E> zzn(E[] eArr) {
        Object[] objArr = (Object[]) eArr.clone();
        int length = objArr.length;
        zzfue.zzb(objArr, length);
        return zzk(objArr, length);
    }

    public static <E> zzfss<E> zzo() {
        return (zzfss<E>) zzfug.zza;
    }

    public static <E> zzfss<E> zzp(E e) {
        Object[] objArr = {e};
        zzfue.zzb(objArr, 1);
        return zzk(objArr, 1);
    }

    public static <E> zzfss<E> zzq(E e, E e2) {
        Object[] objArr = {e, e2};
        zzfue.zzb(objArr, 2);
        return zzk(objArr, 2);
    }

    public static <E> zzfss<E> zzr(E e, E e2, E e3) {
        Object[] objArr = {"2011", "1009", "3010"};
        zzfue.zzb(objArr, 3);
        return zzk(objArr, 3);
    }

    public static <E> zzfss<E> zzs(E e, E e2, E e3, E e4, E e5) {
        Object[] objArr = {e, e2, e3, e4, e5};
        zzfue.zzb(objArr, 5);
        return zzk(objArr, 5);
    }

    public static <E> zzfss<E> zzt(E e, E e2, E e3, E e4, E e5, E e6) {
        Object[] objArr = {e, e2, e3, e4, e5, e6};
        zzfue.zzb(objArr, 6);
        return zzk(objArr, 6);
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

    @Override // com.google.android.gms.internal.ads.zzfsn, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(@CheckForNull Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(@CheckForNull Object obj) {
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
                            } else if (!zzfqc.zza(get(i), list.get(i))) {
                                break;
                            } else {
                                i++;
                            }
                        }
                    } else {
                        Iterator<E> it2 = iterator();
                        Iterator<E> it3 = list.iterator();
                        while (true) {
                            if (it2.hasNext()) {
                                if (!it3.hasNext()) {
                                    break;
                                } else if (!zzfqc.zza(it2.next(), it3.next())) {
                                    break;
                                }
                            } else if (!it3.hasNext()) {
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
    public final int indexOf(@CheckForNull Object obj) {
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

    @Override // com.google.android.gms.internal.ads.zzfsn, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    public final int lastIndexOf(@CheckForNull Object obj) {
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
    public final /* synthetic */ ListIterator listIterator() {
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

    @Override // com.google.android.gms.internal.ads.zzfsn
    public int zza(Object[] objArr, int i) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            objArr[i + i2] = get(i2);
        }
        return i + size;
    }

    @Override // com.google.android.gms.internal.ads.zzfsn
    @Deprecated
    public final zzfss<E> zzd() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfsn
    public final zzfuu<E> zze() {
        return listIterator(0);
    }

    /* renamed from: zzh */
    public zzfss<E> subList(int i, int i2) {
        zzfqg.zzf(i, i2, size());
        int i3 = i2 - i;
        return i3 == size() ? this : i3 == 0 ? (zzfss<E>) zzfug.zza : new zzfsr(this, i, i3);
    }

    /* renamed from: zzu */
    public final zzfuv<E> listIterator(int i) {
        zzfqg.zzb(i, size(), "index");
        return isEmpty() ? (zzfuv<E>) zza : new zzfsq(this, i);
    }
}
