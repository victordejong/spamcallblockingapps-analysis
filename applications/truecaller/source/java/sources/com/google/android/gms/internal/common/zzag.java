package com.google.android.gms.internal.common;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Objects;
import java.util.RandomAccess;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/common/zzag.class */
public abstract class zzag<E> extends zzac<E> implements List<E>, RandomAccess {
    private static final zzak<Object> zza = new zzae(zzai.zza, 0);

    public static <E> zzag<E> zzi(Object[] objArr, int i) {
        return i == 0 ? (zzag<E>) zzai.zza : new zzai(objArr, i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <E> zzag<E> zzj(Iterable<? extends E> iterable) {
        zzag zzagVar;
        Objects.requireNonNull(iterable);
        if (iterable instanceof Collection) {
            zzagVar = zzk((Collection) iterable);
        } else {
            Iterator<? extends E> it = iterable.iterator();
            if (!it.hasNext()) {
                zzagVar = zzai.zza;
            } else {
                E next = it.next();
                if (!it.hasNext()) {
                    zzagVar = zzm(next);
                } else {
                    zzad zzadVar = new zzad(4);
                    zzadVar.zzb((zzad) next);
                    zzadVar.zzc(it);
                    zzadVar.zzc = true;
                    zzagVar = zzi(zzadVar.zza, zzadVar.zzb);
                }
            }
        }
        return zzagVar;
    }

    public static <E> zzag<E> zzk(Collection<? extends E> collection) {
        if (!(collection instanceof zzac)) {
            Object[] array = collection.toArray();
            int length = array.length;
            zzah.zza(array, length);
            return zzi(array, length);
        }
        zzag<E> zzd = ((zzac) collection).zzd();
        zzag<E> zzagVar = zzd;
        if (zzd.zzf()) {
            Object[] array2 = zzd.toArray();
            zzagVar = zzi(array2, array2.length);
        }
        return zzagVar;
    }

    public static <E> zzag<E> zzl() {
        return (zzag<E>) zzai.zza;
    }

    public static <E> zzag<E> zzm(E e) {
        Object[] objArr = {e};
        zzah.zza(objArr, 1);
        return zzi(objArr, 1);
    }

    public static <E> zzag<E> zzn(E e, E e2) {
        Object[] objArr = {e, e2};
        zzah.zza(objArr, 2);
        return zzi(objArr, 2);
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
                            } else if (!zzr.zza(get(i), list.get(i))) {
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
                                } else if (!zzr.zza(it.next(), it2.next())) {
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

    @Override // com.google.android.gms.internal.common.zzac, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
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

    @Override // com.google.android.gms.internal.common.zzac
    public int zza(Object[] objArr, int i) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            objArr[i2] = get(i2);
        }
        return size;
    }

    @Override // com.google.android.gms.internal.common.zzac
    @Deprecated
    public final zzag<E> zzd() {
        return this;
    }

    @Override // com.google.android.gms.internal.common.zzac
    public final zzaj<E> zze() {
        return listIterator(0);
    }

    /* renamed from: zzh */
    public zzag<E> subList(int i, int i2) {
        zzs.zzc(i, i2, size());
        int i3 = i2 - i;
        return i3 == size() ? this : i3 == 0 ? (zzag<E>) zzai.zza : new zzaf(this, i, i3);
    }

    /* renamed from: zzo */
    public final zzak<E> listIterator(int i) {
        zzs.zzb(i, size(), "index");
        return isEmpty() ? (zzak<E>) zza : new zzae(this, i);
    }
}
