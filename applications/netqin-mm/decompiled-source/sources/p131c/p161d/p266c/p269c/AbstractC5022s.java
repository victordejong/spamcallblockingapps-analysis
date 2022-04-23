package p131c.p161d.p266c.p269c;

import com.google.common.collect.Iterators;
import java.util.Collection;
import java.util.Iterator;
import p131c.p161d.p266c.p267a.C4928k;
/* renamed from: c.d.c.c.s */
/* loaded from: classes2-dex2jar.jar:c/d/c/c/s.class */
public abstract class AbstractC5022s<E> extends AbstractC5040z implements Collection<E> {
    @Override // java.util.Collection
    public boolean add(E e) {
        return delegate().add(e);
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends E> collection) {
        return delegate().addAll(collection);
    }

    @Override // java.util.Collection
    public void clear() {
        delegate().clear();
    }

    @Override // java.util.Collection
    public boolean contains(Object obj) {
        return delegate().contains(obj);
    }

    @Override // java.util.Collection
    public boolean containsAll(Collection<?> collection) {
        return delegate().containsAll(collection);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5040z
    public abstract /* bridge */ /* synthetic */ Object delegate();

    @Override // p131c.p161d.p266c.p269c.AbstractC5040z
    public abstract Collection<E> delegate();

    @Override // java.util.Collection
    public boolean isEmpty() {
        return delegate().isEmpty();
    }

    public Iterator<E> iterator() {
        return delegate().iterator();
    }

    @Override // java.util.Collection
    public boolean remove(Object obj) {
        return delegate().remove(obj);
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        return delegate().removeAll(collection);
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection<?> collection) {
        return delegate().retainAll(collection);
    }

    @Override // java.util.Collection
    public int size() {
        return delegate().size();
    }

    public boolean standardAddAll(Collection<? extends E> collection) {
        return Iterators.m8267a(this, collection.iterator());
    }

    public void standardClear() {
        Iterators.m8258b(iterator());
    }

    public boolean standardContains(Object obj) {
        return Iterators.m8262a((Iterator<?>) iterator(), obj);
    }

    public boolean standardContainsAll(Collection<?> collection) {
        return C5008o.m24654a((Collection<?>) this, collection);
    }

    public boolean standardIsEmpty() {
        return !iterator().hasNext();
    }

    public boolean standardRemove(Object obj) {
        Iterator<E> it = iterator();
        while (it.hasNext()) {
            if (C4928k.m24808a(it.next(), obj)) {
                it.remove();
                return true;
            }
        }
        return false;
    }

    public boolean standardRemoveAll(Collection<?> collection) {
        return Iterators.m8261a((Iterator<?>) iterator(), collection);
    }

    public boolean standardRetainAll(Collection<?> collection) {
        return Iterators.m8256b((Iterator<?>) iterator(), collection);
    }

    public Object[] standardToArray() {
        return toArray(new Object[size()]);
    }

    public <T> T[] standardToArray(T[] tArr) {
        return (T[]) C5000k0.m24707a((Collection<?>) this, (Object[]) tArr);
    }

    public String standardToString() {
        return C5008o.m24656a((Collection<?>) this);
    }

    public Object[] toArray() {
        return delegate().toArray();
    }

    public <T> T[] toArray(T[] tArr) {
        return (T[]) delegate().toArray(tArr);
    }
}
