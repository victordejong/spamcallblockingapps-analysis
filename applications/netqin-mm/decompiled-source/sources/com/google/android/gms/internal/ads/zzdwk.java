package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.AbstractCollection;
import java.util.Arrays;
import java.util.Collection;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdwk.class */
public abstract class zzdwk<E> extends AbstractCollection<E> implements Serializable {
    public static final Object[] zzhqj = new Object[0];

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
        return toArray(zzhqj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final <T> T[] toArray(T[] tArr) {
        T[] tArr2;
        zzdwd.m13096a(tArr);
        int size = size();
        if (tArr.length < size) {
            Object[] zzaxj = zzaxj();
            if (zzaxj != null) {
                return (T[]) Arrays.copyOfRange(zzaxj, zzaxk(), zzaxl(), tArr.getClass());
            }
            tArr2 = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), size));
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
        zzdxg zzdxgVar = (zzdxg) iterator();
        while (zzdxgVar.hasNext()) {
            objArr[i] = zzdxgVar.next();
            i++;
        }
        return i;
    }

    /* renamed from: zzaxi */
    public abstract zzdxg<E> iterator();

    public Object[] zzaxj() {
        return null;
    }

    public int zzaxk() {
        throw new UnsupportedOperationException();
    }

    public int zzaxl() {
        throw new UnsupportedOperationException();
    }

    public zzdwp<E> zzaxm() {
        return isEmpty() ? zzdwp.zzaxo() : zzdwp.zzc(toArray());
    }

    public abstract boolean zzaxn();
}
