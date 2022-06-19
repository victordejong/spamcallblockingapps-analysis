package kotlin.reflect.jvm.internal.p536b;

import java.util.Iterator;
import java.util.NoSuchElementException;
/* renamed from: kotlin.reflect.jvm.internal.b.a */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/b/a.class */
public final class C18638a<E> implements Iterable<E> {

    /* renamed from: d */
    private static final C18638a<Object> f63709d = new C18638a<>();

    /* renamed from: a */
    public final E f63710a;

    /* renamed from: b */
    public final C18638a<E> f63711b;

    /* renamed from: c */
    public final int f63712c;

    /* renamed from: kotlin.reflect.jvm.internal.b.a$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/b/a$a.class */
    public static final class C18639a<E> implements Iterator<E> {

        /* renamed from: a */
        private C18638a<E> f63713a;

        public C18639a(C18638a<E> c18638a) {
            this.f63713a = c18638a;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f63713a.f63712c > 0;
        }

        @Override // java.util.Iterator
        public final E next() {
            E e = this.f63713a.f63710a;
            this.f63713a = this.f63713a.f63711b;
            return e;
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    private C18638a() {
        this.f63712c = 0;
        this.f63710a = null;
        this.f63711b = null;
    }

    private C18638a(E e, C18638a<E> c18638a) {
        this.f63710a = e;
        this.f63711b = c18638a;
        this.f63712c = c18638a.f63712c + 1;
    }

    /* renamed from: a */
    public static <E> C18638a<E> m3753a() {
        return (C18638a<E>) f63709d;
    }

    /* renamed from: b */
    private E m3749b(int i) {
        if (i < 0 || i > this.f63712c) {
            throw new IndexOutOfBoundsException();
        }
        try {
            return m3747c(i).next();
        } catch (NoSuchElementException e) {
            throw new IndexOutOfBoundsException("Index: ".concat(String.valueOf(i)));
        }
    }

    /* renamed from: b */
    private C18638a<E> m3748b(Object obj) {
        if (this.f63712c == 0) {
            return this;
        }
        if (this.f63710a.equals(obj)) {
            return this.f63711b;
        }
        C18638a<E> m3748b = this.f63711b.m3748b(obj);
        return m3748b == this.f63711b ? this : new C18638a<>(this.f63710a, m3748b);
    }

    /* renamed from: c */
    private Iterator<E> m3747c(int i) {
        return new C18639a(m3746d(i));
    }

    /* renamed from: d */
    private C18638a<E> m3746d(int i) {
        C18638a<E> c18638a = this;
        while (i >= 0 && i <= c18638a.f63712c) {
            if (i == 0) {
                return c18638a;
            }
            c18638a = c18638a.f63711b;
            i--;
        }
        throw new IndexOutOfBoundsException();
    }

    /* renamed from: a */
    public final C18638a<E> m3752a(int i) {
        return m3748b(m3749b(i));
    }

    /* renamed from: a */
    public final C18638a<E> m3751a(E e) {
        return new C18638a<>(e, this);
    }

    @Override // java.lang.Iterable
    public final Iterator<E> iterator() {
        return m3747c(0);
    }
}
