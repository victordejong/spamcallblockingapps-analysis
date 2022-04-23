package kotlin.a.a;

import com.mopub.common.AdType;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.a.a.c;
import kotlin.a.g;
import kotlin.jvm.internal.a.h;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��>\n\u0002\u0018\u0002\n��\n\u0002\u0010#\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u001e\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010)\n\u0002\b\u0004\b��\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u0019\b��\u0012\u0010\u0010\u0004\u001a\f\u0012\u0004\u0012\u00028��\u0012\u0002\b\u00030\u0005¢\u0006\u0002\u0010\u0006J\u0015\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00028��H\u0016¢\u0006\u0002\u0010\u000eJ\u0016\u0010\u000f\u001a\u00020\f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028��0\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\u0016\u0010\u0014\u001a\u00020\f2\u0006\u0010\r\u001a\u00028��H\u0096\u0002¢\u0006\u0002\u0010\u000eJ\b\u0010\u0015\u001a\u00020\fH\u0016J\u000f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028��0\u0017H\u0096\u0002J\u0015\u0010\u0018\u001a\u00020\f2\u0006\u0010\r\u001a\u00028��H\u0016¢\u0006\u0002\u0010\u000eJ\u0016\u0010\u0019\u001a\u00020\f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028��0\u0011H\u0016J\u0016\u0010\u001a\u001a\u00020\f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028��0\u0011H\u0016R\u0018\u0010\u0004\u001a\f\u0012\u0004\u0012\u00028��\u0012\u0002\b\u00030\u0005X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0007\u001a\u00020\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\n¨\u0006\u001b"}, d2 = {"Lkotlin/collections/builders/MapBuilderKeys;", "E", "", "Lkotlin/collections/AbstractMutableSet;", "backing", "Lkotlin/collections/builders/MapBuilder;", "(Lkotlin/collections/builders/MapBuilder;)V", "size", "", "getSize", "()I", "add", "", "element", "(Ljava/lang/Object;)Z", "addAll", "elements", "", AdType.CLEAR, "", "contains", "isEmpty", "iterator", "", "remove", "removeAll", "retainAll", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/a/a/e.class */
public final class e<E> extends g<E> implements Set<E>, h {

    /* renamed from: a  reason: collision with root package name */
    private final c<E, ?> f36564a;

    public e(c<E, ?> backing) {
        p.d(backing, "backing");
        this.f36564a = backing;
    }

    @Override // kotlin.a.g
    public final int a() {
        return this.f36564a.size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean add(E e) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean addAll(Collection<? extends E> elements) {
        p.d(elements, "elements");
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.f36564a.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.f36564a.containsKey(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return this.f36564a.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<E> iterator() {
        return new c.e(this.f36564a);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        return this.f36564a.c((c<E, ?>) obj) >= 0;
    }

    @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean removeAll(Collection<? extends Object> elements) {
        p.d(elements, "elements");
        this.f36564a.a();
        return super.removeAll(elements);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean retainAll(Collection<? extends Object> elements) {
        p.d(elements, "elements");
        this.f36564a.a();
        return super.retainAll(elements);
    }
}
