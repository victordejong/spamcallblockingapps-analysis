package com.google.common.collect;

import com.google.common.base.C8756j;
import com.google.common.collect.ImmutableCollection;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableList.class */
public abstract class ImmutableList<E> extends ImmutableCollection<E> implements List<E>, RandomAccess {

    /* renamed from: e */
    private static final AbstractC8822r<Object> f38650e = new C8768b(RegularImmutableList.f38711f, 0);

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableList$ReverseImmutableList.class */
    public static class ReverseImmutableList<E> extends ImmutableList<E> {

        /* renamed from: f */
        private final transient ImmutableList<E> f38651f;

        ReverseImmutableList(ImmutableList<E> immutableList) {
            this.f38651f = immutableList;
        }

        /* renamed from: d */
        private int m2737d(int i) {
            return (size() - 1) - i;
        }

        /* renamed from: e */
        private int m2736e(int i) {
            return size() - i;
        }

        @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return this.f38651f.contains(obj);
        }

        @Override // java.util.List
        public E get(int i) {
            C8756j.m2791j(i, size());
            return this.f38651f.get(m2737d(i));
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public int indexOf(Object obj) {
            int lastIndexOf = this.f38651f.lastIndexOf(obj);
            return lastIndexOf >= 0 ? m2737d(lastIndexOf) : -1;
        }

        @Override // com.google.common.collect.ImmutableCollection
        public boolean isPartialView() {
            return this.f38651f.isPartialView();
        }

        @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public /* bridge */ /* synthetic */ Iterator iterator() {
            return ImmutableList.super.iterator();
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public int lastIndexOf(Object obj) {
            int indexOf = this.f38651f.indexOf(obj);
            return indexOf >= 0 ? m2737d(indexOf) : -1;
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public /* bridge */ /* synthetic */ ListIterator listIterator() {
            return ImmutableList.super.listIterator();
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public /* bridge */ /* synthetic */ ListIterator listIterator(int i) {
            return ImmutableList.super.listIterator(i);
        }

        @Override // com.google.common.collect.ImmutableList
        public ImmutableList<E> reverse() {
            return this.f38651f;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f38651f.size();
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public ImmutableList<E> subList(int i, int i2) {
            C8756j.m2784q(i, i2, size());
            return this.f38651f.subList(m2736e(i2), m2736e(i)).reverse();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableList$SerializedForm.class */
    static class SerializedForm implements Serializable {
        private static final long serialVersionUID = 0;
        final Object[] elements;

        public SerializedForm(Object[] objArr) {
            this.elements = objArr;
        }

        Object readResolve() {
            return ImmutableList.copyOf(this.elements);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableList$SubList.class */
    public class SubList extends ImmutableList<E> {

        /* renamed from: f */
        final transient int f38652f;

        /* renamed from: g */
        final transient int f38653g;

        SubList(int i, int i2) {
            ImmutableList.this = r4;
            this.f38652f = i;
            this.f38653g = i2;
        }

        @Override // java.util.List
        public E get(int i) {
            C8756j.m2791j(i, this.f38653g);
            return ImmutableList.this.get(i + this.f38652f);
        }

        @Override // com.google.common.collect.ImmutableCollection
        public Object[] internalArray() {
            return ImmutableList.this.internalArray();
        }

        @Override // com.google.common.collect.ImmutableCollection
        int internalArrayEnd() {
            return ImmutableList.this.internalArrayStart() + this.f38652f + this.f38653g;
        }

        @Override // com.google.common.collect.ImmutableCollection
        public int internalArrayStart() {
            return ImmutableList.this.internalArrayStart() + this.f38652f;
        }

        @Override // com.google.common.collect.ImmutableCollection
        public boolean isPartialView() {
            return true;
        }

        @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public /* bridge */ /* synthetic */ Iterator iterator() {
            return ImmutableList.super.iterator();
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public /* bridge */ /* synthetic */ ListIterator listIterator() {
            return ImmutableList.super.listIterator();
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public /* bridge */ /* synthetic */ ListIterator listIterator(int i) {
            return ImmutableList.super.listIterator(i);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f38653g;
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public ImmutableList<E> subList(int i, int i2) {
            C8756j.m2784q(i, i2, this.f38653g);
            ImmutableList immutableList = ImmutableList.this;
            int i3 = this.f38652f;
            return immutableList.subList(i + i3, i2 + i3);
        }
    }

    /* renamed from: com.google.common.collect.ImmutableList$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableList$a.class */
    public static final class C8767a<E> extends ImmutableCollection.AbstractC8765a<E> {
        public C8767a() {
            this(4);
        }

        C8767a(int i) {
            super(i);
        }

        /* renamed from: f */
        public C8767a<E> mo2723a(E e) {
            super.m2755d(e);
            return this;
        }

        /* renamed from: g */
        public C8767a<E> m2734g(Iterator<? extends E> it) {
            super.m2753b(it);
            return this;
        }

        /* renamed from: h */
        public ImmutableList<E> m2733h() {
            this.f38649c = true;
            return ImmutableList.asImmutableList(this.f38647a, this.f38648b);
        }
    }

    /* renamed from: com.google.common.collect.ImmutableList$b */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableList$b.class */
    public static class C8768b<E> extends AbstractC8802a<E> {

        /* renamed from: f */
        private final ImmutableList<E> f38654f;

        C8768b(ImmutableList<E> immutableList, int i) {
            super(immutableList.size(), i);
            this.f38654f = immutableList;
        }

        @Override // com.google.common.collect.AbstractC8802a
        /* renamed from: a */
        protected E mo2639a(int i) {
            return this.f38654f.get(i);
        }
    }

    public static <E> ImmutableList<E> asImmutableList(Object[] objArr) {
        return asImmutableList(objArr, objArr.length);
    }

    public static <E> ImmutableList<E> asImmutableList(Object[] objArr, int i) {
        return i == 0 ? m2750of() : new RegularImmutableList(objArr, i);
    }

    public static <E> C8767a<E> builder() {
        return new C8767a<>();
    }

    public static <E> C8767a<E> builderWithExpectedSize(int i) {
        C8804c.m2638a(i, "expectedSize");
        return new C8767a<>(i);
    }

    /* renamed from: c */
    private static <E> ImmutableList<E> m2751c(Object... objArr) {
        return asImmutableList(C8817m.m2607b(objArr));
    }

    public static <E> ImmutableList<E> copyOf(Iterable<? extends E> iterable) {
        C8756j.m2789l(iterable);
        return iterable instanceof Collection ? copyOf((Collection) iterable) : copyOf(iterable.iterator());
    }

    public static <E> ImmutableList<E> copyOf(Collection<? extends E> collection) {
        if (collection instanceof ImmutableCollection) {
            ImmutableList<E> asList = ((ImmutableCollection) collection).asList();
            ImmutableList<E> immutableList = asList;
            if (asList.isPartialView()) {
                immutableList = asImmutableList(asList.toArray());
            }
            return immutableList;
        }
        return m2751c(collection.toArray());
    }

    public static <E> ImmutableList<E> copyOf(Iterator<? extends E> it) {
        if (!it.hasNext()) {
            return m2750of();
        }
        E next = it.next();
        return !it.hasNext() ? m2749of((Object) next) : new C8767a().mo2723a(next).m2734g(it).m2733h();
    }

    public static <E> ImmutableList<E> copyOf(E[] eArr) {
        return eArr.length == 0 ? m2750of() : m2751c((Object[]) eArr.clone());
    }

    /* renamed from: of */
    public static <E> ImmutableList<E> m2750of() {
        return (ImmutableList<E>) RegularImmutableList.f38711f;
    }

    /* renamed from: of */
    public static <E> ImmutableList<E> m2749of(E e) {
        return m2751c(e);
    }

    /* renamed from: of */
    public static <E> ImmutableList<E> m2748of(E e, E e2) {
        return m2751c(e, e2);
    }

    /* renamed from: of */
    public static <E> ImmutableList<E> m2747of(E e, E e2, E e3) {
        return m2751c(e, e2, e3);
    }

    /* renamed from: of */
    public static <E> ImmutableList<E> m2746of(E e, E e2, E e3, E e4) {
        return m2751c(e, e2, e3, e4);
    }

    /* renamed from: of */
    public static <E> ImmutableList<E> m2745of(E e, E e2, E e3, E e4, E e5) {
        return m2751c(e, e2, e3, e4, e5);
    }

    /* renamed from: of */
    public static <E> ImmutableList<E> m2744of(E e, E e2, E e3, E e4, E e5, E e6) {
        return m2751c(e, e2, e3, e4, e5, e6);
    }

    /* renamed from: of */
    public static <E> ImmutableList<E> m2743of(E e, E e2, E e3, E e4, E e5, E e6, E e7) {
        return m2751c(e, e2, e3, e4, e5, e6, e7);
    }

    /* renamed from: of */
    public static <E> ImmutableList<E> m2742of(E e, E e2, E e3, E e4, E e5, E e6, E e7, E e8) {
        return m2751c(e, e2, e3, e4, e5, e6, e7, e8);
    }

    /* renamed from: of */
    public static <E> ImmutableList<E> m2741of(E e, E e2, E e3, E e4, E e5, E e6, E e7, E e8, E e9) {
        return m2751c(e, e2, e3, e4, e5, e6, e7, e8, e9);
    }

    /* renamed from: of */
    public static <E> ImmutableList<E> m2740of(E e, E e2, E e3, E e4, E e5, E e6, E e7, E e8, E e9, E e10) {
        return m2751c(e, e2, e3, e4, e5, e6, e7, e8, e9, e10);
    }

    /* renamed from: of */
    public static <E> ImmutableList<E> m2739of(E e, E e2, E e3, E e4, E e5, E e6, E e7, E e8, E e9, E e10, E e11) {
        return m2751c(e, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11);
    }

    @SafeVarargs
    /* renamed from: of */
    public static <E> ImmutableList<E> m2738of(E e, E e2, E e3, E e4, E e5, E e6, E e7, E e8, E e9, E e10, E e11, E e12, E... eArr) {
        C8756j.m2796e(eArr.length <= 2147483635, "the total number of elements must fit in an int");
        Object[] objArr = new Object[eArr.length + 12];
        objArr[0] = e;
        objArr[1] = e2;
        objArr[2] = e3;
        objArr[3] = e4;
        objArr[4] = e5;
        objArr[5] = e6;
        objArr[6] = e7;
        objArr[7] = e8;
        objArr[8] = e9;
        objArr[9] = e10;
        objArr[10] = e11;
        objArr[11] = e12;
        System.arraycopy(eArr, 0, objArr, 12, eArr.length);
        return m2751c(objArr);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Use SerializedForm");
    }

    public static <E extends Comparable<? super E>> ImmutableList<E> sortedCopyOf(Iterable<? extends E> iterable) {
        Comparable[] comparableArr = (Comparable[]) C8810i.m2631c(iterable, new Comparable[0]);
        C8817m.m2607b(comparableArr);
        Arrays.sort(comparableArr);
        return asImmutableList(comparableArr);
    }

    public static <E> ImmutableList<E> sortedCopyOf(Comparator<? super E> comparator, Iterable<? extends E> iterable) {
        C8756j.m2789l(comparator);
        Object[] m2632b = C8810i.m2632b(iterable);
        C8817m.m2607b(m2632b);
        Arrays.sort(m2632b, comparator);
        return asImmutableList(m2632b);
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

    @Override // com.google.common.collect.ImmutableCollection
    public final ImmutableList<E> asList() {
        return this;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // com.google.common.collect.ImmutableCollection
    int copyIntoArray(Object[] objArr, int i) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            objArr[i + i2] = get(i2);
        }
        return i + size;
    }

    @Override // java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        return C8813k.m2625a(this, obj);
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
        return obj == null ? -1 : C8813k.m2624b(this, obj);
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public AbstractC8821q<E> iterator() {
        return listIterator();
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        return obj == null ? -1 : C8813k.m2622d(this, obj);
    }

    @Override // java.util.List
    public AbstractC8822r<E> listIterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    public AbstractC8822r<E> listIterator(int i) {
        C8756j.m2786o(i, size());
        return isEmpty() ? (AbstractC8822r<E>) f38650e : new C8768b(this, i);
    }

    @Override // java.util.List
    @Deprecated
    public final E remove(int i) {
        throw new UnsupportedOperationException();
    }

    public ImmutableList<E> reverse() {
        return size() <= 1 ? this : new ReverseImmutableList(this);
    }

    @Override // java.util.List
    @Deprecated
    public final E set(int i, E e) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    public ImmutableList<E> subList(int i, int i2) {
        C8756j.m2784q(i, i2, size());
        int i3 = i2 - i;
        return i3 == size() ? this : i3 == 0 ? m2750of() : subListUnchecked(i, i2);
    }

    ImmutableList<E> subListUnchecked(int i, int i2) {
        return new SubList(i, i2 - i);
    }

    @Override // com.google.common.collect.ImmutableCollection
    Object writeReplace() {
        return new SerializedForm(toArray());
    }
}
