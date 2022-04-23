package com.google.android.gms.internal.location;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.AbstractCollection;
import java.util.Arrays;
import java.util.Collection;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/ab.class */
public abstract class ab<E> extends AbstractCollection<E> implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private static final Object[] f28887a = new Object[0];

    int a(Object[] objArr) {
        throw null;
    }

    /* renamed from: a */
    public abstract ag<E> iterator();

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

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object[] b() {
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int c() {
        throw null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    int d() {
        throw null;
    }

    public ae<E> e() {
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean f();

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
        return toArray(f28887a);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final <T> T[] toArray(T[] tArr) {
        T[] tArr2;
        Objects.requireNonNull(tArr);
        int size = size();
        int length = tArr.length;
        if (length < size) {
            Object[] b2 = b();
            if (b2 != null) {
                return (T[]) Arrays.copyOfRange(b2, c(), d(), tArr.getClass());
            }
            tArr2 = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), size));
        } else {
            tArr2 = tArr;
            if (length > size) {
                tArr[size] = null;
                tArr2 = tArr;
            }
        }
        a(tArr2);
        return tArr2;
    }
}
