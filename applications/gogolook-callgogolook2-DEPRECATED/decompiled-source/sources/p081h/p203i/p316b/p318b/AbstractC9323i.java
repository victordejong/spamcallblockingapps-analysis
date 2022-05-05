package p081h.p203i.p316b.p318b;

import com.google.common.collect.Lists;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import p081h.p203i.p316b.p317a.C9301k;
/* renamed from: h.i.b.b.i */
/* loaded from: classes2-dex2jar.jar:h/i/b/b/i.class */
public abstract class AbstractC9323i<E> extends AbstractC9321h<E> implements List<E>, RandomAccess {

    /* renamed from: b */
    public static final AbstractC9315b0<Object> f21349b = new C9324a(C9344s.f21372e, 0);

    /* renamed from: h.i.b.b.i$a */
    /* loaded from: classes2-dex2jar.jar:h/i/b/b/i$a.class */
    public static class C9324a<E> extends AbstractC9310a<E> {

        /* renamed from: c */
        public final AbstractC9323i<E> f21350c;

        public C9324a(AbstractC9323i<E> iVar, int i) {
            super(iVar.size(), i);
            this.f21350c = iVar;
        }

        @Override // p081h.p203i.p316b.p318b.AbstractC9310a
        /* renamed from: a */
        public E mo15425a(int i) {
            return this.f21350c.get(i);
        }
    }

    /* renamed from: h.i.b.b.i$b */
    /* loaded from: classes2-dex2jar.jar:h/i/b/b/i$b.class */
    public static class C9325b<E> extends AbstractC9323i<E> {

        /* renamed from: c */
        public final transient AbstractC9323i<E> f21351c;

        public C9325b(AbstractC9323i<E> iVar) {
            this.f21351c = iVar;
        }

        @Override // p081h.p203i.p316b.p318b.AbstractC9323i, p081h.p203i.p316b.p318b.AbstractC9321h, java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return this.f21351c.contains(obj);
        }

        /* renamed from: g */
        public final int m15424g(int i) {
            return (size() - 1) - i;
        }

        @Override // java.util.List
        public E get(int i) {
            C9301k.m15481a(i, size());
            return this.f21351c.get(m15424g(i));
        }

        /* renamed from: h */
        public final int m15423h(int i) {
            return size() - i;
        }

        @Override // p081h.p203i.p316b.p318b.AbstractC9323i, java.util.List
        public int indexOf(Object obj) {
            int lastIndexOf = this.f21351c.lastIndexOf(obj);
            return lastIndexOf >= 0 ? m15424g(lastIndexOf) : -1;
        }

        @Override // p081h.p203i.p316b.p318b.AbstractC9323i, p081h.p203i.p316b.p318b.AbstractC9321h, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public /* bridge */ /* synthetic */ Iterator iterator() {
            return AbstractC9323i.super.iterator();
        }

        @Override // p081h.p203i.p316b.p318b.AbstractC9323i, java.util.List
        public int lastIndexOf(Object obj) {
            int indexOf = this.f21351c.indexOf(obj);
            return indexOf >= 0 ? m15424g(indexOf) : -1;
        }

        @Override // p081h.p203i.p316b.p318b.AbstractC9323i, java.util.List
        public /* bridge */ /* synthetic */ ListIterator listIterator() {
            return AbstractC9323i.super.listIterator();
        }

        @Override // p081h.p203i.p316b.p318b.AbstractC9323i, java.util.List
        public /* bridge */ /* synthetic */ ListIterator listIterator(int i) {
            return AbstractC9323i.super.listIterator(i);
        }

        @Override // p081h.p203i.p316b.p318b.AbstractC9323i
        /* renamed from: r */
        public AbstractC9323i<E> mo15422r() {
            return this.f21351c;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f21351c.size();
        }

        @Override // p081h.p203i.p316b.p318b.AbstractC9323i, java.util.List
        public AbstractC9323i<E> subList(int i, int i2) {
            C9301k.m15470b(i, i2, size());
            return this.f21351c.subList(m15423h(i2), m15423h(i)).mo15422r();
        }
    }

    /* renamed from: h.i.b.b.i$c */
    /* loaded from: classes2-dex2jar.jar:h/i/b/b/i$c.class */
    public static class C9326c implements Serializable {

        /* renamed from: a */
        public final Object[] f21352a;

        public C9326c(Object[] objArr) {
            this.f21352a = objArr;
        }

        public Object readResolve() {
            return AbstractC9323i.m15428c(this.f21352a);
        }
    }

    /* renamed from: h.i.b.b.i$d */
    /* loaded from: classes2-dex2jar.jar:h/i/b/b/i$d.class */
    public class C9327d extends AbstractC9323i<E> {

        /* renamed from: c */
        public final transient int f21353c;

        /* renamed from: d */
        public final transient int f21354d;

        public C9327d(int i, int i2) {
            this.f21353c = i;
            this.f21354d = i2;
        }

        @Override // p081h.p203i.p316b.p318b.AbstractC9321h
        /* renamed from: b */
        public Object[] mo15380b() {
            return AbstractC9323i.this.mo15380b();
        }

        @Override // p081h.p203i.p316b.p318b.AbstractC9321h
        /* renamed from: c */
        public int mo15379c() {
            return AbstractC9323i.this.mo15378q() + this.f21353c + this.f21354d;
        }

        @Override // java.util.List
        public E get(int i) {
            C9301k.m15481a(i, this.f21354d);
            return AbstractC9323i.this.get(i + this.f21353c);
        }

        @Override // p081h.p203i.p316b.p318b.AbstractC9323i, p081h.p203i.p316b.p318b.AbstractC9321h, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public /* bridge */ /* synthetic */ Iterator iterator() {
            return AbstractC9323i.super.iterator();
        }

        @Override // p081h.p203i.p316b.p318b.AbstractC9323i, java.util.List
        public /* bridge */ /* synthetic */ ListIterator listIterator() {
            return AbstractC9323i.super.listIterator();
        }

        @Override // p081h.p203i.p316b.p318b.AbstractC9323i, java.util.List
        public /* bridge */ /* synthetic */ ListIterator listIterator(int i) {
            return AbstractC9323i.super.listIterator(i);
        }

        @Override // p081h.p203i.p316b.p318b.AbstractC9321h
        /* renamed from: q */
        public int mo15378q() {
            return AbstractC9323i.this.mo15378q() + this.f21353c;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f21354d;
        }

        @Override // p081h.p203i.p316b.p318b.AbstractC9323i, java.util.List
        public AbstractC9323i<E> subList(int i, int i2) {
            C9301k.m15470b(i, i2, this.f21354d);
            AbstractC9323i iVar = AbstractC9323i.this;
            int i3 = this.f21353c;
            return iVar.subList(i + i3, i2 + i3);
        }
    }

    /* renamed from: a */
    public static <E> AbstractC9323i<E> m15431a(Object[] objArr) {
        return m15429b(objArr, objArr.length);
    }

    /* renamed from: b */
    public static <E> AbstractC9323i<E> m15430b(Object... objArr) {
        C9341p.m15398a(objArr);
        return m15431a(objArr);
    }

    /* renamed from: b */
    public static <E> AbstractC9323i<E> m15429b(Object[] objArr, int i) {
        return i == 0 ? m15427of() : new C9344s(objArr, i);
    }

    /* renamed from: c */
    public static <E> AbstractC9323i<E> m15428c(E[] eArr) {
        return eArr.length == 0 ? m15427of() : m15430b((Object[]) eArr.clone());
    }

    /* renamed from: of */
    public static <E> AbstractC9323i<E> m15427of() {
        return (AbstractC9323i<E>) C9344s.f21372e;
    }

    /* renamed from: of */
    public static <E> AbstractC9323i<E> m15426of(E e) {
        return m15430b(e);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    @Override // p081h.p203i.p316b.p318b.AbstractC9321h
    /* renamed from: a */
    public int mo15372a(Object[] objArr, int i) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            objArr[i + i2] = get(i2);
        }
        return i + size;
    }

    /* renamed from: a */
    public AbstractC9323i<E> m15432a(int i, int i2) {
        return new C9327d(i, i2 - i);
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

    @Override // p081h.p203i.p316b.p318b.AbstractC9321h, java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        return Lists.m31131a(this, obj);
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
        return obj == null ? -1 : Lists.m31129b(this, obj);
    }

    @Override // p081h.p203i.p316b.p318b.AbstractC9321h, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public AbstractC9311a0<E> iterator() {
        return listIterator();
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        return obj == null ? -1 : Lists.m31127d(this, obj);
    }

    @Override // java.util.List
    public AbstractC9315b0<E> listIterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    public AbstractC9315b0<E> listIterator(int i) {
        C9301k.m15471b(i, size());
        return isEmpty() ? (AbstractC9315b0<E>) f21349b : new C9324a(this, i);
    }

    /* renamed from: r */
    public AbstractC9323i<E> mo15422r() {
        return size() <= 1 ? this : new C9325b<>(this);
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

    @Override // java.util.List
    public AbstractC9323i<E> subList(int i, int i2) {
        C9301k.m15470b(i, i2, size());
        int i3 = i2 - i;
        return i3 == size() ? this : i3 == 0 ? m15427of() : m15432a(i, i2);
    }

    @Override // p081h.p203i.p316b.p318b.AbstractC9321h
    public Object writeReplace() {
        return new C9326c(toArray());
    }
}
