package kotlin.reflect.jvm.internal.impl.d;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import kotlin.a.n;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.a.a;
import kotlin.jvm.internal.i;
import kotlin.jvm.internal.p;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/d/b.class */
public final class b implements Collection<a>, a {

    /* renamed from: a  reason: collision with root package name */
    final Set<a> f37352a;

    @Override // java.util.Collection
    public final /* synthetic */ boolean add(a aVar) {
        a element = aVar;
        p.d(element, "element");
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean addAll(Collection<? extends a> elements) {
        p.d(elements, "elements");
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean contains(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        a element = (a) obj;
        p.d(element, "element");
        return this.f37352a.contains(element);
    }

    @Override // java.util.Collection
    public final boolean containsAll(Collection<? extends Object> elements) {
        p.d(elements, "elements");
        return this.f37352a.containsAll(elements);
    }

    @Override // java.util.Collection
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof b) && p.a(this.f37352a, ((b) obj).f37352a);
    }

    @Override // java.util.Collection
    public final int hashCode() {
        return this.f37352a.hashCode();
    }

    @Override // java.util.Collection
    public final boolean isEmpty() {
        return this.f37352a.isEmpty();
    }

    @Override // java.util.Collection, java.lang.Iterable
    public final Iterator<a> iterator() {
        return this.f37352a.iterator();
    }

    @Override // java.util.Collection
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean removeAll(Collection<? extends Object> elements) {
        p.d(elements, "elements");
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean retainAll(Collection<? extends Object> elements) {
        p.d(elements, "elements");
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final /* bridge */ int size() {
        return this.f37352a.size();
    }

    @Override // java.util.Collection
    public final Object[] toArray() {
        return i.a(this);
    }

    @Override // java.util.Collection
    public final <T> T[] toArray(T[] array) {
        p.d(array, "array");
        return (T[]) i.a(this, array);
    }

    public final String toString() {
        p.d(this, "<this>");
        return n.a(this.f37352a, "/", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62);
    }
}
