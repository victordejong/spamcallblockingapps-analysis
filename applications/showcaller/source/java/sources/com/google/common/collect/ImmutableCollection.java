package com.google.common.collect;

import com.google.common.base.C8756j;
import com.google.common.collect.ImmutableList;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableCollection.class */
public abstract class ImmutableCollection<E> extends AbstractCollection<E> implements Serializable {

    /* renamed from: d */
    private static final Object[] f38646d = new Object[0];

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.common.collect.ImmutableCollection$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableCollection$a.class */
    public static abstract class AbstractC8765a<E> extends AbstractC8766b<E> {

        /* renamed from: a */
        Object[] f38647a;

        /* renamed from: b */
        int f38648b = 0;

        /* renamed from: c */
        boolean f38649c;

        public AbstractC8765a(int i) {
            C8804c.m2638a(i, "initialCapacity");
            this.f38647a = new Object[i];
        }

        /* renamed from: e */
        private void m2754e(int i) {
            Object[] objArr = this.f38647a;
            if (objArr.length < i) {
                this.f38647a = Arrays.copyOf(objArr, AbstractC8766b.m2752c(objArr.length, i));
                this.f38649c = false;
            } else if (!this.f38649c) {
            } else {
                this.f38647a = (Object[]) objArr.clone();
                this.f38649c = false;
            }
        }

        /* renamed from: d */
        public AbstractC8765a<E> m2755d(E e) {
            C8756j.m2789l(e);
            m2754e(this.f38648b + 1);
            Object[] objArr = this.f38647a;
            int i = this.f38648b;
            this.f38648b = i + 1;
            objArr[i] = e;
            return this;
        }
    }

    /* renamed from: com.google.common.collect.ImmutableCollection$b */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableCollection$b.class */
    public static abstract class AbstractC8766b<E> {
        AbstractC8766b() {
        }

        /* renamed from: c */
        static int m2752c(int i, int i2) {
            if (i2 >= 0) {
                int i3 = i + (i >> 1) + 1;
                int i4 = i3;
                if (i3 < i2) {
                    i4 = Integer.highestOneBit(i2 - 1) << 1;
                }
                int i5 = i4;
                if (i4 < 0) {
                    i5 = Integer.MAX_VALUE;
                }
                return i5;
            }
            throw new AssertionError("cannot store more than MAX_VALUE elements");
        }

        /* renamed from: a */
        public abstract AbstractC8766b<E> mo2723a(E e);

        /* renamed from: b */
        public AbstractC8766b<E> m2753b(Iterator<? extends E> it) {
            while (it.hasNext()) {
                mo2723a(it.next());
            }
            return this;
        }
    }

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

    public ImmutableList<E> asList() {
        return isEmpty() ? ImmutableList.m2750of() : ImmutableList.asImmutableList(toArray());
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public abstract boolean contains(Object obj);

    int copyIntoArray(Object[] objArr, int i) {
        AbstractC8821q<E> it = iterator();
        while (it.hasNext()) {
            objArr[i] = it.next();
            i++;
        }
        return i;
    }

    public Object[] internalArray() {
        return null;
    }

    int internalArrayEnd() {
        throw new UnsupportedOperationException();
    }

    public int internalArrayStart() {
        throw new UnsupportedOperationException();
    }

    public abstract boolean isPartialView();

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public abstract AbstractC8821q<E> iterator();

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
        return toArray(f38646d);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [java.lang.Object[]] */
    @Override // java.util.AbstractCollection, java.util.Collection
    public final <T> T[] toArray(T[] tArr) {
        T[] tArr2;
        C8756j.m2789l(tArr);
        int size = size();
        if (tArr.length < size) {
            Object[] internalArray = internalArray();
            if (internalArray != null) {
                return (T[]) C8818n.m2604a(internalArray, internalArrayStart(), internalArrayEnd(), tArr);
            }
            tArr2 = C8817m.m2605d(tArr, size);
        } else {
            tArr2 = tArr;
            if (tArr.length > size) {
                tArr[size] = null;
                tArr2 = tArr;
            }
        }
        copyIntoArray(tArr2, 0);
        return tArr2;
    }

    Object writeReplace() {
        return new ImmutableList.SerializedForm(toArray());
    }
}
