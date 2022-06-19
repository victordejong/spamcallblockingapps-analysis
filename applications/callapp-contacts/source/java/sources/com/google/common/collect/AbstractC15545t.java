package com.google.common.collect;

import com.google.common.base.C15391m;
import com.google.common.collect.AbstractC15549v;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.AbstractCollection;
import java.util.Arrays;
import java.util.Collection;
/* renamed from: com.google.common.collect.t */
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/t.class */
public abstract class AbstractC15545t<E> extends AbstractCollection<E> implements Serializable {

    /* renamed from: a */
    private static final Object[] f55847a = new Object[0];

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.common.collect.t$a */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/t$a.class */
    public static abstract class AbstractC15546a<E> extends AbstractC15547b<E> {

        /* renamed from: a */
        Object[] f55848a;

        /* renamed from: b */
        int f55849b = 0;

        /* renamed from: c */
        boolean f55850c;

        public AbstractC15546a(int i) {
            C15524i.m8781a(i, "initialCapacity");
            this.f55848a = new Object[i];
        }

        /* renamed from: a */
        public AbstractC15546a<E> mo8716a(E e) {
            C15391m.m8946a(e);
            int i = this.f55849b + 1;
            Object[] objArr = this.f55848a;
            if (objArr.length < i) {
                this.f55848a = Arrays.copyOf(objArr, m8730a(objArr.length, i));
                this.f55850c = false;
            } else if (this.f55850c) {
                this.f55848a = (Object[]) objArr.clone();
                this.f55850c = false;
            }
            Object[] objArr2 = this.f55848a;
            int i2 = this.f55849b;
            this.f55849b = i2 + 1;
            objArr2[i2] = e;
            return this;
        }
    }

    /* renamed from: com.google.common.collect.t$b */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/t$b.class */
    public static abstract class AbstractC15547b<E> {
        AbstractC15547b() {
        }

        /* renamed from: a */
        public static int m8730a(int i, int i2) {
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
    }

    /* renamed from: a */
    public int mo8667a(Object[] objArr, int i) {
        AbstractC15493ay<E> it2 = iterator();
        while (it2.hasNext()) {
            objArr[i] = it2.next();
            i++;
        }
        return i;
    }

    /* renamed from: a */
    public abstract AbstractC15493ay<E> iterator();

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
    public Object[] mo8712b() {
        return null;
    }

    /* renamed from: c */
    public int mo8711c() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public abstract boolean contains(Object obj);

    /* renamed from: d */
    int mo8710d() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: e */
    public AbstractC15549v<E> mo8656e() {
        return isEmpty() ? AbstractC15549v.m8720g() : AbstractC15549v.m8722b(toArray());
    }

    /* renamed from: f */
    public abstract boolean mo8666f();

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
        return toArray(f55847a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v21, types: [java.lang.Object[]] */
    @Override // java.util.AbstractCollection, java.util.Collection
    public final <T> T[] toArray(T[] tArr) {
        T[] tArr2;
        C15391m.m8946a(tArr);
        int size = size();
        if (tArr.length < size) {
            Object[] mo8712b = mo8712b();
            if (mo8712b != null) {
                return (T[]) Arrays.copyOfRange(mo8712b, mo8711c(), mo8710d(), tArr.getClass());
            }
            tArr2 = (Object[]) Array.newInstance(tArr.getClass().getComponentType(), size);
        } else {
            tArr2 = tArr;
            if (tArr.length > size) {
                tArr[size] = null;
                tArr2 = tArr;
            }
        }
        mo8667a(tArr2, 0);
        return tArr2;
    }

    Object writeReplace() {
        return new AbstractC15549v.C15552c(toArray());
    }
}
