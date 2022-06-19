package kotlinx.coroutines.internal;

import kotlinx.coroutines.AbstractC1866bu;
/* renamed from: kotlinx.coroutines.internal.l */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/internal/l.class */
public final class C1914l {

    /* renamed from: a */
    public static final AbstractC1866bu f4663a;

    /* renamed from: b */
    public static final C1914l f4664b;

    static {
        C1914l c1914l = new C1914l();
        f4664b = c1914l;
        f4663a = c1914l.m2615a();
    }

    private C1914l() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0086, code lost:
        if (r8 != null) goto L22;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final kotlinx.coroutines.AbstractC1866bu m2615a() {
        /*
            r7 = this;
            java.lang.Class<kotlinx.coroutines.internal.MainDispatcherFactory> r0 = kotlinx.coroutines.internal.MainDispatcherFactory.class
            java.lang.Class<kotlinx.coroutines.internal.MainDispatcherFactory> r1 = kotlinx.coroutines.internal.MainDispatcherFactory.class
            java.lang.ClassLoader r1 = r1.getClassLoader()     // Catch: java.lang.Throwable -> La0
            java.util.ServiceLoader r0 = java.util.ServiceLoader.load(r0, r1)     // Catch: java.lang.Throwable -> La0
            r8 = r0
            r0 = r8
            java.lang.String r1 = "ServiceLoader.load(clz, clz.classLoader)"
            kotlin.p081e.p083b.C1694h.m3122a(r0, r1)     // Catch: java.lang.Throwable -> La0
            r0 = r8
            java.lang.Iterable r0 = (java.lang.Iterable) r0     // Catch: java.lang.Throwable -> La0
            java.util.List r0 = kotlin.p073a.C1600g.m3192c(r0)     // Catch: java.lang.Throwable -> La0
            r9 = r0
            r0 = r9
            java.lang.Iterable r0 = (java.lang.Iterable) r0     // Catch: java.lang.Throwable -> La0
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> La0
            r10 = r0
            r0 = r10
            boolean r0 = r0.hasNext()     // Catch: java.lang.Throwable -> La0
            if (r0 != 0) goto L32
            r0 = 0
            r11 = r0
            goto L75
        L32:
            r0 = r10
            java.lang.Object r0 = r0.next()     // Catch: java.lang.Throwable -> La0
            r8 = r0
            r0 = r8
            kotlinx.coroutines.internal.MainDispatcherFactory r0 = (kotlinx.coroutines.internal.MainDispatcherFactory) r0     // Catch: java.lang.Throwable -> La0
            int r0 = r0.getLoadPriority()     // Catch: java.lang.Throwable -> La0
            r12 = r0
        L44:
            r0 = r8
            r11 = r0
            r0 = r10
            boolean r0 = r0.hasNext()     // Catch: java.lang.Throwable -> La0
            if (r0 == 0) goto L75
            r0 = r10
            java.lang.Object r0 = r0.next()     // Catch: java.lang.Throwable -> La0
            r11 = r0
            r0 = r11
            kotlinx.coroutines.internal.MainDispatcherFactory r0 = (kotlinx.coroutines.internal.MainDispatcherFactory) r0     // Catch: java.lang.Throwable -> La0
            int r0 = r0.getLoadPriority()     // Catch: java.lang.Throwable -> La0
            r13 = r0
            r0 = r12
            r1 = r13
            if (r0 >= r1) goto L44
            r0 = r11
            r8 = r0
            r0 = r13
            r12 = r0
            goto L44
        L75:
            r0 = r11
            kotlinx.coroutines.internal.MainDispatcherFactory r0 = (kotlinx.coroutines.internal.MainDispatcherFactory) r0     // Catch: java.lang.Throwable -> La0
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L8c
            r0 = r8
            r1 = r9
            kotlinx.coroutines.bu r0 = kotlinx.coroutines.internal.C1915m.m2614a(r0, r1)     // Catch: java.lang.Throwable -> La0
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L8c
            goto Lb0
        L8c:
            kotlinx.coroutines.internal.n r0 = new kotlinx.coroutines.internal.n     // Catch: java.lang.Throwable -> La0
            r8 = r0
            r0 = r8
            r1 = 0
            r2 = 0
            r3 = 2
            r4 = 0
            r0.<init>(r1, r2, r3, r4)     // Catch: java.lang.Throwable -> La0
            r0 = r8
            kotlinx.coroutines.bu r0 = (kotlinx.coroutines.AbstractC1866bu) r0     // Catch: java.lang.Throwable -> La0
            r8 = r0
            goto Lb0
        La0:
            r8 = move-exception
            kotlinx.coroutines.internal.n r0 = new kotlinx.coroutines.internal.n
            r1 = r0
            r2 = r8
            r3 = 0
            r4 = 2
            r5 = 0
            r1.<init>(r2, r3, r4, r5)
            kotlinx.coroutines.bu r0 = (kotlinx.coroutines.AbstractC1866bu) r0
            r8 = r0
        Lb0:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.C1914l.m2615a():kotlinx.coroutines.bu");
    }
}
