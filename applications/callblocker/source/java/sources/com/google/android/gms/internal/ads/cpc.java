package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cpc.class */
public abstract class cpc<E> extends cpb<E> implements List<E>, RandomAccess {

    /* renamed from: a */
    private static final cpx<Object> f13486a = new cpe(cpn.f13504a, 0);

    /* renamed from: a */
    public static <E> cpc<E> m10899a(Iterable<? extends E> iterable) {
        cpc<E> m10895b;
        cor.m10936a(iterable);
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            if (collection instanceof cpb) {
                cpc<E> mo10868e = ((cpb) collection).mo10868e();
                m10895b = mo10868e;
                if (mo10868e.mo10862f()) {
                    Object[] array = mo10868e.toArray();
                    m10895b = m10895b(array, array.length);
                }
            } else {
                Object[] array2 = collection.toArray();
                int length = array2.length;
                for (int i = 0; i < length; i++) {
                    cpo.m10876a(array2[i], i);
                }
                m10895b = m10895b(array2, array2.length);
            }
        } else {
            Iterator<? extends E> it = iterable.iterator();
            if (!it.hasNext()) {
                m10895b = cpn.f13504a;
            } else {
                E next = it.next();
                if (!it.hasNext()) {
                    m10895b = m10898a(next);
                } else {
                    cpf cpfVar = (cpf) ((cpf) new cpf().mo10886b(next)).mo10887a((Iterator) it);
                    cpfVar.f13484c = true;
                    m10895b = m10895b(cpfVar.f13482a, cpfVar.f13483b);
                }
            }
        }
        return m10895b;
    }

    /* renamed from: a */
    public static <E> cpc<E> m10898a(E e) {
        Object[] objArr = {e};
        for (int i = 0; i <= 0; i++) {
            cpo.m10876a(objArr[0], 0);
        }
        return m10895b(objArr, 1);
    }

    /* renamed from: a */
    public static <E> cpc<E> m10897a(E[] eArr) {
        cpc<Object> m10895b;
        if (eArr.length == 0) {
            m10895b = cpn.f13504a;
        } else {
            Object[] objArr = (Object[]) eArr.clone();
            int length = objArr.length;
            for (int i = 0; i < length; i++) {
                cpo.m10876a(objArr[i], i);
            }
            m10895b = m10895b(objArr, objArr.length);
        }
        return m10895b;
    }

    /* renamed from: b */
    public static <E> cpc<E> m10896b(Object[] objArr) {
        return m10895b(objArr, objArr.length);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    public static <E> cpc<E> m10895b(Object[] objArr, int i) {
        return i == 0 ? cpn.f13504a : new cpn(objArr, i);
    }

    /* renamed from: g */
    public static <E> cpc<E> m10894g() {
        return (cpc<E>) cpn.f13504a;
    }

    @Override // com.google.android.gms.internal.ads.cpb
    /* renamed from: a */
    public int mo10863a(Object[] objArr, int i) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            objArr[i + i2] = get(i2);
        }
        return i + size;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public cpc<E> subList(int i, int i2) {
        cor.m10938a(i, i2, size());
        int i3 = i2 - i;
        return i3 == size() ? this : i3 == 0 ? cpn.f13504a : new cph(this, i, i2 - i);
    }

    @Override // com.google.android.gms.internal.ads.cpb
    /* renamed from: a */
    public final cpy<E> mo10864a() {
        return (cpx) listIterator();
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

    @Override // com.google.android.gms.internal.ads.cpb, java.util.AbstractCollection, java.util.Collection
    public boolean contains(@NullableDecl Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // com.google.android.gms.internal.ads.cpb
    /* renamed from: e */
    public final cpc<E> mo10868e() {
        return this;
    }

    @Override // java.util.Collection, java.util.List
    public boolean equals(@NullableDecl Object obj) {
        boolean z;
        if (obj == cor.m10936a(this)) {
            z = true;
        } else {
            if (obj instanceof List) {
                List list = (List) obj;
                int size = size();
                if (size == list.size()) {
                    if ((this instanceof RandomAccess) && (list instanceof RandomAccess)) {
                        int i = 0;
                        while (true) {
                            z = true;
                            if (i < size) {
                                if (!C2871com.m10944a(get(i), list.get(i))) {
                                    break;
                                }
                                i++;
                            } else {
                                break;
                            }
                        }
                    } else {
                        cpc<E> cpcVar = this;
                        int size2 = cpcVar.size();
                        Iterator<E> it = list.iterator();
                        int i2 = 0;
                        while (true) {
                            if (i2 < size2) {
                                if (!it.hasNext()) {
                                    break;
                                }
                                i2++;
                                if (!C2871com.m10944a(cpcVar.get(i2), it.next())) {
                                    break;
                                }
                            } else if (!it.hasNext()) {
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
    public int hashCode() {
        int i = 1;
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            i = (((i * 31) + get(i2).hashCode()) ^ (-1)) ^ (-1);
        }
        return i;
    }

    @Override // java.util.List
    public int indexOf(@NullableDecl Object obj) {
        int i;
        int i2 = 0;
        if (obj != null) {
            if (!(this instanceof RandomAccess)) {
                ListIterator<E> listIterator = listIterator();
                while (true) {
                    i = -1;
                    if (listIterator.hasNext()) {
                        if (C2871com.m10944a(obj, listIterator.next())) {
                            i = listIterator.previousIndex();
                            break;
                        }
                    } else {
                        break;
                    }
                }
            } else {
                int size = size();
                if (obj == null) {
                    int i3 = 0;
                    while (true) {
                        i = -1;
                        if (i3 >= size) {
                            break;
                        } else if (get(i3) == null) {
                            i = i3;
                            break;
                        } else {
                            i3++;
                        }
                    }
                } else {
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
                }
            }
        } else {
            i = -1;
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.cpb, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public /* synthetic */ Iterator iterator() {
        return iterator();
    }

    @Override // java.util.List
    public int lastIndexOf(@NullableDecl Object obj) {
        int i;
        if (obj != null) {
            if (!(this instanceof RandomAccess)) {
                ListIterator<E> listIterator = listIterator(size());
                while (true) {
                    i = -1;
                    if (listIterator.hasPrevious()) {
                        if (C2871com.m10944a(obj, listIterator.previous())) {
                            i = listIterator.nextIndex();
                            break;
                        }
                    } else {
                        break;
                    }
                }
            } else if (obj == null) {
                int size = size() - 1;
                while (true) {
                    i = -1;
                    if (size < 0) {
                        break;
                    } else if (get(size) == null) {
                        i = size;
                        break;
                    } else {
                        size--;
                    }
                }
            } else {
                int size2 = size() - 1;
                while (true) {
                    i = -1;
                    if (size2 < 0) {
                        break;
                    } else if (obj.equals(get(size2))) {
                        i = size2;
                        break;
                    } else {
                        size2--;
                    }
                }
            }
        } else {
            i = -1;
        }
        return i;
    }

    @Override // java.util.List
    public /* synthetic */ ListIterator listIterator() {
        return (cpx) listIterator(0);
    }

    @Override // java.util.List
    public /* synthetic */ ListIterator listIterator(int i) {
        cor.m10932b(i, size());
        return isEmpty() ? f13486a : new cpe(this, i);
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
