package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.AbstractCollection;
import java.util.Arrays;
import java.util.Collection;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cpb.class */
public abstract class cpb<E> extends AbstractCollection<E> implements Serializable {

    /* renamed from: a */
    private static final Object[] f13485a = new Object[0];

    /* renamed from: a */
    public int mo10863a(Object[] objArr, int i) {
        cpy cpyVar = (cpy) iterator();
        while (cpyVar.hasNext()) {
            objArr[i] = cpyVar.next();
            i++;
        }
        return i;
    }

    /* renamed from: a */
    public abstract cpy<E> iterator();

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

    @NullableDecl
    /* renamed from: b */
    public Object[] mo10867b() {
        return null;
    }

    /* renamed from: c */
    public int mo10866c() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public abstract boolean contains(@NullableDecl Object obj);

    /* renamed from: d */
    int mo10865d() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: e */
    public cpc<E> mo10868e() {
        return isEmpty() ? cpc.m10894g() : cpc.m10896b(toArray());
    }

    /* renamed from: f */
    public abstract boolean mo10862f();

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
        return toArray(f13485a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v21, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r0v23, types: [java.lang.Object[]] */
    @Override // java.util.AbstractCollection, java.util.Collection
    public final <T> T[] toArray(T[] tArr) {
        T[] tArr2;
        cor.m10936a(tArr);
        int size = size();
        if (tArr.length < size) {
            Object[] mo10867b = mo10867b();
            if (mo10867b != null) {
                tArr2 = Arrays.copyOfRange(mo10867b, mo10866c(), mo10865d(), tArr.getClass());
                return tArr2;
            }
            tArr2 = (Object[]) Array.newInstance(tArr.getClass().getComponentType(), size);
        } else {
            tArr2 = tArr;
            if (tArr.length > size) {
                tArr[size] = null;
                tArr2 = tArr;
            }
        }
        mo10863a(tArr2, 0);
        return tArr2;
    }
}
