package com.google.android.gms.internal.common;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.AbstractCollection;
import java.util.Arrays;
import java.util.Collection;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/common/zzac.class */
public abstract class zzac<E> extends AbstractCollection<E> implements Serializable {
    private static final Object[] zza = new Object[0];

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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v23, types: [java.lang.Object[]] */
    @Override // java.util.AbstractCollection, java.util.Collection
    public final <T> T[] toArray(T[] tArr) {
        T[] tArr2;
        Objects.requireNonNull(tArr);
        int size = size();
        int length = tArr.length;
        if (length < size) {
            Object[] zzg = zzg();
            if (zzg != null) {
                return (T[]) Arrays.copyOfRange(zzg, zzc(), zzb(), tArr.getClass());
            }
            tArr2 = (Object[]) Array.newInstance(tArr.getClass().getComponentType(), size);
        } else {
            tArr2 = tArr;
            if (length > size) {
                tArr[size] = null;
                tArr2 = tArr;
            }
        }
        zza(tArr2, 0);
        return tArr2;
    }

    public int zza(Object[] objArr, int i) {
        throw null;
    }

    public int zzb() {
        throw null;
    }

    public int zzc() {
        throw null;
    }

    public zzag<E> zzd() {
        throw null;
    }

    /* renamed from: zze */
    public abstract zzaj<E> iterator();

    public abstract boolean zzf();

    public Object[] zzg() {
        throw null;
    }
}
