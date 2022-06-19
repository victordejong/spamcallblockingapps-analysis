package org.mistergroup.shouldianswer.utils;

import androidx.p014c.C0379d;
import java.util.Iterator;
import kotlin.p081e.p083b.C1694h;
/* renamed from: org.mistergroup.shouldianswer.utils.h */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/h.class */
public final class C3101h<E> extends C0379d<E> implements Iterable<E> {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.mistergroup.shouldianswer.utils.h$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/h$a.class */
    public static final class C3102a<T> implements Iterator<T> {

        /* renamed from: a */
        private int f9121a;

        /* renamed from: b */
        private final C0379d<T> f9122b;

        public C3102a(C0379d<T> c0379d) {
            C1694h.m3117b(c0379d, "array");
            this.f9122b = c0379d;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f9121a < this.f9122b.m6850b();
        }

        @Override // java.util.Iterator
        public T next() {
            C0379d<T> c0379d = this.f9122b;
            int i = this.f9121a;
            this.f9121a = i + 1;
            return c0379d.m6845c(i);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    @Override // java.lang.Iterable
    public Iterator<E> iterator() {
        return new C3102a(this);
    }
}
