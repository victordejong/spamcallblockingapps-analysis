package p626l.p632u;

import androidx.exifinterface.media.ExifInterface;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import kotlin.Metadata;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.p644e0.AbstractC15141a;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��8\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n\u0002\b\b\n\u0002\u0010(\n\u0002\b\u0002\n\u0002\u0010*\n\u0002\b\b\b'\u0018�� \u001c*\u0006\b��\u0010\u0001 \u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003:\u0004\u001c\u001d\u001e\u001fB\u0007\b\u0004¢\u0006\u0002\u0010\u0004J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\u0016\u0010\r\u001a\u00028��2\u0006\u0010\u000e\u001a\u00020\u0006H¦\u0002¢\u0006\u0002\u0010\u000fJ\b\u0010\u0010\u001a\u00020\u0006H\u0016J\u0015\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00028��H\u0016¢\u0006\u0002\u0010\u0013J\u000f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028��0\u0015H\u0096\u0002J\u0015\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00028��H\u0016¢\u0006\u0002\u0010\u0013J\u000e\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028��0\u0018H\u0016J\u0016\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028��0\u00182\u0006\u0010\u000e\u001a\u00020\u0006H\u0016J\u001e\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028��0\u00032\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u0006H\u0016R\u0012\u0010\u0005\u001a\u00020\u0006X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006 "}, m815d2 = {"Lkotlin/collections/AbstractList;", ExifInterface.LONGITUDE_EAST, "Lkotlin/collections/AbstractCollection;", "", "()V", "size", "", "getSize", "()I", "equals", "", "other", "", "get", "index", "(I)Ljava/lang/Object;", "hashCode", "indexOf", "element", "(Ljava/lang/Object;)I", "iterator", "", "lastIndexOf", "listIterator", "", "subList", "fromIndex", "toIndex", "Companion", "IteratorImpl", "ListIteratorImpl", "SubList", "kotlin-stdlib"}, m814k = 1, m813mv = {1, 1, 16})
/* renamed from: l.u.d */
/* loaded from: classes3-dex2jar.jar:l/u/d.class */
public abstract class AbstractC14998d<E> extends AbstractC14991a<E> implements List<E>, AbstractC15141a {

    /* renamed from: a */
    public static final C14999a f33028a = new C14999a(null);

    /* renamed from: l.u.d$a */
    /* loaded from: classes3-dex2jar.jar:l/u/d$a.class */
    public static final class C14999a {
        public C14999a() {
        }

        public /* synthetic */ C14999a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final int m638a(Collection<?> collection) {
            C15149k.m377b(collection, "c");
            Iterator<?> it = collection.iterator();
            int i = 1;
            while (it.hasNext()) {
                Object next = it.next();
                i = (i * 31) + (next != null ? next.hashCode() : 0);
            }
            return i;
        }

        /* renamed from: a */
        public final void m640a(int i, int i2) {
            if (i < 0 || i >= i2) {
                throw new IndexOutOfBoundsException("index: " + i + ", size: " + i2);
            }
        }

        /* renamed from: a */
        public final void m639a(int i, int i2, int i3) {
            if (i < 0 || i2 > i3) {
                throw new IndexOutOfBoundsException("fromIndex: " + i + ", toIndex: " + i2 + ", size: " + i3);
            } else if (i > i2) {
                throw new IllegalArgumentException("fromIndex: " + i + " > toIndex: " + i2);
            }
        }

        /* renamed from: a */
        public final boolean m637a(Collection<?> collection, Collection<?> collection2) {
            C15149k.m377b(collection, "c");
            C15149k.m377b(collection2, "other");
            if (collection.size() != collection2.size()) {
                return false;
            }
            Iterator<?> it = collection2.iterator();
            Iterator<?> it2 = collection.iterator();
            while (it2.hasNext()) {
                if (!C15149k.m384a(it2.next(), it.next())) {
                    return false;
                }
            }
            return true;
        }

        /* renamed from: b */
        public final void m636b(int i, int i2) {
            if (i < 0 || i > i2) {
                throw new IndexOutOfBoundsException("index: " + i + ", size: " + i2);
            }
        }
    }

    /* renamed from: l.u.d$b */
    /* loaded from: classes3-dex2jar.jar:l/u/d$b.class */
    public class C15000b implements Iterator<E>, AbstractC15141a {

        /* renamed from: a */
        public int f33029a;

        public C15000b() {
        }

        /* renamed from: a */
        public final int m635a() {
            return this.f33029a;
        }

        /* renamed from: a */
        public final void m634a(int i) {
            this.f33029a = i;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f33029a < AbstractC14998d.this.size();
        }

        @Override // java.util.Iterator
        public E next() {
            if (hasNext()) {
                AbstractC14998d dVar = AbstractC14998d.this;
                int i = this.f33029a;
                this.f33029a = i + 1;
                return (E) dVar.get(i);
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* renamed from: l.u.d$c */
    /* loaded from: classes3-dex2jar.jar:l/u/d$c.class */
    public class C15001c extends AbstractC14998d<E>.C15000b implements ListIterator<E>, AbstractC15141a {
        public C15001c(int i) {
            super();
            AbstractC14998d.f33028a.m636b(i, AbstractC14998d.this.size());
            m634a(i);
        }

        @Override // java.util.ListIterator
        public void add(E e) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return m635a() > 0;
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return m635a();
        }

        @Override // java.util.ListIterator
        public E previous() {
            if (hasPrevious()) {
                AbstractC14998d dVar = AbstractC14998d.this;
                m634a(m635a() - 1);
                return (E) dVar.get(m635a());
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return m635a() - 1;
        }

        @Override // java.util.ListIterator
        public void set(E e) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* renamed from: l.u.d$d */
    /* loaded from: classes3-dex2jar.jar:l/u/d$d.class */
    public static final class C15002d<E> extends AbstractC14998d<E> implements RandomAccess {

        /* renamed from: b */
        public int f33032b;

        /* renamed from: c */
        public final AbstractC14998d<E> f33033c;

        /* renamed from: d */
        public final int f33034d;

        /* JADX WARN: Multi-variable type inference failed */
        public C15002d(AbstractC14998d<? extends E> dVar, int i, int i2) {
            C15149k.m377b(dVar, "list");
            this.f33033c = dVar;
            this.f33034d = i;
            AbstractC14998d.f33028a.m639a(this.f33034d, i2, this.f33033c.size());
            this.f33032b = i2 - this.f33034d;
        }

        @Override // p626l.p632u.AbstractC14991a
        /* renamed from: b */
        public int mo619b() {
            return this.f33032b;
        }

        @Override // p626l.p632u.AbstractC14998d, java.util.List
        public E get(int i) {
            AbstractC14998d.f33028a.m640a(i, this.f33032b);
            return this.f33033c.get(this.f33034d + i);
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
        return f33028a.m637a(this, (Collection) obj);
    }

    @Override // java.util.List
    public abstract E get(int i);

    @Override // java.util.Collection, java.util.List
    public int hashCode() {
        return f33028a.m638a(this);
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        Iterator<E> it = iterator();
        int i = 0;
        while (true) {
            if (!it.hasNext()) {
                i = -1;
                break;
            } else if (C15149k.m384a(it.next(), obj)) {
                break;
            } else {
                i++;
            }
        }
        return i;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<E> iterator() {
        return new C15000b();
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        int i;
        ListIterator<E> listIterator = listIterator(size());
        while (true) {
            if (listIterator.hasPrevious()) {
                if (C15149k.m384a(listIterator.previous(), obj)) {
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
        return new C15001c(0);
    }

    @Override // java.util.List
    public ListIterator<E> listIterator(int i) {
        return new C15001c(i);
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
        return new C15002d(this, i, i2);
    }
}
