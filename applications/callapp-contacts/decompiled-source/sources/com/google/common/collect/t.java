package com.google.common.collect;

import com.google.common.base.m;
import com.google.common.collect.v;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.AbstractCollection;
import java.util.Arrays;
import java.util.Collection;
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/t.class */
public abstract class t<E> extends AbstractCollection<E> implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private static final Object[] f32107a = new Object[0];

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/t$a.class */
    static abstract class a<E> extends b<E> {

        /* renamed from: a  reason: collision with root package name */
        Object[] f32108a;

        /* renamed from: b  reason: collision with root package name */
        int f32109b = 0;

        /* renamed from: c  reason: collision with root package name */
        boolean f32110c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(int i) {
            i.a(i, "initialCapacity");
            this.f32108a = new Object[i];
        }

        public a<E> a(E e) {
            m.a(e);
            int i = this.f32109b + 1;
            Object[] objArr = this.f32108a;
            if (objArr.length < i) {
                this.f32108a = Arrays.copyOf(objArr, a(objArr.length, i));
                this.f32110c = false;
            } else if (this.f32110c) {
                this.f32108a = (Object[]) objArr.clone();
                this.f32110c = false;
            }
            Object[] objArr2 = this.f32108a;
            int i2 = this.f32109b;
            this.f32109b = i2 + 1;
            objArr2[i2] = e;
            return this;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/t$b.class */
    public static abstract class b<E> {
        b() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static int a(int i, int i2) {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a(Object[] objArr, int i) {
        ay<E> a2 = iterator();
        while (a2.hasNext()) {
            objArr[i] = a2.next();
            i++;
        }
        return i;
    }

    /* renamed from: a */
    public abstract ay<E> iterator();

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

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object[] b() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int c() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public abstract boolean contains(Object obj);

    int d() {
        throw new UnsupportedOperationException();
    }

    public v<E> e() {
        return isEmpty() ? v.g() : v.b(toArray());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean f();

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
        return toArray(f32107a);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final <T> T[] toArray(T[] tArr) {
        T[] tArr2;
        m.a(tArr);
        int size = size();
        if (tArr.length < size) {
            Object[] b2 = b();
            if (b2 != null) {
                return (T[]) Arrays.copyOfRange(b2, c(), d(), tArr.getClass());
            }
            tArr2 = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), size));
        } else {
            tArr2 = tArr;
            if (tArr.length > size) {
                tArr[size] = null;
                tArr2 = tArr;
            }
        }
        a(tArr2, 0);
        return tArr2;
    }

    Object writeReplace() {
        return new v.c(toArray());
    }
}
