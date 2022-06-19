package com.bumptech.glide.p072e;

import com.bumptech.glide.load.AbstractC1783j;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.bumptech.glide.e.f */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/e/f.class */
public class C1399f {

    /* renamed from: a */
    private final List<C1400a<?>> f4620a = new ArrayList();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.e.f$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/e/f$a.class */
    public static final class C1400a<T> {

        /* renamed from: a */
        final AbstractC1783j<T> f4621a;

        /* renamed from: b */
        private final Class<T> f4622b;

        C1400a(Class<T> cls, AbstractC1783j<T> abstractC1783j) {
            this.f4622b = cls;
            this.f4621a = abstractC1783j;
        }

        /* renamed from: a */
        boolean m17201a(Class<?> cls) {
            return this.f4622b.isAssignableFrom(cls);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002b, code lost:
        r4 = r0.f4621a;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <Z> com.bumptech.glide.load.AbstractC1783j<Z> m17203a(java.lang.Class<Z> r4) {
        /*
            r3 = this;
            r0 = r3
            monitor-enter(r0)
            r0 = r3
            java.util.List<com.bumptech.glide.e.f$a<?>> r0 = r0.f4620a     // Catch: java.lang.Throwable -> L40
            int r0 = r0.size()     // Catch: java.lang.Throwable -> L40
            r5 = r0
            r0 = 0
            r6 = r0
        Le:
            r0 = r6
            r1 = r5
            if (r0 >= r1) goto L3b
            r0 = r3
            java.util.List<com.bumptech.glide.e.f$a<?>> r0 = r0.f4620a     // Catch: java.lang.Throwable -> L40
            r1 = r6
            java.lang.Object r0 = r0.get(r1)     // Catch: java.lang.Throwable -> L40
            com.bumptech.glide.e.f$a r0 = (com.bumptech.glide.p072e.C1399f.C1400a) r0     // Catch: java.lang.Throwable -> L40
            r7 = r0
            r0 = r7
            r1 = r4
            boolean r0 = r0.m17201a(r1)     // Catch: java.lang.Throwable -> L40
            if (r0 == 0) goto L35
            r0 = r7
            com.bumptech.glide.load.j<T> r0 = r0.f4621a     // Catch: java.lang.Throwable -> L40
            r4 = r0
        L31:
            r0 = r3
            monitor-exit(r0)
            r0 = r4
            return r0
        L35:
            int r6 = r6 + 1
            goto Le
        L3b:
            r0 = 0
            r4 = r0
            goto L31
        L40:
            r4 = move-exception
            r0 = r3
            monitor-exit(r0)
            r0 = r4
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.p072e.C1399f.m17203a(java.lang.Class):com.bumptech.glide.load.j");
    }

    /* renamed from: a */
    public <Z> void m17202a(Class<Z> cls, AbstractC1783j<Z> abstractC1783j) {
        synchronized (this) {
            this.f4620a.add(new C1400a<>(cls, abstractC1783j));
        }
    }
}
