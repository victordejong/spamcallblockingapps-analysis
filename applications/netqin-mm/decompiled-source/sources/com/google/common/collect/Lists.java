package com.google.common.collect;

import com.google.common.primitives.Ints;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.AbstractSequentialList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import p131c.p161d.p266c.p267a.AbstractC4920g;
import p131c.p161d.p266c.p267a.C4928k;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p269c.AbstractC4973d1;
import p131c.p161d.p266c.p269c.C5006n;
import p131c.p161d.p266c.p269c.C5008o;
import p131c.p161d.p266c.p272f.C5058c;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/Lists.class */
public final class Lists {

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Lists$OnePlusArrayList.class */
    public static class OnePlusArrayList<E> extends AbstractList<E> implements Serializable, RandomAccess {
        public static final long serialVersionUID = 0;
        public final E first;
        public final E[] rest;

        public OnePlusArrayList(E e, E[] eArr) {
            this.first = e;
            C4933n.m24795a(eArr);
            this.rest = eArr;
        }

        @Override // java.util.AbstractList, java.util.List
        public E get(int i) {
            C4933n.m24798a(i, size());
            return i == 0 ? this.first : this.rest[i - 1];
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return C5058c.m24584c(this.rest.length, 1);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Lists$StringAsImmutableList.class */
    public static final class StringAsImmutableList extends ImmutableList<Character> {
        public final String string;

        public StringAsImmutableList(String str) {
            this.string = str;
        }

        @Override // java.util.List
        public Character get(int i) {
            C4933n.m24798a(i, size());
            return Character.valueOf(this.string.charAt(i));
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public int indexOf(Object obj) {
            return obj instanceof Character ? this.string.indexOf(((Character) obj).charValue()) : -1;
        }

        @Override // com.google.common.collect.ImmutableCollection
        public boolean isPartialView() {
            return false;
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public int lastIndexOf(Object obj) {
            return obj instanceof Character ? this.string.lastIndexOf(((Character) obj).charValue()) : -1;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.string.length();
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public ImmutableList<Character> subList(int i, int i2) {
            C4933n.m24778b(i, i2, size());
            return Lists.m8228a(this.string.substring(i, i2));
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Lists$TransformingRandomAccessList.class */
    public static class TransformingRandomAccessList<F, T> extends AbstractList<T> implements RandomAccess, Serializable {
        public static final long serialVersionUID = 0;
        public final List<F> fromList;
        public final AbstractC4920g<? super F, ? extends T> function;

        /* renamed from: com.google.common.collect.Lists$TransformingRandomAccessList$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Lists$TransformingRandomAccessList$a.class */
        public class C7525a extends AbstractC4973d1<F, T> {
            public C7525a(ListIterator listIterator) {
                super(listIterator);
            }

            @Override // p131c.p161d.p266c.p269c.AbstractC4968c1
            /* renamed from: a */
            public T mo8028a(F f) {
                return (T) TransformingRandomAccessList.this.function.apply(f);
            }
        }

        public TransformingRandomAccessList(List<F> list, AbstractC4920g<? super F, ? extends T> gVar) {
            C4933n.m24795a(list);
            this.fromList = list;
            C4933n.m24795a(gVar);
            this.function = gVar;
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public void clear() {
            this.fromList.clear();
        }

        @Override // java.util.AbstractList, java.util.List
        public T get(int i) {
            return (T) this.function.apply((F) this.fromList.get(i));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return this.fromList.isEmpty();
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        public Iterator<T> iterator() {
            return listIterator();
        }

        @Override // java.util.AbstractList, java.util.List
        public ListIterator<T> listIterator(int i) {
            return new C7525a(this.fromList.listIterator(i));
        }

        @Override // java.util.AbstractList, java.util.List
        public T remove(int i) {
            return (T) this.function.apply((F) this.fromList.remove(i));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.fromList.size();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Lists$TransformingSequentialList.class */
    public static class TransformingSequentialList<F, T> extends AbstractSequentialList<T> implements Serializable {
        public static final long serialVersionUID = 0;
        public final List<F> fromList;
        public final AbstractC4920g<? super F, ? extends T> function;

        /* renamed from: com.google.common.collect.Lists$TransformingSequentialList$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Lists$TransformingSequentialList$a.class */
        public class C7526a extends AbstractC4973d1<F, T> {
            public C7526a(ListIterator listIterator) {
                super(listIterator);
            }

            @Override // p131c.p161d.p266c.p269c.AbstractC4968c1
            /* renamed from: a */
            public T mo8028a(F f) {
                return (T) TransformingSequentialList.this.function.apply(f);
            }
        }

        public TransformingSequentialList(List<F> list, AbstractC4920g<? super F, ? extends T> gVar) {
            C4933n.m24795a(list);
            this.fromList = list;
            C4933n.m24795a(gVar);
            this.function = gVar;
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public void clear() {
            this.fromList.clear();
        }

        @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
        public ListIterator<T> listIterator(int i) {
            return new C7526a(this.fromList.listIterator(i));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.fromList.size();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Lists$TwoPlusArrayList.class */
    public static class TwoPlusArrayList<E> extends AbstractList<E> implements Serializable, RandomAccess {
        public static final long serialVersionUID = 0;
        public final E first;
        public final E[] rest;
        public final E second;

        public TwoPlusArrayList(E e, E e2, E[] eArr) {
            this.first = e;
            this.second = e2;
            C4933n.m24795a(eArr);
            this.rest = eArr;
        }

        @Override // java.util.AbstractList, java.util.List
        public E get(int i) {
            if (i == 0) {
                return this.first;
            }
            if (i == 1) {
                return this.second;
            }
            C4933n.m24798a(i, size());
            return this.rest[i - 2];
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return C5058c.m24584c(this.rest.length, 2);
        }
    }

    /* renamed from: a */
    public static int m8231a(int i) {
        C5006n.m24663a(i, "arraySize");
        return Ints.m7808b(i + 5 + (i / 10));
    }

    /* renamed from: a */
    public static ImmutableList<Character> m8228a(String str) {
        C4933n.m24795a(str);
        return new StringAsImmutableList(str);
    }

    /* renamed from: a */
    public static <E> ArrayList<E> m8232a() {
        return new ArrayList<>();
    }

    /* renamed from: a */
    public static <E> ArrayList<E> m8230a(Iterable<? extends E> iterable) {
        C4933n.m24795a(iterable);
        return iterable instanceof Collection ? new ArrayList<>(C5008o.m24657a(iterable)) : m8227a(iterable.iterator());
    }

    /* renamed from: a */
    public static <E> ArrayList<E> m8227a(Iterator<? extends E> it) {
        ArrayList<E> a = m8232a();
        Iterators.m8267a(a, it);
        return a;
    }

    /* renamed from: a */
    public static <E> List<E> m8229a(E e, E[] eArr) {
        return new OnePlusArrayList(e, eArr);
    }

    /* renamed from: a */
    public static <F, T> List<T> m8226a(List<F> list, AbstractC4920g<? super F, ? extends T> gVar) {
        return list instanceof RandomAccess ? new TransformingRandomAccessList<>(list, gVar) : new TransformingSequentialList<>(list, gVar);
    }

    /* renamed from: a */
    public static boolean m8225a(List<?> list, Object obj) {
        C4933n.m24795a(list);
        if (obj == list) {
            return true;
        }
        if (!(obj instanceof List)) {
            return false;
        }
        List list2 = (List) obj;
        int size = list.size();
        if (size != list2.size()) {
            return false;
        }
        if (!(list instanceof RandomAccess) || !(list2 instanceof RandomAccess)) {
            return Iterators.m8260a(list.iterator(), (Iterator<?>) list2.iterator());
        }
        for (int i = 0; i < size; i++) {
            if (!C4928k.m24808a(list.get(i), list2.get(i))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    public static int m8223b(List<?> list, Object obj) {
        if (list instanceof RandomAccess) {
            return m8221c(list, obj);
        }
        ListIterator<?> listIterator = list.listIterator();
        while (listIterator.hasNext()) {
            if (C4928k.m24808a(obj, listIterator.next())) {
                return listIterator.previousIndex();
            }
        }
        return -1;
    }

    /* renamed from: b */
    public static <E> ArrayList<E> m8224b(int i) {
        C5006n.m24663a(i, "initialArraySize");
        return new ArrayList<>(i);
    }

    /* renamed from: c */
    public static int m8221c(List<?> list, Object obj) {
        int size = list.size();
        if (obj == null) {
            for (int i = 0; i < size; i++) {
                if (list.get(i) == null) {
                    return i;
                }
            }
            return -1;
        }
        for (int i2 = 0; i2 < size; i2++) {
            if (obj.equals(list.get(i2))) {
                return i2;
            }
        }
        return -1;
    }

    /* renamed from: c */
    public static <E> ArrayList<E> m8222c(int i) {
        return new ArrayList<>(m8231a(i));
    }

    /* renamed from: d */
    public static int m8220d(List<?> list, Object obj) {
        if (list instanceof RandomAccess) {
            return m8219e(list, obj);
        }
        ListIterator<?> listIterator = list.listIterator(list.size());
        while (listIterator.hasPrevious()) {
            if (C4928k.m24808a(obj, listIterator.previous())) {
                return listIterator.nextIndex();
            }
        }
        return -1;
    }

    /* renamed from: e */
    public static int m8219e(List<?> list, Object obj) {
        if (obj == null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                if (list.get(size) == null) {
                    return size;
                }
            }
            return -1;
        }
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            if (obj.equals(list.get(size2))) {
                return size2;
            }
        }
        return -1;
    }
}
