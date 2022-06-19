package kotlinx.coroutines.internal;

import kotlin.Metadata;
import kotlinx.coroutines.AbstractC20236ce;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\bÀ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0007\u001a\u00020\u0006H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n��¨\u0006\b"}, m4298d2 = {"Lkotlinx/coroutines/internal/MainDispatcherLoader;", "", "()V", "FAST_SERVICE_LOADER_ENABLED", "", "dispatcher", "Lkotlinx/coroutines/MainCoroutineDispatcher;", "loadMainDispatcher", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.internal.o */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/internal/o.class */
public final class C20289o {

    /* renamed from: b */
    public static final C20289o f66764b = new C20289o();

    /* renamed from: c */
    private static final boolean f66765c = C20299y.m807a("kotlinx.coroutines.fast.service.loader", true);

    /* renamed from: a */
    public static final AbstractC20236ce f66763a = m832a();

    private C20289o() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a4, code lost:
        if (r0 == null) goto L29;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static kotlinx.coroutines.AbstractC20236ce m832a() {
        /*
            boolean r0 = kotlinx.coroutines.internal.C20289o.f66765c     // Catch: java.lang.Throwable -> Lb3
            if (r0 == 0) goto L10
            kotlinx.coroutines.internal.h r0 = kotlinx.coroutines.internal.C20279h.f66744a     // Catch: java.lang.Throwable -> Lb3
            java.util.List r0 = r0.m866a()     // Catch: java.lang.Throwable -> Lb3
            r3 = r0
            goto L24
        L10:
            java.lang.Class<kotlinx.coroutines.internal.MainDispatcherFactory> r0 = kotlinx.coroutines.internal.MainDispatcherFactory.class
            java.lang.Class<kotlinx.coroutines.internal.MainDispatcherFactory> r1 = kotlinx.coroutines.internal.MainDispatcherFactory.class
            java.lang.ClassLoader r1 = r1.getClassLoader()     // Catch: java.lang.Throwable -> Lb3
            java.util.ServiceLoader r0 = java.util.ServiceLoader.load(r0, r1)     // Catch: java.lang.Throwable -> Lb3
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> Lb3
            kotlin.g.h r0 = kotlin.p531g.C18381k.m4030a(r0)     // Catch: java.lang.Throwable -> Lb3
            java.util.List r0 = kotlin.p531g.C18381k.m4012f(r0)     // Catch: java.lang.Throwable -> Lb3
            r3 = r0
        L24:
            r0 = r3
            java.lang.Iterable r0 = (java.lang.Iterable) r0     // Catch: java.lang.Throwable -> Lb3
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> Lb3
            r4 = r0
            r0 = r4
            boolean r0 = r0.hasNext()     // Catch: java.lang.Throwable -> Lb3
            if (r0 != 0) goto L3c
            r0 = 0
            r5 = r0
            goto L92
        L3c:
            r0 = r4
            java.lang.Object r0 = r0.next()     // Catch: java.lang.Throwable -> Lb3
            r5 = r0
            r0 = r4
            boolean r0 = r0.hasNext()     // Catch: java.lang.Throwable -> Lb3
            if (r0 != 0) goto L4f
            goto L92
        L4f:
            r0 = r5
            kotlinx.coroutines.internal.MainDispatcherFactory r0 = (kotlinx.coroutines.internal.MainDispatcherFactory) r0     // Catch: java.lang.Throwable -> Lb3
            int r0 = r0.getLoadPriority()     // Catch: java.lang.Throwable -> Lb3
            r6 = r0
            r0 = r5
            r7 = r0
        L5c:
            r0 = r4
            java.lang.Object r0 = r0.next()     // Catch: java.lang.Throwable -> Lb3
            r8 = r0
            r0 = r8
            kotlinx.coroutines.internal.MainDispatcherFactory r0 = (kotlinx.coroutines.internal.MainDispatcherFactory) r0     // Catch: java.lang.Throwable -> Lb3
            int r0 = r0.getLoadPriority()     // Catch: java.lang.Throwable -> Lb3
            r9 = r0
            r0 = r7
            r5 = r0
            r0 = r6
            r10 = r0
            r0 = r6
            r1 = r9
            if (r0 >= r1) goto L83
            r0 = r8
            r5 = r0
            r0 = r9
            r10 = r0
        L83:
            r0 = r5
            r7 = r0
            r0 = r10
            r6 = r0
            r0 = r4
            boolean r0 = r0.hasNext()     // Catch: java.lang.Throwable -> Lb3
            if (r0 != 0) goto L5c
        L92:
            r0 = r5
            kotlinx.coroutines.internal.MainDispatcherFactory r0 = (kotlinx.coroutines.internal.MainDispatcherFactory) r0     // Catch: java.lang.Throwable -> Lb3
            r5 = r0
            r0 = r5
            if (r0 == 0) goto La7
            r0 = r5
            r1 = r3
            kotlinx.coroutines.ce r0 = kotlinx.coroutines.internal.C20290p.m828a(r0, r1)     // Catch: java.lang.Throwable -> Lb3
            r3 = r0
            r0 = r3
            r5 = r0
            r0 = r3
            if (r0 != 0) goto Lbd
        La7:
            r0 = 0
            r1 = 3
            kotlinx.coroutines.internal.q r0 = kotlinx.coroutines.internal.C20290p.m830a(r0, r1)     // Catch: java.lang.Throwable -> Lb3
            kotlinx.coroutines.ce r0 = (kotlinx.coroutines.AbstractC20236ce) r0     // Catch: java.lang.Throwable -> Lb3
            r5 = r0
            goto Lbd
        Lb3:
            r5 = move-exception
            r0 = r5
            r1 = 2
            kotlinx.coroutines.internal.q r0 = kotlinx.coroutines.internal.C20290p.m830a(r0, r1)
            kotlinx.coroutines.ce r0 = (kotlinx.coroutines.AbstractC20236ce) r0
            r5 = r0
        Lbd:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.C20289o.m832a():kotlinx.coroutines.ce");
    }
}
