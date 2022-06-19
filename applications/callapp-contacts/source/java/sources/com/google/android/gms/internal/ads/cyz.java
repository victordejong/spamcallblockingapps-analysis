package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cyz.class */
public abstract class cyz<E> extends cyt<E> implements List<E>, RandomAccess {

    /* renamed from: a */
    private static final czz<Object> f46779a = new czb(czl.f46801a, 0);

    /* renamed from: a */
    public static <E> cyz<E> m17037a(Iterable<? extends E> iterable) {
        cyg.m17060a(iterable);
        if (iterable instanceof Collection) {
            return m17035a((Collection) iterable);
        }
        Iterator<? extends E> it2 = iterable.iterator();
        if (!it2.hasNext()) {
            return (cyz<E>) czl.f46801a;
        }
        E next = it2.next();
        if (!it2.hasNext()) {
            return m17036a(next);
        }
        cyx cyxVar = (cyx) ((cyx) new cyx().mo17016a((cyx) next)).mo17015a((Iterator) it2);
        cyxVar.f46778c = true;
        return m17032b(cyxVar.f46776a, cyxVar.f46777b);
    }

    /* renamed from: a */
    public static <E> cyz<E> m17036a(E e) {
        Object[] objArr = {e};
        for (int i = 0; i <= 0; i++) {
            czi.m17012a(objArr[0], 0);
        }
        return m17032b(objArr, 1);
    }

    /* renamed from: a */
    public static <E> cyz<E> m17035a(Collection<? extends E> collection) {
        if (collection instanceof cyt) {
            cyz<E> mo17004e = ((cyt) collection).mo17004e();
            cyz<E> cyzVar = mo17004e;
            if (mo17004e.mo16995f()) {
                Object[] array = mo17004e.toArray();
                cyzVar = m17032b(array, array.length);
            }
            return cyzVar;
        }
        Object[] array2 = collection.toArray();
        int length = array2.length;
        for (int i = 0; i < length; i++) {
            czi.m17012a(array2[i], i);
        }
        return m17032b(array2, array2.length);
    }

    /* renamed from: a */
    public static <E> cyz<E> m17034a(E[] eArr) {
        if (eArr.length == 0) {
            return (cyz<E>) czl.f46801a;
        }
        Object[] objArr = (Object[]) eArr.clone();
        int length = objArr.length;
        for (int i = 0; i < length; i++) {
            czi.m17012a(objArr[i], i);
        }
        return m17032b(objArr, objArr.length);
    }

    /* renamed from: b */
    public static <E> cyz<E> m17033b(Object[] objArr) {
        return m17032b(objArr, objArr.length);
    }

    /* renamed from: b */
    public static <E> cyz<E> m17032b(Object[] objArr, int i) {
        return i == 0 ? (cyz<E>) czl.f46801a : new czl(objArr, i);
    }

    /* renamed from: g */
    public static <E> cyz<E> m17031g() {
        return (cyz<E>) czl.f46801a;
    }

    @Override // com.google.android.gms.internal.ads.cyt
    /* renamed from: a */
    public int mo16996a(Object[] objArr, int i) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            objArr[i + i2] = get(i2);
        }
        return i + size;
    }

    /* renamed from: a */
    public cyz<E> subList(int i, int i2) {
        cyg.m17062a(i, i2, size());
        int i3 = i2 - i;
        return i3 == size() ? this : i3 == 0 ? (cyz<E>) czl.f46801a : new cza(this, i, i3);
    }

    @Override // com.google.android.gms.internal.ads.cyt
    /* renamed from: a */
    public final czu<E> mo16997a() {
        return (czz) listIterator();
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

    @Override // com.google.android.gms.internal.ads.cyt, java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // com.google.android.gms.internal.ads.cyt
    /* renamed from: e */
    public final cyz<E> mo17004e() {
        return this;
    }

    @Override // java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (obj == cyg.m17060a(this)) {
            return true;
        }
        if (!(obj instanceof List)) {
            return false;
        }
        List list = (List) obj;
        int size = size();
        if (size != list.size()) {
            return false;
        }
        if (list instanceof RandomAccess) {
            for (int i = 0; i < size; i++) {
                if (!cya.m17070a(get(i), list.get(i))) {
                    return false;
                }
            }
            return true;
        }
        cyz<E> cyzVar = this;
        int size2 = cyzVar.size();
        Iterator<E> it2 = list.iterator();
        int i2 = 0;
        while (i2 < size2) {
            if (!it2.hasNext()) {
                return false;
            }
            i2++;
            if (!cya.m17070a(cyzVar.get(i2), it2.next())) {
                return false;
            }
        }
        return !it2.hasNext();
    }

    @Override // java.util.Collection, java.util.List
    public int hashCode() {
        int size = size();
        int i = 1;
        for (int i2 = 0; i2 < size; i2++) {
            i = (((i * 31) + get(i2).hashCode()) ^ (-1)) ^ (-1);
        }
        return i;
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        int size = size();
        if (obj != null) {
            for (int i = 0; i < size; i++) {
                if (obj.equals(get(i))) {
                    return i;
                }
            }
            return -1;
        }
        for (int i2 = 0; i2 < size; i2++) {
            if (get(i2) == null) {
                return i2;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.cyt, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public /* synthetic */ Iterator iterator() {
        return iterator();
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        if (obj == null) {
            for (int size = size() - 1; size >= 0; size--) {
                if (get(size) == null) {
                    return size;
                }
            }
            return -1;
        }
        for (int size2 = size() - 1; size2 >= 0; size2--) {
            if (obj.equals(get(size2))) {
                return size2;
            }
        }
        return -1;
    }

    @Override // java.util.List
    public /* synthetic */ ListIterator listIterator() {
        return (czz) listIterator(0);
    }

    @Override // java.util.List
    public /* synthetic */ ListIterator listIterator(int i) {
        cyg.m17056b(i, size());
        return isEmpty() ? f46779a : new czb(this, i);
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
}
