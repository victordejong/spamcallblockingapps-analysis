package com.google.a.b;

import com.google.a.a.d;
import com.google.a.b.k;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/a/b/m.class */
public abstract class m<E> extends k<E> implements List<E>, RandomAccess {

    /* loaded from: classes-dex2jar.jar:com/google/a/b/m$a.class */
    public static final class a<E> extends k.a<E> {

        /* renamed from: a  reason: collision with root package name */
        public final ArrayList<E> f3704a = new ArrayList<>();

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.a.b.k.a
        public final /* synthetic */ k.a a(Object obj) {
            return b((a<E>) obj);
        }

        @Override // com.google.a.b.k.a
        public final /* bridge */ /* synthetic */ k.a a(Iterator it) {
            super.a(it);
            return this;
        }

        /* renamed from: b */
        public final a<E> a(Iterable<? extends E> iterable) {
            if (iterable instanceof Collection) {
                this.f3704a.ensureCapacity(((Collection) iterable).size() + this.f3704a.size());
            }
            super.a((Iterable) iterable);
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final a<E> b(E e) {
            this.f3704a.add(d.a(e));
            return this;
        }

        public final a<E> b(Iterator<? extends E> it) {
            super.a((Iterator) it);
            return this;
        }
    }

    public static <E> m<E> a(E e) {
        return new ab(e);
    }

    public static <E> m<E> a(Collection<? extends E> collection) {
        m<E> b2;
        if (collection instanceof k) {
            m<E> d = ((k) collection).d();
            b2 = d;
            if (d.a()) {
                b2 = b(d);
            }
        } else {
            b2 = b(collection);
        }
        return b2;
    }

    private static <E> m<E> b(Collection<? extends E> collection) {
        m<E> abVar;
        Object[] array = collection.toArray();
        switch (array.length) {
            case 0:
                abVar = f.f3694a;
                return abVar;
            case 1:
                abVar = new ab<>(array[0]);
                return abVar;
            default:
                for (int i = 0; i < array.length; i++) {
                    if (array[i] == null) {
                        throw new NullPointerException("at index " + i);
                    }
                }
                abVar = new w<>(array);
                return abVar;
        }
    }

    public static <E> m<E> f() {
        return f.f3694a;
    }

    /* renamed from: a */
    public abstract af<E> listIterator(int i);

    /* renamed from: a */
    public abstract m<E> subList(int i, int i2);

    @Override // java.util.List
    public final void add(int i, E e) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    public final boolean addAll(int i, Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.a.b.k
    /* renamed from: b */
    public ae<E> iterator() {
        return listIterator();
    }

    /* renamed from: c */
    public af<E> listIterator() {
        return listIterator(0);
    }

    @Override // com.google.a.b.k
    public final m<E> d() {
        return this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0036, code lost:
        if (com.google.a.b.q.a((java.util.Iterator<?>) iterator(), (java.util.Iterator<?>) r0.iterator()) != false) goto L_0x000a;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = 1
            r5 = r0
            r0 = r4
            r1 = r3
            java.lang.Object r1 = com.google.a.a.d.a(r1)
            if (r0 != r1) goto L_0x000c
        L_0x000a:
            r0 = r5
            return r0
        L_0x000c:
            r0 = r4
            boolean r0 = r0 instanceof java.util.List
            if (r0 == 0) goto L_0x0039
            r0 = r4
            java.util.List r0 = (java.util.List) r0
            r4 = r0
            r0 = r3
            int r0 = r0.size()
            r1 = r4
            int r1 = r1.size()
            if (r0 != r1) goto L_0x0039
            r0 = r3
            java.util.Iterator r0 = r0.iterator()
            r1 = r4
            java.util.Iterator r1 = r1.iterator()
            boolean r0 = com.google.a.b.q.a(r0, r1)
            if (r0 != 0) goto L_0x000a
        L_0x0039:
            r0 = 0
            r5 = r0
            goto L_0x000a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.a.b.m.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        int i = 1;
        Iterator<E> it = iterator();
        while (it.hasNext()) {
            E next = it.next();
            i = (next == null ? 0 : next.hashCode()) + (i * 31);
        }
        return i;
    }

    @Override // java.util.List
    public final E remove(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    public final E set(int i, E e) {
        throw new UnsupportedOperationException();
    }
}
