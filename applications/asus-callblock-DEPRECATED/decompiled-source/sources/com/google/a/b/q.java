package com.google.a.b;

import com.google.a.a.a;
import com.google.a.a.c;
import com.google.a.a.d;
import com.google.a.a.e;
import com.google.a.a.f;
import com.google.a.b.b;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes-dex2jar.jar:com/google/a/b/q.class */
public final class q {

    /* renamed from: a  reason: collision with root package name */
    static final ae<Object> f3714a = new ae<Object>() { // from class: com.google.a.b.q.1
        @Override // java.util.Iterator
        public final boolean hasNext() {
            return false;
        }

        @Override // java.util.Iterator
        public final Object next() {
            throw new NoSuchElementException();
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private static final Iterator<Object> f3715b = new Iterator<Object>() { // from class: com.google.a.b.q.5
        @Override // java.util.Iterator
        public final boolean hasNext() {
            return false;
        }

        @Override // java.util.Iterator
        public final Object next() {
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new IllegalStateException();
        }
    };

    public static <T> ae<T> a() {
        return (ae<T>) f3714a;
    }

    public static <T> ae<T> a(final T t) {
        return new ae<T>() { // from class: com.google.a.b.q.4

            /* renamed from: a  reason: collision with root package name */
            boolean f3719a;

            @Override // java.util.Iterator
            public final boolean hasNext() {
                return !this.f3719a;
            }

            /* JADX WARN: Type inference failed for: r0v4, types: [T, java.lang.Object] */
            @Override // java.util.Iterator
            public final T next() {
                if (this.f3719a) {
                    throw new NoSuchElementException();
                }
                this.f3719a = true;
                return t;
            }
        };
    }

    public static <T> ae<T> a(final Iterator<?> it, Class<T> cls) {
        final e<Object> a2 = f.a(cls);
        d.a(it);
        d.a(a2);
        return new b<T>() { // from class: com.google.a.b.q.6
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r4v0 */
            /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Object] */
            @Override // com.google.a.b.b
            protected final T a() {
                T t;
                while (true) {
                    if (!it.hasNext()) {
                        this.f3685a = b.a.c;
                        t = 0;
                        break;
                    }
                    t = it.next();
                    if (a2.a(t)) {
                        break;
                    }
                }
                return t;
            }
        };
    }

    public static <T> ae<T> a(final T... tArr) {
        d.a(tArr);
        return new a<T>(tArr.length) { // from class: com.google.a.b.q.2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.a.b.a
            protected final T a(int i) {
                return tArr[i];
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> ae<T> a(final T[] tArr, final int i, int i2) {
        d.a(i2 >= 0);
        d.a(i, i + i2, tArr.length);
        return new a<T>(i2) { // from class: com.google.a.b.q.3
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.a.b.a
            protected final T a(int i3) {
                return tArr[i + i3];
            }
        };
    }

    public static String a(Iterator<?> it) {
        String sb;
        if (!it.hasNext()) {
            sb = "[]";
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append('[').append(it.next());
            while (it.hasNext()) {
                sb2.append(", ").append(it.next());
            }
            sb = sb2.append(']').toString();
        }
        return sb;
    }

    public static <F, T> Iterator<T> a(final Iterator<F> it, final a<? super F, ? extends T> aVar) {
        d.a(it);
        d.a(aVar);
        return new Iterator<T>() { // from class: com.google.a.b.q.7
            @Override // java.util.Iterator
            public final boolean hasNext() {
                return it.hasNext();
            }

            /* JADX WARN: Type inference failed for: r0v5, types: [T, java.lang.Object] */
            @Override // java.util.Iterator
            public final T next() {
                return aVar.a(it.next());
            }

            @Override // java.util.Iterator
            public final void remove() {
                it.remove();
            }
        };
    }

    public static boolean a(Iterator<?> it, Object obj) {
        boolean z = true;
        if (obj == null) {
            while (it.hasNext()) {
                if (it.next() == null) {
                    break;
                }
            }
            z = false;
        } else {
            while (it.hasNext()) {
                if (obj.equals(it.next())) {
                    break;
                }
            }
            z = false;
        }
        return z;
    }

    public static boolean a(Iterator<?> it, Iterator<?> it2) {
        boolean z = false;
        while (true) {
            if (it.hasNext()) {
                if (it2.hasNext()) {
                    if (!c.a(it.next(), it2.next())) {
                        break;
                    }
                } else {
                    break;
                }
            } else if (!it2.hasNext()) {
                z = true;
            }
        }
        return z;
    }

    public static <T> T b(Iterator<T> it) {
        T next = it.next();
        if (!it.hasNext()) {
            return next;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("expected one element but was: <" + next);
        for (int i = 0; i < 4 && it.hasNext(); i++) {
            sb.append(", " + it.next());
        }
        if (it.hasNext()) {
            sb.append(", ...");
        }
        sb.append('>');
        throw new IllegalArgumentException(sb.toString());
    }
}
