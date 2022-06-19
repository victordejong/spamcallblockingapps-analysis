package com.google.android.gms.internal.location;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
/* renamed from: com.google.android.gms.internal.location.ae */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/ae.class */
public abstract class AbstractC13317ae<E> extends AbstractC13314ab<E> implements List<E>, RandomAccess {

    /* renamed from: a */
    private static final AbstractC13320ah<Object> f50552a = new C13315ac(C13318af.f50553a, 0);

    /* renamed from: a */
    public static <E> AbstractC13317ae<E> m13346a(Collection<? extends E> collection) {
        if (collection instanceof AbstractC13314ab) {
            AbstractC13317ae<E> mo13344e = ((AbstractC13314ab) collection).mo13344e();
            AbstractC13317ae<E> abstractC13317ae = mo13344e;
            if (mo13344e.mo13338f()) {
                Object[] array = mo13344e.toArray();
                abstractC13317ae = m13345a(array, array.length);
            }
            return abstractC13317ae;
        }
        Object[] array2 = collection.toArray();
        int length = array2.length;
        for (int i = 0; i < length; i++) {
            if (array2[i] == null) {
                StringBuilder sb = new StringBuilder(20);
                sb.append("at index ");
                sb.append(i);
                throw new NullPointerException(sb.toString());
            }
        }
        return m13345a(array2, length);
    }

    /* renamed from: a */
    private static <E> AbstractC13317ae<E> m13345a(Object[] objArr, int i) {
        return i == 0 ? (AbstractC13317ae<E>) C13318af.f50553a : new C13318af(objArr, i);
    }

    /* renamed from: a */
    public AbstractC13320ah<E> listIterator(int i) {
        C13350y.m13322b(i, size());
        return isEmpty() ? (AbstractC13320ah<E>) f50552a : new C13315ac(this, i);
    }

    /* renamed from: g */
    public static <E> AbstractC13317ae<E> m13343g() {
        return (AbstractC13317ae<E>) C13318af.f50553a;
    }

    @Override // com.google.android.gms.internal.location.AbstractC13314ab
    /* renamed from: a */
    int mo13342a(Object[] objArr) {
        int size = size();
        for (int i = 0; i < size; i++) {
            objArr[i] = get(i);
        }
        return size;
    }

    /* renamed from: a */
    public AbstractC13317ae<E> subList(int i, int i2) {
        C13350y.m13324a(i, i2, size());
        int i3 = i2 - i;
        return i3 == size() ? this : i3 == 0 ? (AbstractC13317ae<E>) C13318af.f50553a : new C13316ad(this, i, i3);
    }

    @Override // com.google.android.gms.internal.location.AbstractC13314ab
    /* renamed from: a */
    public final AbstractC13319ag<E> mo13349a() {
        return listIterator(0);
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

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // com.google.android.gms.internal.location.AbstractC13314ab
    /* renamed from: e */
    public final AbstractC13317ae<E> mo13344e() {
        return this;
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        boolean z;
        if (obj == this) {
            z = true;
        } else {
            if (obj instanceof List) {
                List list = (List) obj;
                int size = size();
                if (size == list.size()) {
                    if (list instanceof RandomAccess) {
                        int i = 0;
                        while (true) {
                            z = true;
                            if (i >= size) {
                                break;
                            } else if (!C13349x.m13326a(get(i), list.get(i))) {
                                break;
                            } else {
                                i++;
                            }
                        }
                    } else {
                        Iterator<E> it2 = iterator();
                        Iterator<E> it3 = list.iterator();
                        while (true) {
                            if (it2.hasNext()) {
                                if (!it3.hasNext()) {
                                    break;
                                } else if (!C13349x.m13326a(it2.next(), it3.next())) {
                                    break;
                                }
                            } else if (!it3.hasNext()) {
                                z = true;
                            }
                        }
                    }
                }
            }
            z = false;
        }
        return z;
    }

    @Override // java.util.Collection, java.util.List
    public final int hashCode() {
        int size = size();
        int i = 1;
        for (int i2 = 0; i2 < size; i2++) {
            i = (i * 31) + get(i2).hashCode();
        }
        return i;
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        int i;
        if (obj == null) {
            return -1;
        }
        int size = size();
        int i2 = 0;
        while (true) {
            i = -1;
            if (i2 >= size) {
                break;
            } else if (obj.equals(get(i2))) {
                i = i2;
                break;
            } else {
                i2++;
            }
        }
        return i;
    }

    @Override // com.google.android.gms.internal.location.AbstractC13314ab, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        int i;
        if (obj == null) {
            return -1;
        }
        int size = size() - 1;
        while (true) {
            i = -1;
            if (size < 0) {
                break;
            } else if (obj.equals(get(size))) {
                i = size;
                break;
            } else {
                size--;
            }
        }
        return i;
    }

    @Override // java.util.List
    public final /* synthetic */ ListIterator listIterator() {
        return listIterator(0);
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
