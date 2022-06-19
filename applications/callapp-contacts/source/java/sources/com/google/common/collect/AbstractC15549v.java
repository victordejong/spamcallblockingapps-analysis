package com.google.common.collect;

import com.google.common.base.C15391m;
import com.google.common.collect.AbstractC15545t;
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
/* renamed from: com.google.common.collect.v */
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/v.class */
public abstract class AbstractC15549v<E> extends AbstractC15545t<E> implements List<E>, RandomAccess {

    /* renamed from: a */
    private static final AbstractC15494az<Object> f55853a = new C15551b(C15471ao.f55732a, 0);

    /* renamed from: com.google.common.collect.v$a */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/v$a.class */
    public static final class C15550a<E> extends AbstractC15545t.AbstractC15546a<E> {
        public C15550a() {
            this(4);
        }

        C15550a(int i) {
            super(i);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.AbstractC15545t.AbstractC15546a
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ AbstractC15545t.AbstractC15546a mo8716a(Object obj) {
            super.mo8716a(obj);
            return this;
        }

        /* renamed from: a */
        public final AbstractC15549v<E> m8717a() {
            this.f55850c = true;
            return AbstractC15549v.m8721b(this.f55848a, this.f55849b);
        }

        /* renamed from: b */
        public final C15550a<E> m8715b(E e) {
            super.mo8716a(e);
            return this;
        }
    }

    /* renamed from: com.google.common.collect.v$b */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/v$b.class */
    public static final class C15551b<E> extends AbstractC15401a<E> {

        /* renamed from: a */
        private final AbstractC15549v<E> f55854a;

        C15551b(AbstractC15549v<E> abstractC15549v, int i) {
            super(abstractC15549v.size(), i);
            this.f55854a = abstractC15549v;
        }

        @Override // com.google.common.collect.AbstractC15401a
        /* renamed from: a */
        protected final E mo8714a(int i) {
            return this.f55854a.get(i);
        }
    }

    /* renamed from: com.google.common.collect.v$c */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/v$c.class */
    static final class C15552c implements Serializable {

        /* renamed from: a */
        final Object[] f55855a;

        public C15552c(Object[] objArr) {
            this.f55855a = objArr;
        }

        final Object readResolve() {
            return AbstractC15549v.m8723a(this.f55855a);
        }
    }

    /* renamed from: com.google.common.collect.v$d */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/v$d.class */
    public final class C15553d extends AbstractC15549v<E> {

        /* renamed from: a */
        final transient int f55856a;

        /* renamed from: b */
        final transient int f55857b;

        C15553d(int i, int i2) {
            AbstractC15549v.this = r4;
            this.f55856a = i;
            this.f55857b = i2;
        }

        @Override // com.google.common.collect.AbstractC15549v
        /* renamed from: a */
        public final AbstractC15549v<E> subList(int i, int i2) {
            C15391m.m8948a(i, i2, this.f55857b);
            AbstractC15549v abstractC15549v = AbstractC15549v.this;
            int i3 = this.f55856a;
            return abstractC15549v.subList(i + i3, i2 + i3);
        }

        @Override // com.google.common.collect.AbstractC15545t
        /* renamed from: b */
        public final Object[] mo8712b() {
            return AbstractC15549v.this.mo8712b();
        }

        @Override // com.google.common.collect.AbstractC15545t
        /* renamed from: c */
        public final int mo8711c() {
            return AbstractC15549v.this.mo8711c() + this.f55856a;
        }

        @Override // com.google.common.collect.AbstractC15545t
        /* renamed from: d */
        final int mo8710d() {
            return AbstractC15549v.this.mo8711c() + this.f55856a + this.f55857b;
        }

        @Override // com.google.common.collect.AbstractC15545t
        /* renamed from: f */
        public final boolean mo8666f() {
            return true;
        }

        @Override // java.util.List
        public final E get(int i) {
            C15391m.m8949a(i, this.f55857b);
            return AbstractC15549v.this.get(i + this.f55856a);
        }

        @Override // com.google.common.collect.AbstractC15549v, com.google.common.collect.AbstractC15545t, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final /* synthetic */ Iterator iterator() {
            return AbstractC15549v.super.mo8665a();
        }

        @Override // com.google.common.collect.AbstractC15549v, java.util.List
        public final /* synthetic */ ListIterator listIterator() {
            return AbstractC15549v.super.m8719h();
        }

        @Override // com.google.common.collect.AbstractC15549v, java.util.List
        public final /* synthetic */ ListIterator listIterator(int i) {
            return AbstractC15549v.super.listIterator(i);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            return this.f55857b;
        }
    }

    /* renamed from: a */
    public static <E> AbstractC15549v<E> m8728a(E e) {
        Object[] m8836a = C15469am.m8836a(new Object[]{e}, 1);
        return m8721b(m8836a, m8836a.length);
    }

    /* renamed from: a */
    public static <E> AbstractC15549v<E> m8727a(E e, E e2) {
        Object[] m8836a = C15469am.m8836a(new Object[]{e, e2}, 2);
        return m8721b(m8836a, m8836a.length);
    }

    /* renamed from: a */
    public static <E> AbstractC15549v<E> m8726a(E e, E e2, E e3, E e4, E e5) {
        Object[] m8836a = C15469am.m8836a(new Object[]{e, e2, e3, e4, e5}, 5);
        return m8721b(m8836a, m8836a.length);
    }

    /* renamed from: a */
    public static <E> AbstractC15549v<E> m8725a(Collection<? extends E> collection) {
        if (!(collection instanceof AbstractC15545t)) {
            Object[] array = collection.toArray();
            Object[] m8836a = C15469am.m8836a(array, array.length);
            return m8721b(m8836a, m8836a.length);
        }
        AbstractC15549v<E> mo8656e = ((AbstractC15545t) collection).mo8656e();
        AbstractC15549v<E> abstractC15549v = mo8656e;
        if (mo8656e.mo8666f()) {
            Object[] array2 = mo8656e.toArray();
            abstractC15549v = m8721b(array2, array2.length);
        }
        return abstractC15549v;
    }

    /* renamed from: a */
    public static <E> AbstractC15549v<E> m8724a(Comparator<? super E> comparator, Iterable<? extends E> iterable) {
        ArrayList arrayList;
        C15391m.m8946a(comparator);
        if (iterable instanceof Collection) {
            arrayList = (Collection) iterable;
        } else {
            Iterator<? extends E> it2 = iterable.iterator();
            arrayList = new ArrayList();
            C15403ab.m8915a(arrayList, it2);
        }
        Object[] array = arrayList.toArray();
        C15469am.m8836a(array, array.length);
        Arrays.sort(array, comparator);
        return m8721b(array, array.length);
    }

    /* renamed from: a */
    public static <E> AbstractC15549v<E> m8723a(E[] eArr) {
        if (eArr.length == 0) {
            return (AbstractC15549v<E>) C15471ao.f55732a;
        }
        Object[] objArr = (Object[]) eArr.clone();
        Object[] m8836a = C15469am.m8836a(objArr, objArr.length);
        return m8721b(m8836a, m8836a.length);
    }

    /* renamed from: b */
    public static <E> AbstractC15549v<E> m8722b(Object[] objArr) {
        return m8721b(objArr, objArr.length);
    }

    /* renamed from: b */
    public static <E> AbstractC15549v<E> m8721b(Object[] objArr, int i) {
        return i == 0 ? (AbstractC15549v<E>) C15471ao.f55732a : new C15471ao(objArr, i);
    }

    /* renamed from: g */
    public static <E> AbstractC15549v<E> m8720g() {
        return (AbstractC15549v<E>) C15471ao.f55732a;
    }

    /* renamed from: i */
    public static <E> C15550a<E> m8718i() {
        return new C15550a<>();
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    @Override // com.google.common.collect.AbstractC15545t
    /* renamed from: a */
    public int mo8667a(Object[] objArr, int i) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            objArr[i + i2] = get(i2);
        }
        return i + size;
    }

    @Override // com.google.common.collect.AbstractC15545t
    /* renamed from: a */
    public final AbstractC15493ay<E> mo8665a() {
        return listIterator(0);
    }

    /* renamed from: a */
    public final AbstractC15494az<E> listIterator(int i) {
        C15391m.m8935b(i, size());
        return isEmpty() ? (AbstractC15494az<E>) f55853a : new C15551b(this, i);
    }

    /* renamed from: a */
    public AbstractC15549v<E> subList(int i, int i2) {
        C15391m.m8948a(i, i2, size());
        int i3 = i2 - i;
        return i3 == size() ? this : i3 == 0 ? (AbstractC15549v<E>) C15471ao.f55732a : new C15553d(i, i3);
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

    @Override // com.google.common.collect.AbstractC15545t, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // com.google.common.collect.AbstractC15545t
    /* renamed from: e */
    public final AbstractC15549v<E> mo8656e() {
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
            java.lang.Object r1 = com.google.common.base.C15391m.m8946a(r1)
            if (r0 != r1) goto La
            r0 = 1
            return r0
        La:
            r0 = r5
            boolean r0 = r0 instanceof java.util.List
            if (r0 == 0) goto L95
            r0 = r5
            java.util.List r0 = (java.util.List) r0
            r6 = r0
            r0 = r4
            int r0 = r0.size()
            r7 = r0
            r0 = r7
            r1 = r6
            int r1 = r1.size()
            if (r0 != r1) goto L95
            r0 = r6
            boolean r0 = r0 instanceof java.util.RandomAccess
            if (r0 == 0) goto L55
            r0 = 0
            r8 = r0
        L31:
            r0 = r8
            r1 = r7
            if (r0 >= r1) goto L53
            r0 = r4
            r1 = r8
            java.lang.Object r0 = r0.get(r1)
            r1 = r6
            r2 = r8
            java.lang.Object r1 = r1.get(r2)
            boolean r0 = com.google.common.base.C15386j.m8951a(r0, r1)
            if (r0 == 0) goto L95
            int r8 = r8 + 1
            goto L31
        L53:
            r0 = 1
            return r0
        L55:
            r0 = r4
            java.util.Iterator r0 = r0.iterator()
            r5 = r0
            r0 = r6
            java.util.Iterator r0 = r0.iterator()
            r6 = r0
        L63:
            r0 = r5
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L8a
            r0 = r6
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L95
            r0 = r5
            java.lang.Object r0 = r0.next()
            r1 = r6
            java.lang.Object r1 = r1.next()
            boolean r0 = com.google.common.base.C15386j.m8951a(r0, r1)
            if (r0 == 0) goto L95
            goto L63
        L8a:
            r0 = r6
            boolean r0 = r0.hasNext()
            if (r0 != 0) goto L95
            r0 = 1
            return r0
        L95:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.AbstractC15549v.equals(java.lang.Object):boolean");
    }

    /* renamed from: h */
    public final AbstractC15494az<E> m8719h() {
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
        if (obj != null) {
            int size = size();
            if (obj != null) {
                for (int i = 0; i < size; i++) {
                    if (obj.equals(get(i))) {
                        return i;
                    }
                }
                return -1;
            }
            for (int i2 = 0; i2 < size; i2++) {
                if (get(i2) == null) {
                    return i2;
                }
            }
            return -1;
        }
        return -1;
    }

    @Override // com.google.common.collect.AbstractC15545t, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public /* synthetic */ Iterator iterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        if (obj != null) {
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

    @Override // com.google.common.collect.AbstractC15545t
    Object writeReplace() {
        return new C15552c(toArray());
    }
}
