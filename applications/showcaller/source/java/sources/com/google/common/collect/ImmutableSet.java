package com.google.common.collect;

import com.google.common.base.C8756j;
import com.google.common.collect.ImmutableCollection;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import java.util.SortedSet;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableSet.class */
public abstract class ImmutableSet<E> extends ImmutableCollection<E> implements Set<E> {

    /* renamed from: e */
    private transient ImmutableList<E> f38655e;

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableSet$SerializedForm.class */
    private static class SerializedForm implements Serializable {
        private static final long serialVersionUID = 0;
        final Object[] elements;

        SerializedForm(Object[] objArr) {
            this.elements = objArr;
        }

        Object readResolve() {
            return ImmutableSet.copyOf(this.elements);
        }
    }

    /* renamed from: com.google.common.collect.ImmutableSet$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableSet$a.class */
    public static class C8769a<E> extends ImmutableCollection.AbstractC8765a<E> {

        /* renamed from: d */
        Object[] f38656d;

        /* renamed from: e */
        private int f38657e;

        public C8769a() {
            super(4);
        }

        C8769a(int i) {
            super(i);
            this.f38656d = new Object[ImmutableSet.chooseTableSize(i)];
        }

        /* renamed from: h */
        private void m2720h(E e) {
            int length = this.f38656d.length;
            int hashCode = e.hashCode();
            int m2635a = C8809h.m2635a(hashCode);
            while (true) {
                int i = m2635a & (length - 1);
                Object[] objArr = this.f38656d;
                Object obj = objArr[i];
                if (obj == null) {
                    objArr[i] = e;
                    this.f38657e += hashCode;
                    super.m2755d(e);
                    return;
                } else if (obj.equals(e)) {
                    return;
                } else {
                    m2635a = i + 1;
                }
            }
        }

        /* renamed from: f */
        public C8769a<E> mo2723a(E e) {
            C8756j.m2789l(e);
            if (this.f38656d != null && ImmutableSet.chooseTableSize(this.f38648b) <= this.f38656d.length) {
                m2720h(e);
                return this;
            }
            this.f38656d = null;
            super.m2755d(e);
            return this;
        }

        /* renamed from: g */
        public C8769a<E> m2721g(Iterator<? extends E> it) {
            C8756j.m2789l(it);
            while (it.hasNext()) {
                mo2723a(it.next());
            }
            return this;
        }

        /* renamed from: i */
        public ImmutableSet<E> m2719i() {
            RegularImmutableSet regularImmutableSet;
            int i = this.f38648b;
            if (i != 0) {
                if (i == 1) {
                    return ImmutableSet.m2729of(this.f38647a[0]);
                }
                if (this.f38656d == null || ImmutableSet.chooseTableSize(i) != this.f38656d.length) {
                    regularImmutableSet = ImmutableSet.m2732c(this.f38648b, this.f38647a);
                    this.f38648b = regularImmutableSet.size();
                } else {
                    Object[] copyOf = ImmutableSet.m2731d(this.f38648b, this.f38647a.length) ? Arrays.copyOf(this.f38647a, this.f38648b) : this.f38647a;
                    int i2 = this.f38657e;
                    Object[] objArr = this.f38656d;
                    regularImmutableSet = new RegularImmutableSet(copyOf, i2, objArr, objArr.length - 1, this.f38648b);
                }
                this.f38649c = true;
                this.f38656d = null;
                return regularImmutableSet;
            }
            return ImmutableSet.m2730of();
        }
    }

    public static <E> C8769a<E> builder() {
        return new C8769a<>();
    }

    public static <E> C8769a<E> builderWithExpectedSize(int i) {
        C8804c.m2638a(i, "expectedSize");
        return new C8769a<>(i);
    }

    /* renamed from: c */
    public static <E> ImmutableSet<E> m2732c(int i, Object... objArr) {
        if (i != 0) {
            if (i == 1) {
                return m2729of(objArr[0]);
            }
            int chooseTableSize = chooseTableSize(i);
            Object[] objArr2 = new Object[chooseTableSize];
            int i2 = chooseTableSize - 1;
            int i3 = 0;
            int i4 = 0;
            for (int i5 = 0; i5 < i; i5++) {
                Object m2608a = C8817m.m2608a(objArr[i5], i5);
                int hashCode = m2608a.hashCode();
                int m2635a = C8809h.m2635a(hashCode);
                while (true) {
                    int i6 = m2635a & i2;
                    Object obj = objArr2[i6];
                    if (obj == null) {
                        objArr[i4] = m2608a;
                        objArr2[i6] = m2608a;
                        i3 += hashCode;
                        i4++;
                        break;
                    } else if (obj.equals(m2608a)) {
                        break;
                    } else {
                        m2635a++;
                    }
                }
            }
            Arrays.fill(objArr, i4, i, (Object) null);
            if (i4 == 1) {
                return new SingletonImmutableSet(objArr[0], i3);
            }
            if (chooseTableSize(i4) < chooseTableSize / 2) {
                return m2732c(i4, objArr);
            }
            Object[] objArr3 = objArr;
            if (m2731d(i4, objArr.length)) {
                objArr3 = Arrays.copyOf(objArr, i4);
            }
            return new RegularImmutableSet(objArr3, i3, objArr2, i2, i4);
        }
        return m2730of();
    }

    static int chooseTableSize(int i) {
        int max = Math.max(i, 2);
        boolean z = true;
        if (max >= 751619276) {
            if (max >= 1073741824) {
                z = false;
            }
            C8756j.m2796e(z, "collection too large");
            return 1073741824;
        }
        int highestOneBit = Integer.highestOneBit(max - 1);
        while (true) {
            int i2 = highestOneBit << 1;
            if (i2 * 0.7d >= max) {
                return i2;
            }
            highestOneBit = i2;
        }
    }

    public static <E> ImmutableSet<E> copyOf(Iterable<? extends E> iterable) {
        return iterable instanceof Collection ? copyOf((Collection) iterable) : copyOf(iterable.iterator());
    }

    public static <E> ImmutableSet<E> copyOf(Collection<? extends E> collection) {
        if ((collection instanceof ImmutableSet) && !(collection instanceof SortedSet)) {
            ImmutableSet<E> immutableSet = (ImmutableSet) collection;
            if (!immutableSet.isPartialView()) {
                return immutableSet;
            }
        }
        Object[] array = collection.toArray();
        return m2732c(array.length, array);
    }

    public static <E> ImmutableSet<E> copyOf(Iterator<? extends E> it) {
        if (!it.hasNext()) {
            return m2730of();
        }
        E next = it.next();
        return !it.hasNext() ? m2729of((Object) next) : new C8769a().mo2723a(next).m2721g(it).m2719i();
    }

    public static <E> ImmutableSet<E> copyOf(E[] eArr) {
        int length = eArr.length;
        return length != 0 ? length != 1 ? m2732c(eArr.length, (Object[]) eArr.clone()) : m2729of((Object) eArr[0]) : m2730of();
    }

    /* renamed from: d */
    public static boolean m2731d(int i, int i2) {
        return i < (i2 >> 1) + (i2 >> 2);
    }

    /* renamed from: of */
    public static <E> ImmutableSet<E> m2730of() {
        return RegularImmutableSet.f38714f;
    }

    /* renamed from: of */
    public static <E> ImmutableSet<E> m2729of(E e) {
        return new SingletonImmutableSet(e);
    }

    /* renamed from: of */
    public static <E> ImmutableSet<E> m2728of(E e, E e2) {
        return m2732c(2, e, e2);
    }

    /* renamed from: of */
    public static <E> ImmutableSet<E> m2727of(E e, E e2, E e3) {
        return m2732c(3, e, e2, e3);
    }

    /* renamed from: of */
    public static <E> ImmutableSet<E> m2726of(E e, E e2, E e3, E e4) {
        return m2732c(4, e, e2, e3, e4);
    }

    /* renamed from: of */
    public static <E> ImmutableSet<E> m2725of(E e, E e2, E e3, E e4, E e5) {
        return m2732c(5, e, e2, e3, e4, e5);
    }

    @SafeVarargs
    /* renamed from: of */
    public static <E> ImmutableSet<E> m2724of(E e, E e2, E e3, E e4, E e5, E e6, E... eArr) {
        C8756j.m2796e(eArr.length <= 2147483641, "the total number of elements must fit in an int");
        int length = eArr.length + 6;
        Object[] objArr = new Object[length];
        objArr[0] = e;
        objArr[1] = e2;
        objArr[2] = e3;
        objArr[3] = e4;
        objArr[4] = e5;
        objArr[5] = e6;
        System.arraycopy(eArr, 0, objArr, 6, eArr.length);
        return m2732c(length, objArr);
    }

    @Override // com.google.common.collect.ImmutableCollection
    public ImmutableList<E> asList() {
        ImmutableList<E> immutableList = this.f38655e;
        ImmutableList<E> immutableList2 = immutableList;
        if (immutableList == null) {
            immutableList2 = createAsList();
            this.f38655e = immutableList2;
        }
        return immutableList2;
    }

    ImmutableList<E> createAsList() {
        return ImmutableList.asImmutableList(toArray());
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof ImmutableSet) && isHashCodeFast() && ((ImmutableSet) obj).isHashCodeFast() && hashCode() != obj.hashCode()) {
            return false;
        }
        return C8819o.m2602a(this, obj);
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return C8819o.m2601b(this);
    }

    boolean isHashCodeFast() {
        return false;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public abstract AbstractC8821q<E> iterator();

    @Override // com.google.common.collect.ImmutableCollection
    Object writeReplace() {
        return new SerializedForm(toArray());
    }
}
