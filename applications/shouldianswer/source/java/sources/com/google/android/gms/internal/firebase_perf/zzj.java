package com.google.android.gms.internal.firebase_perf;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzj.class */
public abstract class zzj<E> extends zzk<E> implements List<E>, RandomAccess {
    private static final zzx<Object> zzb = new zzm(zzp.zzl, 0);

    public static <E> zzj<E> zza() {
        return (zzj<E>) zzp.zzl;
    }

    public static <E> zzj<E> zza(Object[] objArr) {
        int length = objArr.length;
        return length == 0 ? (zzj<E>) zzp.zzl : new zzp(objArr, length);
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

    @Override // com.google.android.gms.internal.firebase_perf.zzk, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(@NullableDecl Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.List
    public boolean equals(@NullableDecl Object obj) {
        if (obj == zzd.checkNotNull(this)) {
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
                if (!zze.equal(get(i), list.get(i))) {
                    return false;
                }
            }
            return true;
        }
        zzj<E> zzjVar = this;
        int size2 = zzjVar.size();
        Iterator<E> it = list.iterator();
        int i2 = 0;
        while (i2 < size2) {
            if (!it.hasNext()) {
                return false;
            }
            i2++;
            if (!zze.equal(zzjVar.get(i2), it.next())) {
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
                if (zze.equal(obj, listIterator.next())) {
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

    @Override // com.google.android.gms.internal.firebase_perf.zzk, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
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
                if (zze.equal(obj, listIterator.previous())) {
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
        return (zzx) listIterator(0);
    }

    @Override // java.util.List
    public /* synthetic */ ListIterator listIterator(int i) {
        zzd.zzb(i, size());
        return isEmpty() ? zzb : new zzm(this, i);
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

    @Override // com.google.android.gms.internal.firebase_perf.zzk
    public int zza(Object[] objArr, int i) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            objArr[i + i2] = get(i2);
        }
        return i + size;
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzk
    public final zzy<E> zzb() {
        return (zzx) listIterator();
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzk
    public final zzj<E> zzc() {
        return this;
    }

    /* renamed from: zzc */
    public zzj<E> subList(int i, int i2) {
        zzd.zza(i, i2, size());
        int i3 = i2 - i;
        return i3 == size() ? this : i3 == 0 ? (zzj<E>) zzp.zzl : new zzl(this, i, i3);
    }
}
