package com.google.android.gms.internal.measurement;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.AbstractCollection;
import java.util.Arrays;
import java.util.Collection;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzey.class */
public abstract class zzey<E> extends AbstractCollection<E> implements Serializable {
    public static final Object[] zza = new Object[0];

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
        return toArray(zza);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final <T> T[] toArray(T[] tArr) {
        T[] tArr2;
        zzeb.m9815a(tArr);
        int size = size();
        if (tArr.length < size) {
            Object[] zzb = zzb();
            if (zzb != null) {
                return (T[]) Arrays.copyOfRange(zzb, zzc(), zzd(), tArr.getClass());
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
        zzfx zzfxVar = (zzfx) iterator();
        while (zzfxVar.hasNext()) {
            objArr[i] = zzfxVar.next();
            i++;
        }
        return i;
    }

    /* renamed from: zza */
    public abstract zzfx<E> iterator();

    public Object[] zzb() {
        return null;
    }

    public int zzc() {
        throw new UnsupportedOperationException();
    }

    public int zzd() {
        throw new UnsupportedOperationException();
    }

    public zzfb<E> zze() {
        return isEmpty() ? zzfb.zzg() : zzfb.zza(toArray());
    }

    public abstract boolean zzf();
}
