package com.google.common.collect;

import com.google.common.base.C15391m;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* renamed from: com.google.common.collect.ab */
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/ab.class */
public final class C15403ab {

    /* renamed from: com.google.common.collect.ab$a */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ab$a.class */
    static final class C15405a<T> extends AbstractC15401a<T> {

        /* renamed from: a */
        static final AbstractC15494az<Object> f55656a = new C15405a(new Object[0], 0, 0, 0);

        /* renamed from: b */
        private final T[] f55657b;

        /* renamed from: c */
        private final int f55658c;

        C15405a(T[] tArr, int i, int i2, int i3) {
            super(i2, i3);
            this.f55657b = tArr;
            this.f55658c = i;
        }

        @Override // com.google.common.collect.AbstractC15401a
        /* renamed from: a */
        protected final T mo8714a(int i) {
            return this.f55657b[this.f55658c + i];
        }
    }

    /* renamed from: com.google.common.collect.ab$b */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ab$b.class */
    enum EnumC15406b implements Iterator<Object> {
        INSTANCE;

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
            C15391m.m8933b(false, (Object) "no calls to next() since the last call to remove()");
        }
    }

    private C15403ab() {
    }

    /* renamed from: a */
    public static <T> T m8913a(Iterator<? extends T> it2, T t) {
        return it2.hasNext() ? it2.next() : t;
    }

    /* renamed from: a */
    public static String m8914a(Iterator<?> it2) {
        StringBuilder sb = new StringBuilder("[");
        boolean z = true;
        while (it2.hasNext()) {
            if (!z) {
                sb.append(", ");
            }
            z = false;
            sb.append(it2.next());
        }
        sb.append(']');
        return sb.toString();
    }

    /* renamed from: a */
    public static <T> boolean m8915a(Collection<T> collection, Iterator<? extends T> it2) {
        C15391m.m8946a(collection);
        C15391m.m8946a(it2);
        boolean z = false;
        while (true) {
            boolean z2 = z;
            if (it2.hasNext()) {
                z = z2 | collection.add(it2.next());
            } else {
                return z2;
            }
        }
    }

    /* renamed from: b */
    public static <T> T m8912b(Iterator<T> it2) {
        T next;
        do {
            next = it2.next();
        } while (it2.hasNext());
        return next;
    }

    /* renamed from: c */
    public static <T> T m8911c(Iterator<T> it2) {
        if (it2.hasNext()) {
            T next = it2.next();
            it2.remove();
            return next;
        }
        return null;
    }

    /* renamed from: d */
    public static void m8910d(Iterator<?> it2) {
        C15391m.m8946a(it2);
        while (it2.hasNext()) {
            it2.next();
            it2.remove();
        }
    }
}
