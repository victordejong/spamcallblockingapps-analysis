package com.google.android.gms.internal.location;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.AbstractCollection;
import java.util.Arrays;
import java.util.Collection;
import java.util.Objects;
/* renamed from: com.google.android.gms.internal.location.ab */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/ab.class */
public abstract class AbstractC13314ab<E> extends AbstractCollection<E> implements Serializable {

    /* renamed from: a */
    private static final Object[] f50547a = new Object[0];

    /* renamed from: a */
    int mo13342a(Object[] objArr) {
        throw null;
    }

    /* renamed from: a */
    public abstract AbstractC13319ag<E> iterator();

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

    /* renamed from: b */
    public Object[] mo13341b() {
        throw null;
    }

    /* renamed from: c */
    public int mo13340c() {
        throw null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: d */
    int mo13339d() {
        throw null;
    }

    /* renamed from: e */
    public AbstractC13317ae<E> mo13344e() {
        throw null;
    }

    /* renamed from: f */
    public abstract boolean mo13338f();

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
        return toArray(f50547a);
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
            Object[] mo13341b = mo13341b();
            if (mo13341b != null) {
                return (T[]) Arrays.copyOfRange(mo13341b, mo13340c(), mo13339d(), tArr.getClass());
            }
            tArr2 = (Object[]) Array.newInstance(tArr.getClass().getComponentType(), size);
        } else {
            tArr2 = tArr;
            if (length > size) {
                tArr[size] = null;
                tArr2 = tArr;
            }
        }
        mo13342a(tArr2);
        return tArr2;
    }
}
