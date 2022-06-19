package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.AbstractCollection;
import java.util.Arrays;
import java.util.Collection;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdwy.class */
public abstract class zzdwy<E> extends AbstractCollection<E> implements Serializable {
    private static final Object[] zzhxn = new Object[0];

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
    public abstract boolean contains(@NullableDecl Object obj);

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
        return toArray(zzhxn);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v21, types: [java.lang.Object[]] */
    @Override // java.util.AbstractCollection, java.util.Collection
    public final <T> T[] toArray(T[] tArr) {
        T[] tArr2;
        zzdwl.checkNotNull(tArr);
        int size = size();
        if (tArr.length < size) {
            Object[] zzazh = zzazh();
            if (zzazh != null) {
                return (T[]) Arrays.copyOfRange(zzazh, zzazi(), zzazj(), tArr.getClass());
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
        zzdya zzdyaVar = (zzdya) iterator();
        while (zzdyaVar.hasNext()) {
            objArr[i] = zzdyaVar.next();
            i++;
        }
        return i;
    }

    /* renamed from: zzazg */
    public abstract zzdya<E> iterator();

    @NullableDecl
    public Object[] zzazh() {
        return null;
    }

    public int zzazi() {
        throw new UnsupportedOperationException();
    }

    int zzazj() {
        throw new UnsupportedOperationException();
    }

    public zzdxd<E> zzazk() {
        return isEmpty() ? zzdxd.zzazm() : zzdxd.zzc(toArray());
    }

    public abstract boolean zzazl();
}
