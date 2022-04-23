package com.google.common.collect;

import com.google.common.base.m;
import com.google.common.collect.t;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/v.class */
public abstract class v<E> extends t<E> implements List<E>, RandomAccess {

    /* renamed from: a  reason: collision with root package name */
    private static final az<Object> f32113a = new b(ao.f32007a, 0);

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/v$a.class */
    public static final class a<E> extends t.a<E> {
        public a() {
            this(4);
        }

        a(int i) {
            super(i);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.t.a
        public final /* bridge */ /* synthetic */ t.a a(Object obj) {
            super.a(obj);
            return this;
        }

        public final v<E> a() {
            this.f32110c = true;
            return v.b(this.f32108a, this.f32109b);
        }

        public final a<E> b(E e) {
            super.a(e);
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/v$b.class */
    public static final class b<E> extends com.google.common.collect.a<E> {

        /* renamed from: a  reason: collision with root package name */
        private final v<E> f32114a;

        b(v<E> vVar, int i) {
            super(vVar.size(), i);
            this.f32114a = vVar;
        }

        @Override // com.google.common.collect.a
        protected final E a(int i) {
            return this.f32114a.get(i);
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/v$c.class */
    static final class c implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        final Object[] f32115a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public c(Object[] objArr) {
            this.f32115a = objArr;
        }

        final Object readResolve() {
            return v.a(this.f32115a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/v$d.class */
    public final class d extends v<E> {

        /* renamed from: a  reason: collision with root package name */
        final transient int f32116a;

        /* renamed from: b  reason: collision with root package name */
        final transient int f32117b;

        d(int i, int i2) {
            this.f32116a = i;
            this.f32117b = i2;
        }

        @Override // com.google.common.collect.v
        /* renamed from: a */
        public final v<E> subList(int i, int i2) {
            m.a(i, i2, this.f32117b);
            v vVar = v.this;
            int i3 = this.f32116a;
            return vVar.subList(i + i3, i2 + i3);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.t
        public final Object[] b() {
            return v.this.b();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.t
        public final int c() {
            return v.this.c() + this.f32116a;
        }

        @Override // com.google.common.collect.t
        final int d() {
            return v.this.c() + this.f32116a + this.f32117b;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.t
        public final boolean f() {
            return true;
        }

        @Override // java.util.List
        public final E get(int i) {
            m.a(i, this.f32117b);
            return v.this.get(i + this.f32116a);
        }

        @Override // com.google.common.collect.v, com.google.common.collect.t, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final /* synthetic */ Iterator iterator() {
            return v.super.a();
        }

        @Override // com.google.common.collect.v, java.util.List
        public final /* synthetic */ ListIterator listIterator() {
            return v.super.h();
        }

        @Override // com.google.common.collect.v, java.util.List
        public final /* synthetic */ ListIterator listIterator(int i) {
            return v.super.listIterator(i);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            return this.f32117b;
        }
    }

    public static <E> v<E> a(E e) {
        Object[] a2 = am.a(new Object[]{e}, 1);
        return b(a2, a2.length);
    }

    public static <E> v<E> a(E e, E e2) {
        Object[] a2 = am.a(new Object[]{e, e2}, 2);
        return b(a2, a2.length);
    }

    public static <E> v<E> a(E e, E e2, E e3, E e4, E e5) {
        Object[] a2 = am.a(new Object[]{e, e2, e3, e4, e5}, 5);
        return b(a2, a2.length);
    }

    public static <E> v<E> a(Collection<? extends E> collection) {
        if (collection instanceof t) {
            v<E> e = ((t) collection).e();
            v<E> vVar = e;
            if (e.f()) {
                Object[] array = e.toArray();
                vVar = b(array, array.length);
            }
            return vVar;
        }
        Object[] array2 = collection.toArray();
        Object[] a2 = am.a(array2, array2.length);
        return b(a2, a2.length);
    }

    public static <E> v<E> a(Comparator<? super E> comparator, Iterable<? extends E> iterable) {
        Collection collection;
        m.a(comparator);
        if (iterable instanceof Collection) {
            collection = (Collection) iterable;
        } else {
            Iterator<? extends E> it2 = iterable.iterator();
            collection = new ArrayList();
            ab.a(collection, it2);
        }
        Object[] array = collection.toArray();
        am.a(array, array.length);
        Arrays.sort(array, comparator);
        return b(array, array.length);
    }

    public static <E> v<E> a(E[] eArr) {
        if (eArr.length == 0) {
            return (v<E>) ao.f32007a;
        }
        Object[] objArr = (Object[]) eArr.clone();
        Object[] a2 = am.a(objArr, objArr.length);
        return b(a2, a2.length);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> v<E> b(Object[] objArr) {
        return b(objArr, objArr.length);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> v<E> b(Object[] objArr, int i) {
        return i == 0 ? (v<E>) ao.f32007a : new ao(objArr, i);
    }

    public static <E> v<E> g() {
        return (v<E>) ao.f32007a;
    }

    public static <E> a<E> i() {
        return new a<>();
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.t
    public int a(Object[] objArr, int i) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            objArr[i + i2] = get(i2);
        }
        return i + size;
    }

    @Override // com.google.common.collect.t
    public final ay<E> a() {
        return listIterator(0);
    }

    /* renamed from: a */
    public final az<E> listIterator(int i) {
        m.b(i, size());
        return isEmpty() ? (az<E>) f32113a : new b(this, i);
    }

    /* renamed from: a */
    public v<E> subList(int i, int i2) {
        m.a(i, i2, size());
        int i3 = i2 - i;
        return i3 == size() ? this : i3 == 0 ? (v<E>) ao.f32007a : new d(i, i3);
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

    @Override // com.google.common.collect.t, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // com.google.common.collect.t
    public final v<E> e() {
        return this;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x006c  */
    @Override // java.util.Collection, java.util.List
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r5) {
        /*
            r4 = this;
            r0 = r5
            r1 = r4
            java.lang.Object r1 = com.google.common.base.m.a(r1)
            if (r0 != r1) goto L_0x000a
            r0 = 1
            return r0
        L_0x000a:
            r0 = r5
            boolean r0 = r0 instanceof java.util.List
            if (r0 == 0) goto L_0x0095
            r0 = r5
            java.util.List r0 = (java.util.List) r0
            r6 = r0
            r0 = r4
            int r0 = r0.size()
            r7 = r0
            r0 = r7
            r1 = r6
            int r1 = r1.size()
            if (r0 != r1) goto L_0x0095
            r0 = r6
            boolean r0 = r0 instanceof java.util.RandomAccess
            if (r0 == 0) goto L_0x0055
            r0 = 0
            r8 = r0
        L_0x0031:
            r0 = r8
            r1 = r7
            if (r0 >= r1) goto L_0x0053
            r0 = r4
            r1 = r8
            java.lang.Object r0 = r0.get(r1)
            r1 = r6
            r2 = r8
            java.lang.Object r1 = r1.get(r2)
            boolean r0 = com.google.common.base.j.a(r0, r1)
            if (r0 == 0) goto L_0x0095
            int r8 = r8 + 1
            goto L_0x0031
        L_0x0053:
            r0 = 1
            return r0
        L_0x0055:
            r0 = r4
            java.util.Iterator r0 = r0.iterator()
            r5 = r0
            r0 = r6
            java.util.Iterator r0 = r0.iterator()
            r6 = r0
        L_0x0063:
            r0 = r5
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x008a
            r0 = r6
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x0095
            r0 = r5
            java.lang.Object r0 = r0.next()
            r1 = r6
            java.lang.Object r1 = r1.next()
            boolean r0 = com.google.common.base.j.a(r0, r1)
            if (r0 == 0) goto L_0x0095
            goto L_0x0063
        L_0x008a:
            r0 = r6
            boolean r0 = r0.hasNext()
            if (r0 != 0) goto L_0x0095
            r0 = 1
            return r0
        L_0x0095:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.v.equals(java.lang.Object):boolean");
    }

    public final az<E> h() {
        return listIterator(0);
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
        if (obj == null) {
            return -1;
        }
        int size = size();
        if (obj == null) {
            for (int i = 0; i < size; i++) {
                if (get(i) == null) {
                    return i;
                }
            }
            return -1;
        }
        for (int i2 = 0; i2 < size; i2++) {
            if (obj.equals(get(i2))) {
                return i2;
            }
        }
        return -1;
    }

    @Override // com.google.common.collect.t, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public /* synthetic */ Iterator iterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        if (obj == null) {
            for (int size = size() - 1; size >= 0; size--) {
                if (get(size) == null) {
                    return size;
                }
            }
            return -1;
        }
        for (int size2 = size() - 1; size2 >= 0; size2--) {
            if (obj.equals(get(size2))) {
                return size2;
            }
        }
        return -1;
    }

    @Override // java.util.List
    public /* synthetic */ ListIterator listIterator() {
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

    @Override // com.google.common.collect.t
    Object writeReplace() {
        return new c(toArray());
    }
}
