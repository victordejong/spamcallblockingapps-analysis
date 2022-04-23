package p081h.p203i.p204a.p224e.p259j.p271l;

import java.util.AbstractList;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;
/* renamed from: h.i.a.e.j.l.h8 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/h8.class */
public abstract class AbstractC8145h8<E> extends AbstractList<E> implements AbstractC8409v9<E> {

    /* renamed from: a */
    public boolean f18873a = true;

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(E e) {
        m18479b();
        return super.add(e);
    }

    @Override // java.util.AbstractList, java.util.List
    public boolean addAll(int i, Collection<? extends E> collection) {
        m18479b();
        return super.addAll(i, collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends E> collection) {
        m18479b();
        return super.addAll(collection);
    }

    /* renamed from: b */
    public final void m18479b() {
        if (!this.f18873a) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        m18479b();
        super.clear();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8409v9
    /* renamed from: e */
    public final void mo18116e() {
        this.f18873a = false;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof List)) {
            return false;
        }
        if (!(obj instanceof RandomAccess)) {
            return super.equals(obj);
        }
        List list = (List) obj;
        int size = size();
        if (size != list.size()) {
            return false;
        }
        for (int i = 0; i < size; i++) {
            if (!get(i).equals(list.get(i))) {
                return false;
            }
        }
        return true;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8409v9
    /* renamed from: f */
    public boolean mo18115f() {
        return this.f18873a;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int size = size();
        int i = 1;
        for (int i2 = 0; i2 < size; i2++) {
            i = (i * 31) + get(i2).hashCode();
        }
        return i;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        m18479b();
        return super.remove(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean removeAll(Collection<?> collection) {
        m18479b();
        return super.removeAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean retainAll(Collection<?> collection) {
        m18479b();
        return super.retainAll(collection);
    }
}
