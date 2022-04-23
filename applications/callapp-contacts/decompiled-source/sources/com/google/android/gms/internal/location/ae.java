package com.google.android.gms.internal.location;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/ae.class */
public abstract class ae<E> extends ab<E> implements List<E>, RandomAccess {

    /* renamed from: a  reason: collision with root package name */
    private static final ah<Object> f28892a = new ac(af.f28893a, 0);

    public static <E> ae<E> a(Collection<? extends E> collection) {
        if (collection instanceof ab) {
            ae<E> e = ((ab) collection).e();
            ae<E> aeVar = e;
            if (e.f()) {
                Object[] array = e.toArray();
                aeVar = a(array, array.length);
            }
            return aeVar;
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
        return a(array2, length);
    }

    private static <E> ae<E> a(Object[] objArr, int i) {
        return i == 0 ? (ae<E>) af.f28893a : new af(objArr, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public ah<E> listIterator(int i) {
        y.b(i, size());
        return isEmpty() ? (ah<E>) f28892a : new ac(this, i);
    }

    public static <E> ae<E> g() {
        return (ae<E>) af.f28893a;
    }

    @Override // com.google.android.gms.internal.location.ab
    int a(Object[] objArr) {
        int size = size();
        for (int i = 0; i < size; i++) {
            objArr[i] = get(i);
        }
        return size;
    }

    /* renamed from: a */
    public ae<E> subList(int i, int i2) {
        y.a(i, i2, size());
        int i3 = i2 - i;
        return i3 == size() ? this : i3 == 0 ? (ae<E>) af.f28893a : new ad(this, i, i3);
    }

    @Override // com.google.android.gms.internal.location.ab
    public final ag<E> a() {
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

    @Override // com.google.android.gms.internal.location.ab
    public final ae<E> e() {
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
                            } else if (!x.a(get(i), list.get(i))) {
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
                                if (it3.hasNext()) {
                                    if (!x.a(it2.next(), it3.next())) {
                                        break;
                                    }
                                } else {
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
        int i = -1;
        if (obj == null) {
            return -1;
        }
        int size = size();
        int i2 = 0;
        while (true) {
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

    @Override // com.google.android.gms.internal.location.ab, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        int i = -1;
        if (obj == null) {
            return -1;
        }
        int size = size() - 1;
        while (true) {
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
