package com.google.android.gms.internal.common;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Objects;
import java.util.RandomAccess;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/common/zzu.class */
public abstract class zzu<E> extends zzq<E> implements List<E>, RandomAccess {
    private static final zzy<Object> zza = new zzs(zzw.zza, 0);

    public static <E> zzu<E> zzi() {
        return (zzu<E>) zzw.zza;
    }

    public static <E> zzu<E> zzj(E e) {
        Object[] objArr = {e};
        zzv.zza(objArr, 1);
        return zzn(objArr, 1);
    }

    public static <E> zzu<E> zzk(E e, E e2) {
        Object[] objArr = {e, e2};
        zzv.zza(objArr, 2);
        return zzn(objArr, 2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <E> zzu<E> zzl(Iterable<? extends E> iterable) {
        zzu zzuVar;
        Objects.requireNonNull(iterable);
        if (iterable instanceof Collection) {
            zzuVar = zzm((Collection) iterable);
        } else {
            Iterator<? extends E> it = iterable.iterator();
            if (!it.hasNext()) {
                zzuVar = zzw.zza;
            } else {
                E next = it.next();
                if (!it.hasNext()) {
                    zzuVar = zzj(next);
                } else {
                    zzr zzrVar = new zzr(4);
                    zzrVar.zzb((zzr) next);
                    zzrVar.zzc(it);
                    zzrVar.zzc = true;
                    zzuVar = zzn(zzrVar.zza, zzrVar.zzb);
                }
            }
        }
        return zzuVar;
    }

    public static <E> zzu<E> zzm(Collection<? extends E> collection) {
        if (!(collection instanceof zzq)) {
            Object[] array = collection.toArray();
            int length = array.length;
            zzv.zza(array, length);
            return zzn(array, length);
        }
        zzu<E> zze = ((zzq) collection).zze();
        zzu<E> zzuVar = zze;
        if (zze.zzf()) {
            Object[] array2 = zze.toArray();
            zzuVar = zzn(array2, array2.length);
        }
        return zzuVar;
    }

    static <E> zzu<E> zzn(Object[] objArr, int i) {
        return i == 0 ? (zzu<E>) zzw.zza : new zzw(objArr, i);
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
    public final boolean contains(@NullableDecl Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(@NullableDecl Object obj) {
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
                            } else if (!zzk.zza(get(i), list.get(i))) {
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
                                } else if (!zzk.zza(it.next(), it2.next())) {
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
    public final int indexOf(@NullableDecl Object obj) {
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

    @Override // com.google.android.gms.internal.common.zzq, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* bridge */ /* synthetic */ Iterator iterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    public final int lastIndexOf(@NullableDecl Object obj) {
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

    @Override // com.google.android.gms.internal.common.zzq
    public final zzx<E> zza() {
        return listIterator(0);
    }

    @Override // com.google.android.gms.internal.common.zzq
    public final zzu<E> zze() {
        return this;
    }

    @Override // com.google.android.gms.internal.common.zzq
    int zzg(Object[] objArr, int i) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            objArr[i2] = get(i2);
        }
        return size;
    }

    /* renamed from: zzh */
    public zzu<E> subList(int i, int i2) {
        zzl.zzc(i, i2, size());
        int i3 = i2 - i;
        return i3 == size() ? this : i3 == 0 ? (zzu<E>) zzw.zza : new zzt(this, i, i3);
    }

    /* renamed from: zzo */
    public final zzy<E> listIterator(int i) {
        zzl.zzb(i, size(), FirebaseAnalytics.Param.INDEX);
        return isEmpty() ? (zzy<E>) zza : new zzs(this, i);
    }
}
