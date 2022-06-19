package com.google.common.collect;

import com.google.common.base.C8756j;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* renamed from: com.google.common.collect.j */
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/j.class */
public final class C8811j {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.common.collect.j$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/j$a.class */
    public static final class C8812a extends AbstractC8821q<T> {

        /* renamed from: d */
        boolean f38724d;

        /* renamed from: e */
        final /* synthetic */ Object f38725e;

        C8812a(Object obj) {
            this.f38725e = obj;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return !this.f38724d;
        }

        /* JADX WARN: Type inference failed for: r0v5, types: [T, java.lang.Object] */
        @Override // java.util.Iterator
        public T next() {
            if (!this.f38724d) {
                this.f38724d = true;
                return this.f38725e;
            }
            throw new NoSuchElementException();
        }
    }

    /* renamed from: a */
    public static <T> boolean m2630a(Collection<T> collection, Iterator<? extends T> it) {
        C8756j.m2789l(collection);
        C8756j.m2789l(it);
        boolean z = false;
        while (true) {
            boolean z2 = z;
            if (it.hasNext()) {
                z = z2 | collection.add(it.next());
            } else {
                return z2;
            }
        }
    }

    /* renamed from: b */
    public static void m2629b(Iterator<?> it) {
        C8756j.m2789l(it);
        while (it.hasNext()) {
            it.next();
            it.remove();
        }
    }

    /* renamed from: c */
    public static boolean m2628c(Iterator<?> it, Object obj) {
        if (obj == null) {
            while (it.hasNext()) {
                if (it.next() == null) {
                    return true;
                }
            }
            return false;
        }
        while (it.hasNext()) {
            if (obj.equals(it.next())) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:4:0x0009  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m2627d(java.util.Iterator<?> r3, java.util.Iterator<?> r4) {
        /*
        L0:
            r0 = r3
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L28
            r0 = r4
            boolean r0 = r0.hasNext()
            if (r0 != 0) goto L14
            r0 = 0
            return r0
        L14:
            r0 = r3
            java.lang.Object r0 = r0.next()
            r1 = r4
            java.lang.Object r1 = r1.next()
            boolean r0 = com.google.common.base.C8751g.m2804a(r0, r1)
            if (r0 != 0) goto L0
            r0 = 0
            return r0
        L28:
            r0 = r4
            boolean r0 = r0.hasNext()
            r1 = 1
            r0 = r0 ^ r1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.C8811j.m2627d(java.util.Iterator, java.util.Iterator):boolean");
    }

    /* renamed from: e */
    public static <T> AbstractC8821q<T> m2626e(T t) {
        return new C8812a(t);
    }
}
