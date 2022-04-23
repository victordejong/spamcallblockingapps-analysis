package p573f.p577r;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import kotlin.collections.AbstractCollection;
import p573f.p590w.p592c.C10057o;
import p573f.p590w.p592c.C10059q;
/* renamed from: f.r.c */
/* loaded from: classes2-dex2jar.jar:f/r/c.class */
public abstract class AbstractC9952c<E> extends AbstractCollection<E> implements List<E> {

    /* renamed from: a */
    public static final C9953a f37141a = new C9953a(null);

    /* renamed from: f.r.c$a */
    /* loaded from: classes2-dex2jar.jar:f/r/c$a.class */
    public static final class C9953a {
        public C9953a() {
        }

        public /* synthetic */ C9953a(C10057o oVar) {
            this();
        }

        /* renamed from: a */
        public final int m1737a(Collection<?> collection) {
            C10059q.m1637b(collection, "c");
            Iterator<?> it = collection.iterator();
            int i = 1;
            while (it.hasNext()) {
                Object next = it.next();
                i = (i * 31) + (next != null ? next.hashCode() : 0);
            }
            return i;
        }

        /* renamed from: a */
        public final void m1739a(int i, int i2) {
            if (i < 0 || i >= i2) {
                throw new IndexOutOfBoundsException("index: " + i + ", size: " + i2);
            }
        }

        /* renamed from: a */
        public final void m1738a(int i, int i2, int i3) {
            if (i < 0 || i2 > i3) {
                throw new IndexOutOfBoundsException("fromIndex: " + i + ", toIndex: " + i2 + ", size: " + i3);
            } else if (i > i2) {
                throw new IllegalArgumentException("fromIndex: " + i + " > toIndex: " + i2);
            }
        }

        /* renamed from: a */
        public final boolean m1736a(Collection<?> collection, Collection<?> collection2) {
            C10059q.m1637b(collection, "c");
            C10059q.m1637b(collection2, "other");
            if (collection.size() != collection2.size()) {
                return false;
            }
            Iterator<?> it = collection2.iterator();
            Iterator<?> it2 = collection.iterator();
            while (it2.hasNext()) {
                if (!C10059q.m1643a(it2.next(), it.next())) {
                    return false;
                }
            }
            return true;
        }

        /* renamed from: b */
        public final void m1735b(int i, int i2) {
            if (i < 0 || i > i2) {
                throw new IndexOutOfBoundsException("index: " + i + ", size: " + i2);
            }
        }
    }

    /* renamed from: f.r.c$b */
    /* loaded from: classes2-dex2jar.jar:f/r/c$b.class */
    public class C9954b implements Iterator<E> {

        /* renamed from: a */
        public int f37142a;

        public C9954b() {
        }

        /* renamed from: a */
        public final int m1734a() {
            return this.f37142a;
        }

        /* renamed from: a */
        public final void m1733a(int i) {
            this.f37142a = i;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f37142a < AbstractC9952c.this.size();
        }

        @Override // java.util.Iterator
        public E next() {
            if (hasNext()) {
                AbstractC9952c cVar = AbstractC9952c.this;
                int i = this.f37142a;
                this.f37142a = i + 1;
                return (E) cVar.get(i);
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* renamed from: f.r.c$c */
    /* loaded from: classes2-dex2jar.jar:f/r/c$c.class */
    public class C9955c extends AbstractC9952c<E>.C9954b implements ListIterator<E> {
        public C9955c(int i) {
            super();
            AbstractC9952c.f37141a.m1735b(i, AbstractC9952c.this.size());
            m1733a(i);
        }

        @Override // java.util.ListIterator
        public void add(E e) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return m1734a() > 0;
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return m1734a();
        }

        @Override // java.util.ListIterator
        public E previous() {
            if (hasPrevious()) {
                AbstractC9952c cVar = AbstractC9952c.this;
                m1733a(m1734a() - 1);
                return (E) cVar.get(m1734a());
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return m1734a() - 1;
        }

        @Override // java.util.ListIterator
        public void set(E e) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* renamed from: f.r.c$d */
    /* loaded from: classes2-dex2jar.jar:f/r/c$d.class */
    public static final class C9956d<E> extends AbstractC9952c<E> implements RandomAccess {

        /* renamed from: b */
        public int f37145b;

        /* renamed from: c */
        public final AbstractC9952c<E> f37146c;

        /* renamed from: d */
        public final int f37147d;

        /* JADX WARN: Multi-variable type inference failed */
        public C9956d(AbstractC9952c<? extends E> cVar, int i, int i2) {
            C10059q.m1637b(cVar, "list");
            this.f37146c = cVar;
            this.f37147d = i;
            AbstractC9952c.f37141a.m1738a(i, i2, cVar.size());
            this.f37145b = i2 - this.f37147d;
        }

        @Override // kotlin.collections.AbstractCollection
        /* renamed from: a */
        public int mo38a() {
            return this.f37145b;
        }

        @Override // p573f.p577r.AbstractC9952c, java.util.List
        public E get(int i) {
            AbstractC9952c.f37141a.m1739a(i, this.f37145b);
            return this.f37146c.get(this.f37147d + i);
        }
    }

    @Override // java.util.List
    public void add(int i, E e) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public boolean addAll(int i, Collection<? extends E> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof List)) {
            return false;
        }
        return f37141a.m1736a(this, (Collection) obj);
    }

    @Override // java.util.List
    public abstract E get(int i);

    @Override // java.util.Collection, java.util.List
    public int hashCode() {
        return f37141a.m1737a(this);
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        Iterator<E> it = iterator();
        int i = 0;
        while (true) {
            if (!it.hasNext()) {
                i = -1;
                break;
            } else if (C10059q.m1643a(it.next(), obj)) {
                break;
            } else {
                i++;
            }
        }
        return i;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<E> iterator() {
        return new C9954b();
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        int i;
        ListIterator<E> listIterator = listIterator(size());
        while (true) {
            if (listIterator.hasPrevious()) {
                if (C10059q.m1643a(listIterator.previous(), obj)) {
                    i = listIterator.nextIndex();
                    break;
                }
            } else {
                i = -1;
                break;
            }
        }
        return i;
    }

    @Override // java.util.List
    public ListIterator<E> listIterator() {
        return new C9955c(0);
    }

    @Override // java.util.List
    public ListIterator<E> listIterator(int i) {
        return new C9955c(i);
    }

    @Override // java.util.List
    public E remove(int i) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public E set(int i, E e) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public List<E> subList(int i, int i2) {
        return new C9956d(this, i, i2);
    }
}
