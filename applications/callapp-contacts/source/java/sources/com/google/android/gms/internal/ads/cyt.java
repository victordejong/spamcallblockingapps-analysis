package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.AbstractCollection;
import java.util.Arrays;
import java.util.Collection;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cyt.class */
public abstract class cyt<E> extends AbstractCollection<E> implements Serializable {

    /* renamed from: a */
    private static final Object[] f46775a = new Object[0];

    /* renamed from: a */
    public int mo16996a(Object[] objArr, int i) {
        czu czuVar = (czu) iterator();
        while (czuVar.hasNext()) {
            objArr[i] = czuVar.next();
            i++;
        }
        return i;
    }

    /* renamed from: a */
    public abstract czu<E> iterator();

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
    public Object[] mo17001b() {
        return null;
    }

    /* renamed from: c */
    public int mo17000c() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public abstract boolean contains(Object obj);

    /* renamed from: d */
    int mo16999d() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: e */
    public cyz<E> mo17004e() {
        return isEmpty() ? cyz.m17031g() : cyz.m17033b(toArray());
    }

    /* renamed from: f */
    public abstract boolean mo16995f();

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
        return toArray(f46775a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v21, types: [java.lang.Object[]] */
    @Override // java.util.AbstractCollection, java.util.Collection
    public final <T> T[] toArray(T[] tArr) {
        T[] tArr2;
        cyg.m17060a(tArr);
        int size = size();
        if (tArr.length < size) {
            Object[] mo17001b = mo17001b();
            if (mo17001b != null) {
                return (T[]) Arrays.copyOfRange(mo17001b, mo17000c(), mo16999d(), tArr.getClass());
            }
            tArr2 = (Object[]) Array.newInstance(tArr.getClass().getComponentType(), size);
        } else {
            tArr2 = tArr;
            if (tArr.length > size) {
                tArr[size] = null;
                tArr2 = tArr;
            }
        }
        mo16996a(tArr2, 0);
        return tArr2;
    }
}
