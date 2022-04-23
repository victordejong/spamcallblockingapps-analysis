package kotlin.reflect.jvm.internal.impl.protobuf;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/v.class */
public final class v extends AbstractList<String> implements RandomAccess, n {

    /* renamed from: a  reason: collision with root package name */
    private final n f38197a;

    public v(n nVar) {
        this.f38197a = nVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.n
    public final List<?> a() {
        return this.f38197a.a();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.n
    public final d a(int i) {
        return this.f38197a.a(i);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.n
    public final void a(d dVar) {
        throw new UnsupportedOperationException();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.n
    public final n b() {
        return this;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        return (String) this.f38197a.get(i);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<String> iterator() {
        return new Iterator<String>() { // from class: kotlin.reflect.jvm.internal.impl.protobuf.v.2

            /* renamed from: a  reason: collision with root package name */
            Iterator<String> f38201a;

            {
                this.f38201a = v.this.f38197a.iterator();
            }

            @Override // java.util.Iterator
            public final boolean hasNext() {
                return this.f38201a.hasNext();
            }

            @Override // java.util.Iterator
            public final /* bridge */ /* synthetic */ String next() {
                return this.f38201a.next();
            }

            @Override // java.util.Iterator
            public final void remove() {
                throw new UnsupportedOperationException();
            }
        };
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<String> listIterator(int i) {
        return new ListIterator<String>(i) { // from class: kotlin.reflect.jvm.internal.impl.protobuf.v.1

            /* renamed from: a  reason: collision with root package name */
            ListIterator<String> f38198a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ int f38199b;

            {
                this.f38199b = i;
                this.f38198a = v.this.f38197a.listIterator(i);
            }

            @Override // java.util.ListIterator
            public final /* synthetic */ void add(String str) {
                throw new UnsupportedOperationException();
            }

            @Override // java.util.ListIterator, java.util.Iterator
            public final boolean hasNext() {
                return this.f38198a.hasNext();
            }

            @Override // java.util.ListIterator
            public final boolean hasPrevious() {
                return this.f38198a.hasPrevious();
            }

            @Override // java.util.ListIterator, java.util.Iterator
            public final /* bridge */ /* synthetic */ Object next() {
                return this.f38198a.next();
            }

            @Override // java.util.ListIterator
            public final int nextIndex() {
                return this.f38198a.nextIndex();
            }

            @Override // java.util.ListIterator
            public final /* bridge */ /* synthetic */ String previous() {
                return this.f38198a.previous();
            }

            @Override // java.util.ListIterator
            public final int previousIndex() {
                return this.f38198a.previousIndex();
            }

            @Override // java.util.ListIterator, java.util.Iterator
            public final void remove() {
                throw new UnsupportedOperationException();
            }

            @Override // java.util.ListIterator
            public final /* synthetic */ void set(String str) {
                throw new UnsupportedOperationException();
            }
        };
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f38197a.size();
    }
}
