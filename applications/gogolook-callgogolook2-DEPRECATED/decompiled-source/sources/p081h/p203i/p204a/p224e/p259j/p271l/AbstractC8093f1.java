package p081h.p203i.p204a.p224e.p259j.p271l;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.AbstractCollection;
import java.util.Arrays;
import java.util.Collection;
/* renamed from: h.i.a.e.j.l.f1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/f1.class */
public abstract class AbstractC8093f1<E> extends AbstractCollection<E> implements Serializable {

    /* renamed from: a */
    public static final Object[] f18823a = new Object[0];

    /* renamed from: a */
    public abstract int mo18370a(Object[] objArr, int i);

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

    /* renamed from: b */
    public Object[] mo18369b() {
        return null;
    }

    /* renamed from: c */
    public int mo18368c() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: q */
    public int mo18367q() {
        throw new UnsupportedOperationException();
    }

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
        return toArray(f18823a);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final <T> T[] toArray(T[] tArr) {
        T[] tArr2;
        C8056d1.m18634a(tArr);
        int size = size();
        if (tArr.length < size) {
            Object[] b = mo18369b();
            if (b != null) {
                return (T[]) Arrays.copyOfRange(b, mo18368c(), mo18367q(), tArr.getClass());
            }
            tArr2 = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), size));
        } else {
            tArr2 = tArr;
            if (tArr.length > size) {
                tArr[size] = null;
                tArr2 = tArr;
            }
        }
        mo18370a(tArr2, 0);
        return tArr2;
    }
}
