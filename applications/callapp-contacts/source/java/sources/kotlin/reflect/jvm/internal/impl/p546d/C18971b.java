package kotlin.reflect.jvm.internal.impl.p546d;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.C18517i;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.p534a.AbstractC18481a;
import kotlin.p518a.C18282n;
/* renamed from: kotlin.reflect.jvm.internal.impl.d.b */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/d/b.class */
public final class C18971b implements Collection<AbstractC18970a>, AbstractC18481a {

    /* renamed from: a */
    final Set<AbstractC18970a> f64707a;

    @Override // java.util.Collection
    public final /* synthetic */ boolean add(AbstractC18970a abstractC18970a) {
        AbstractC18970a element = abstractC18970a;
        C18524p.m3840d(element, "element");
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean addAll(Collection<? extends AbstractC18970a> elements) {
        C18524p.m3840d(elements, "elements");
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean contains(Object obj) {
        if (!(obj instanceof AbstractC18970a)) {
            return false;
        }
        AbstractC18970a element = (AbstractC18970a) obj;
        C18524p.m3840d(element, "element");
        return this.f64707a.contains(element);
    }

    @Override // java.util.Collection
    public final boolean containsAll(Collection<? extends Object> elements) {
        C18524p.m3840d(elements, "elements");
        return this.f64707a.containsAll(elements);
    }

    @Override // java.util.Collection
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C18971b) && C18524p.m3850a(this.f64707a, ((C18971b) obj).f64707a);
    }

    @Override // java.util.Collection
    public final int hashCode() {
        return this.f64707a.hashCode();
    }

    @Override // java.util.Collection
    public final boolean isEmpty() {
        return this.f64707a.isEmpty();
    }

    @Override // java.util.Collection, java.lang.Iterable
    public final Iterator<AbstractC18970a> iterator() {
        return this.f64707a.iterator();
    }

    @Override // java.util.Collection
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean removeAll(Collection<? extends Object> elements) {
        C18524p.m3840d(elements, "elements");
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean retainAll(Collection<? extends Object> elements) {
        C18524p.m3840d(elements, "elements");
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final /* bridge */ int size() {
        return this.f64707a.size();
    }

    @Override // java.util.Collection
    public final Object[] toArray() {
        return C18517i.m3857a(this);
    }

    @Override // java.util.Collection
    public final <T> T[] toArray(T[] array) {
        C18524p.m3840d(array, "array");
        return (T[]) C18517i.m3856a(this, array);
    }

    public final String toString() {
        C18524p.m3840d(this, "<this>");
        return C18282n.m4148a(this.f64707a, "/", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62);
    }
}
