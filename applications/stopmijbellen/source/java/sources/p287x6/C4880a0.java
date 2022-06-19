package p287x6;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
/* renamed from: x6.a0 */
/* loaded from: classes-dex2jar.jar:x6/a0.class */
public class C4880a0 extends AbstractList<String> implements AbstractC4911k, RandomAccess {

    /* renamed from: a */
    public final AbstractC4911k f14945a;

    /* renamed from: x6.a0$a */
    /* loaded from: classes-dex2jar.jar:x6/a0$a.class */
    public class C4881a implements ListIterator<String> {

        /* renamed from: a */
        public ListIterator<String> f14946a;

        public C4881a(C4880a0 c4880a0, int i) {
            this.f14946a = c4880a0.f14945a.listIterator(i);
        }

        @Override // java.util.ListIterator
        public void add(String str) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            return this.f14946a.hasNext();
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.f14946a.hasPrevious();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public Object next() {
            return this.f14946a.next();
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.f14946a.nextIndex();
        }

        @Override // java.util.ListIterator
        public String previous() {
            return this.f14946a.previous();
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.f14946a.previousIndex();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator
        public void set(String str) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: x6.a0$b */
    /* loaded from: classes-dex2jar.jar:x6/a0$b.class */
    public class C4882b implements Iterator<String> {

        /* renamed from: a */
        public Iterator<String> f14947a;

        public C4882b(C4880a0 c4880a0) {
            this.f14947a = c4880a0.f14945a.iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f14947a.hasNext();
        }

        @Override // java.util.Iterator
        public String next() {
            return this.f14947a.next();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public C4880a0(AbstractC4911k abstractC4911k) {
        this.f14945a = abstractC4911k;
    }

    @Override // p287x6.AbstractC4911k
    /* renamed from: A */
    public AbstractC4911k mo269A() {
        return this;
    }

    @Override // p287x6.AbstractC4911k
    /* renamed from: J */
    public void mo268J(AbstractC4890c abstractC4890c) {
        throw new UnsupportedOperationException();
    }

    @Override // p287x6.AbstractC4911k
    /* renamed from: K */
    public Object mo267K(int i) {
        return this.f14945a.mo267K(i);
    }

    @Override // p287x6.AbstractC4911k
    /* renamed from: L */
    public List<?> mo266L() {
        return this.f14945a.mo266L();
    }

    @Override // java.util.AbstractList, java.util.List
    public Object get(int i) {
        return (String) this.f14945a.get(i);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<String> iterator() {
        return new C4882b(this);
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator<String> listIterator(int i) {
        return new C4881a(this, i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f14945a.size();
    }
}
