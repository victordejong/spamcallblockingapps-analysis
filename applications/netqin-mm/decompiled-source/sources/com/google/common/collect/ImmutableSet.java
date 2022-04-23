package com.google.common.collect;

import com.google.common.collect.ImmutableCollection;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import java.util.SortedSet;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p269c.AbstractC4978e1;
import p131c.p161d.p266c.p269c.C4980f0;
import p131c.p161d.p266c.p269c.C5000k0;
import p131c.p161d.p266c.p269c.C5006n;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableSet.class */
public abstract class ImmutableSet<E> extends ImmutableCollection<E> implements Set<E> {
    public static final int CUTOFF = 751619276;
    public static final double DESIRED_LOAD_FACTOR = 0.7d;
    public static final int MAX_TABLE_SIZE = 1073741824;
    public transient ImmutableList<E> asList;

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableSet$SerializedForm.class */
    public static class SerializedForm implements Serializable {
        public static final long serialVersionUID = 0;
        public final Object[] elements;

        public SerializedForm(Object[] objArr) {
            this.elements = objArr;
        }

        public Object readResolve() {
            return ImmutableSet.copyOf(this.elements);
        }
    }

    /* renamed from: com.google.common.collect.ImmutableSet$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableSet$a.class */
    public static class C7492a<E> extends ImmutableCollection.AbstractC7466a<E> {

        /* renamed from: d */
        public Object[] f30567d;

        /* renamed from: e */
        public int f30568e;

        public C7492a() {
            super(4);
        }

        public C7492a(int i) {
            super(i);
            this.f30567d = new Object[ImmutableSet.chooseTableSize(i)];
        }

        @Override // com.google.common.collect.ImmutableCollection.AbstractC7466a, com.google.common.collect.ImmutableCollection.AbstractC7467b
        /* renamed from: a */
        public C7492a<E> mo8284a(E e) {
            C4933n.m24795a(e);
            if (this.f30567d == null || ImmutableSet.chooseTableSize(this.f30529b) > this.f30567d.length) {
                this.f30567d = null;
                super.mo8284a((C7492a<E>) e);
                return this;
            }
            m8342b(e);
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.ImmutableCollection.AbstractC7467b
        /* renamed from: a */
        public C7492a<E> mo8283a(Iterator<? extends E> it) {
            C4933n.m24795a(it);
            while (it.hasNext()) {
                mo8284a((C7492a<E>) it.next());
            }
            return this;
        }

        @Override // com.google.common.collect.ImmutableCollection.AbstractC7466a, com.google.common.collect.ImmutableCollection.AbstractC7467b
        /* renamed from: a */
        public C7492a<E> mo8282a(E... eArr) {
            if (this.f30567d != null) {
                for (E e : eArr) {
                    mo8284a((C7492a<E>) e);
                }
            } else {
                super.mo8282a((Object[]) eArr);
            }
            return this;
        }

        /* renamed from: a */
        public ImmutableSet<E> mo8285a() {
            ImmutableSet<E> immutableSet;
            int i = this.f30529b;
            if (i == 0) {
                return ImmutableSet.m8349of();
            }
            if (i == 1) {
                return ImmutableSet.m8348of(this.f30528a[0]);
            }
            if (this.f30567d == null || ImmutableSet.chooseTableSize(i) != this.f30567d.length) {
                immutableSet = ImmutableSet.construct(this.f30529b, this.f30528a);
                this.f30529b = immutableSet.size();
            } else {
                Object[] copyOf = ImmutableSet.shouldTrim(this.f30529b, this.f30528a.length) ? Arrays.copyOf(this.f30528a, this.f30529b) : this.f30528a;
                int i2 = this.f30568e;
                Object[] objArr = this.f30567d;
                immutableSet = new RegularImmutableSet<>(copyOf, i2, objArr, objArr.length - 1, this.f30529b);
            }
            this.f30530c = true;
            this.f30567d = null;
            return immutableSet;
        }

        /* renamed from: b */
        public final void m8342b(E e) {
            int length = this.f30567d.length;
            int hashCode = e.hashCode();
            int a = C4980f0.m24729a(hashCode);
            while (true) {
                int i = a & (length - 1);
                Object[] objArr = this.f30567d;
                Object obj = objArr[i];
                if (obj == null) {
                    objArr[i] = e;
                    this.f30568e += hashCode;
                    super.mo8284a((C7492a<E>) e);
                    return;
                } else if (!obj.equals(e)) {
                    a = i + 1;
                } else {
                    return;
                }
            }
        }
    }

    public static <E> C7492a<E> builder() {
        return new C7492a<>();
    }

    public static <E> C7492a<E> builderWithExpectedSize(int i) {
        C5006n.m24663a(i, "expectedSize");
        return new C7492a<>(i);
    }

    public static int chooseTableSize(int i) {
        int max = Math.max(i, 2);
        boolean z = true;
        if (max < 751619276) {
            int highestOneBit = Integer.highestOneBit(max - 1);
            while (true) {
                int i2 = highestOneBit << 1;
                double d = i2;
                Double.isNaN(d);
                if (d * 0.7d >= max) {
                    return i2;
                }
                highestOneBit = i2;
            }
        } else {
            if (max >= 1073741824) {
                z = false;
            }
            C4933n.m24790a(z, "collection too large");
            return 1073741824;
        }
    }

    public static <E> ImmutableSet<E> construct(int i, Object... objArr) {
        if (i == 0) {
            return m8349of();
        }
        if (i == 1) {
            return m8348of(objArr[0]);
        }
        int chooseTableSize = chooseTableSize(i);
        Object[] objArr2 = new Object[chooseTableSize];
        int i2 = chooseTableSize - 1;
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < i; i5++) {
            Object obj = objArr[i5];
            C5000k0.m24709a(obj, i5);
            int hashCode = obj.hashCode();
            int a = C4980f0.m24729a(hashCode);
            while (true) {
                int i6 = a & i2;
                Object obj2 = objArr2[i6];
                if (obj2 == null) {
                    objArr[i4] = obj;
                    objArr2[i6] = obj;
                    i3 += hashCode;
                    i4++;
                    break;
                } else if (obj2.equals(obj)) {
                    break;
                } else {
                    a++;
                }
            }
        }
        Arrays.fill(objArr, i4, i, (Object) null);
        if (i4 == 1) {
            return new SingletonImmutableSet(objArr[0], i3);
        }
        if (chooseTableSize(i4) < chooseTableSize / 2) {
            return construct(i4, objArr);
        }
        Object[] objArr3 = objArr;
        if (shouldTrim(i4, objArr.length)) {
            objArr3 = Arrays.copyOf(objArr, i4);
        }
        return new RegularImmutableSet(objArr3, i3, objArr2, i2, i4);
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
        return construct(array.length, array);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <E> ImmutableSet<E> copyOf(Iterator<? extends E> it) {
        if (!it.hasNext()) {
            return m8349of();
        }
        Object next = it.next();
        if (!it.hasNext()) {
            return m8348of(next);
        }
        C7492a aVar = new C7492a();
        aVar.mo8284a((C7492a) next);
        aVar.mo8283a((Iterator) it);
        return aVar.mo8285a();
    }

    public static <E> ImmutableSet<E> copyOf(E[] eArr) {
        int length = eArr.length;
        return length != 0 ? length != 1 ? construct(eArr.length, (Object[]) eArr.clone()) : m8348of((Object) eArr[0]) : m8349of();
    }

    /* renamed from: of */
    public static <E> ImmutableSet<E> m8349of() {
        return RegularImmutableSet.EMPTY;
    }

    /* renamed from: of */
    public static <E> ImmutableSet<E> m8348of(E e) {
        return new SingletonImmutableSet(e);
    }

    /* renamed from: of */
    public static <E> ImmutableSet<E> m8347of(E e, E e2) {
        return construct(2, e, e2);
    }

    /* renamed from: of */
    public static <E> ImmutableSet<E> m8346of(E e, E e2, E e3) {
        return construct(3, e, e2, e3);
    }

    /* renamed from: of */
    public static <E> ImmutableSet<E> m8345of(E e, E e2, E e3, E e4) {
        return construct(4, e, e2, e3, e4);
    }

    /* renamed from: of */
    public static <E> ImmutableSet<E> m8344of(E e, E e2, E e3, E e4, E e5) {
        return construct(5, e, e2, e3, e4, e5);
    }

    @SafeVarargs
    /* renamed from: of */
    public static <E> ImmutableSet<E> m8343of(E e, E e2, E e3, E e4, E e5, E e6, E... eArr) {
        C4933n.m24790a(eArr.length <= 2147483641, "the total number of elements must fit in an int");
        int length = eArr.length + 6;
        Object[] objArr = new Object[length];
        objArr[0] = e;
        objArr[1] = e2;
        objArr[2] = e3;
        objArr[3] = e4;
        objArr[4] = e5;
        objArr[5] = e6;
        System.arraycopy(eArr, 0, objArr, 6, eArr.length);
        return construct(length, objArr);
    }

    public static boolean shouldTrim(int i, int i2) {
        return i < (i2 >> 1) + (i2 >> 2);
    }

    @Override // com.google.common.collect.ImmutableCollection
    public ImmutableList<E> asList() {
        ImmutableList<E> immutableList = this.asList;
        ImmutableList<E> immutableList2 = immutableList;
        if (immutableList == null) {
            immutableList2 = createAsList();
            this.asList = immutableList2;
        }
        return immutableList2;
    }

    public ImmutableList<E> createAsList() {
        return ImmutableList.asImmutableList(toArray());
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ImmutableSet) || !isHashCodeFast() || !((ImmutableSet) obj).isHashCodeFast() || hashCode() == obj.hashCode()) {
            return Sets.m8060a(this, obj);
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return Sets.m8061a(this);
    }

    public boolean isHashCodeFast() {
        return false;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
    public abstract AbstractC4978e1<E> iterator();

    @Override // com.google.common.collect.ImmutableCollection
    public Object writeReplace() {
        return new SerializedForm(toArray());
    }
}
