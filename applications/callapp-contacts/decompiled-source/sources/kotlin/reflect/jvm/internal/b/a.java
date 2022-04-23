package kotlin.reflect.jvm.internal.b;

import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/b/a.class */
public final class a<E> implements Iterable<E> {

    /* renamed from: d  reason: collision with root package name */
    private static final a<Object> f36887d = new a<>();

    /* renamed from: a  reason: collision with root package name */
    public final E f36888a;

    /* renamed from: b  reason: collision with root package name */
    public final a<E> f36889b;

    /* renamed from: c  reason: collision with root package name */
    public final int f36890c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.b.a$a  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/b/a$a.class */
    public static final class C0620a<E> implements Iterator<E> {

        /* renamed from: a  reason: collision with root package name */
        private a<E> f36891a;

        public C0620a(a<E> aVar) {
            this.f36891a = aVar;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f36891a.f36890c > 0;
        }

        @Override // java.util.Iterator
        public final E next() {
            E e = this.f36891a.f36888a;
            this.f36891a = this.f36891a.f36889b;
            return e;
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    private a() {
        this.f36890c = 0;
        this.f36888a = null;
        this.f36889b = null;
    }

    private a(E e, a<E> aVar) {
        this.f36888a = e;
        this.f36889b = aVar;
        this.f36890c = aVar.f36890c + 1;
    }

    public static <E> a<E> a() {
        return (a<E>) f36887d;
    }

    private E b(int i) {
        if (i < 0 || i > this.f36890c) {
            throw new IndexOutOfBoundsException();
        }
        try {
            return c(i).next();
        } catch (NoSuchElementException e) {
            throw new IndexOutOfBoundsException("Index: ".concat(String.valueOf(i)));
        }
    }

    private a<E> b(Object obj) {
        if (this.f36890c == 0) {
            return this;
        }
        if (this.f36888a.equals(obj)) {
            return this.f36889b;
        }
        a<E> b2 = this.f36889b.b(obj);
        return b2 == this.f36889b ? this : new a<>(this.f36888a, b2);
    }

    private Iterator<E> c(int i) {
        return new C0620a(d(i));
    }

    private a<E> d(int i) {
        a<E> aVar = this;
        while (i >= 0 && i <= aVar.f36890c) {
            if (i == 0) {
                return aVar;
            }
            aVar = aVar.f36889b;
            i--;
        }
        throw new IndexOutOfBoundsException();
    }

    public final a<E> a(int i) {
        return b(b(i));
    }

    public final a<E> a(E e) {
        return new a<>(e, this);
    }

    @Override // java.lang.Iterable
    public final Iterator<E> iterator() {
        return c(0);
    }
}
