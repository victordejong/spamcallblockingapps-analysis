package com.google.android.gms.internal.vision;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.AbstractCollection;
import java.util.Arrays;
import java.util.Collection;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzdc.class */
public abstract class zzdc<E> extends AbstractCollection<E> implements Serializable {
    private static final Object[] zzll = new Object[0];

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean add(E e) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean addAll(Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public abstract boolean contains(Object obj);

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean removeAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean retainAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray() {
        return toArray(zzll);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v21, types: [java.lang.Object[]] */
    @Override // java.util.AbstractCollection, java.util.Collection
    public final <T> T[] toArray(T[] tArr) {
        T[] tArr2;
        zzct.checkNotNull(tArr);
        int size = size();
        if (tArr.length < size) {
            Object[] zzbz = zzbz();
            if (zzbz != null) {
                return (T[]) Arrays.copyOfRange(zzbz, zzca(), zzcb(), tArr.getClass());
            }
            tArr2 = (Object[]) Array.newInstance(tArr.getClass().getComponentType(), size);
        } else {
            tArr2 = tArr;
            if (tArr.length > size) {
                tArr[size] = null;
                tArr2 = tArr;
            }
        }
        zza(tArr2, 0);
        return tArr2;
    }

    public int zza(Object[] objArr, int i) {
        zzdr zzdrVar = (zzdr) iterator();
        while (zzdrVar.hasNext()) {
            objArr[i] = zzdrVar.next();
            i++;
        }
        return i;
    }

    /* renamed from: zzby */
    public abstract zzdr<E> iterator();

    public Object[] zzbz() {
        return null;
    }

    public int zzca() {
        throw new UnsupportedOperationException();
    }

    public int zzcb() {
        throw new UnsupportedOperationException();
    }

    public zzdf<E> zzcc() {
        return isEmpty() ? zzdf.zzcd() : zzdf.zza(toArray());
    }
}
