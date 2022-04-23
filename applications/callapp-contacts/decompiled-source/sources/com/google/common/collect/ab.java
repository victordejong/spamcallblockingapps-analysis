package com.google.common.collect;

import com.google.common.base.m;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/ab.class */
public final class ab {

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ab$a.class */
    static final class a<T> extends com.google.common.collect.a<T> {

        /* renamed from: a  reason: collision with root package name */
        static final az<Object> f31952a = new a(new Object[0], 0, 0, 0);

        /* renamed from: b  reason: collision with root package name */
        private final T[] f31953b;

        /* renamed from: c  reason: collision with root package name */
        private final int f31954c;

        a(T[] tArr, int i, int i2, int i3) {
            super(i2, i3);
            this.f31953b = tArr;
            this.f31954c = i;
        }

        @Override // com.google.common.collect.a
        protected final T a(int i) {
            return this.f31953b[this.f31954c + i];
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ab$b.class */
    enum b implements Iterator<Object> {
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
            m.b(false, (Object) "no calls to next() since the last call to remove()");
        }
    }

    private ab() {
    }

    public static <T> T a(Iterator<? extends T> it2, T t) {
        return it2.hasNext() ? (T) it2.next() : t;
    }

    public static String a(Iterator<?> it2) {
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

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> boolean a(Collection<T> collection, Iterator<? extends T> it2) {
        m.a(collection);
        m.a(it2);
        boolean z = false;
        while (it2.hasNext()) {
            z |= collection.add(it2.next());
        }
        return z;
    }

    public static <T> T b(Iterator<T> it2) {
        T next;
        do {
            next = it2.next();
        } while (it2.hasNext());
        return next;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T c(Iterator<T> it2) {
        if (!it2.hasNext()) {
            return null;
        }
        T next = it2.next();
        it2.remove();
        return next;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void d(Iterator<?> it2) {
        m.a(it2);
        while (it2.hasNext()) {
            it2.next();
            it2.remove();
        }
    }
}
