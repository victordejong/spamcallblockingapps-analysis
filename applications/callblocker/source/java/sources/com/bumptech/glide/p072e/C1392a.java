package com.bumptech.glide.p072e;

import com.bumptech.glide.load.AbstractC1664d;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.bumptech.glide.e.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/e/a.class */
public class C1392a {

    /* renamed from: a */
    private final List<C1393a<?>> f4606a = new ArrayList();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.e.a$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/e/a$a.class */
    public static final class C1393a<T> {

        /* renamed from: a */
        final AbstractC1664d<T> f4607a;

        /* renamed from: b */
        private final Class<T> f4608b;

        C1393a(Class<T> cls, AbstractC1664d<T> abstractC1664d) {
            this.f4608b = cls;
            this.f4607a = abstractC1664d;
        }

        /* renamed from: a */
        boolean m17218a(Class<?> cls) {
            return this.f4608b.isAssignableFrom(cls);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0027, code lost:
        r4 = r0.f4607a;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <T> com.bumptech.glide.load.AbstractC1664d<T> m17220a(java.lang.Class<T> r4) {
        /*
            r3 = this;
            r0 = r3
            monitor-enter(r0)
            r0 = r3
            java.util.List<com.bumptech.glide.e.a$a<?>> r0 = r0.f4606a     // Catch: java.lang.Throwable -> L35
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> L35
            r5 = r0
        Lc:
            r0 = r5
            boolean r0 = r0.hasNext()     // Catch: java.lang.Throwable -> L35
            if (r0 == 0) goto L30
            r0 = r5
            java.lang.Object r0 = r0.next()     // Catch: java.lang.Throwable -> L35
            com.bumptech.glide.e.a$a r0 = (com.bumptech.glide.p072e.C1392a.C1393a) r0     // Catch: java.lang.Throwable -> L35
            r6 = r0
            r0 = r6
            r1 = r4
            boolean r0 = r0.m17218a(r1)     // Catch: java.lang.Throwable -> L35
            if (r0 == 0) goto Lc
            r0 = r6
            com.bumptech.glide.load.d<T> r0 = r0.f4607a     // Catch: java.lang.Throwable -> L35
            r4 = r0
        L2c:
            r0 = r3
            monitor-exit(r0)
            r0 = r4
            return r0
        L30:
            r0 = 0
            r4 = r0
            goto L2c
        L35:
            r4 = move-exception
            r0 = r3
            monitor-exit(r0)
            r0 = r4
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.p072e.C1392a.m17220a(java.lang.Class):com.bumptech.glide.load.d");
    }

    /* renamed from: a */
    public <T> void m17219a(Class<T> cls, AbstractC1664d<T> abstractC1664d) {
        synchronized (this) {
            this.f4606a.add(new C1393a<>(cls, abstractC1664d));
        }
    }
}
