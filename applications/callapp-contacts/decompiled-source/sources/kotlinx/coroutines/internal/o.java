package kotlinx.coroutines.internal;

import kotlin.Metadata;
import kotlinx.coroutines.ce;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\bÀ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0007\u001a\u00020\u0006H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n��¨\u0006\b"}, d2 = {"Lkotlinx/coroutines/internal/MainDispatcherLoader;", "", "()V", "FAST_SERVICE_LOADER_ENABLED", "", "dispatcher", "Lkotlinx/coroutines/MainCoroutineDispatcher;", "loadMainDispatcher", "kotlinx-coroutines-core"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/internal/o.class */
public final class o {

    /* renamed from: b  reason: collision with root package name */
    public static final o f38835b = new o();

    /* renamed from: c  reason: collision with root package name */
    private static final boolean f38836c = y.a("kotlinx.coroutines.fast.service.loader", true);

    /* renamed from: a  reason: collision with root package name */
    public static final ce f38834a = a();

    private o() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a4, code lost:
        if (r0 == null) goto L_0x00a7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static kotlinx.coroutines.ce a() {
        /*
            boolean r0 = kotlinx.coroutines.internal.o.f38836c     // Catch: all -> 0x00b3
            if (r0 == 0) goto L_0x0010
            kotlinx.coroutines.internal.h r0 = kotlinx.coroutines.internal.h.f38821a     // Catch: all -> 0x00b3
            java.util.List r0 = r0.a()     // Catch: all -> 0x00b3
            r3 = r0
            goto L_0x0024
        L_0x0010:
            java.lang.Class<kotlinx.coroutines.internal.MainDispatcherFactory> r0 = kotlinx.coroutines.internal.MainDispatcherFactory.class
            java.lang.Class<kotlinx.coroutines.internal.MainDispatcherFactory> r1 = kotlinx.coroutines.internal.MainDispatcherFactory.class
            java.lang.ClassLoader r1 = r1.getClassLoader()     // Catch: all -> 0x00b3
            java.util.ServiceLoader r0 = java.util.ServiceLoader.load(r0, r1)     // Catch: all -> 0x00b3
            java.util.Iterator r0 = r0.iterator()     // Catch: all -> 0x00b3
            kotlin.g.h r0 = kotlin.g.k.a(r0)     // Catch: all -> 0x00b3
            java.util.List r0 = kotlin.g.k.f(r0)     // Catch: all -> 0x00b3
            r3 = r0
        L_0x0024:
            r0 = r3
            java.lang.Iterable r0 = (java.lang.Iterable) r0     // Catch: all -> 0x00b3
            java.util.Iterator r0 = r0.iterator()     // Catch: all -> 0x00b3
            r4 = r0
            r0 = r4
            boolean r0 = r0.hasNext()     // Catch: all -> 0x00b3
            if (r0 != 0) goto L_0x003c
            r0 = 0
            r5 = r0
            goto L_0x0092
        L_0x003c:
            r0 = r4
            java.lang.Object r0 = r0.next()     // Catch: all -> 0x00b3
            r5 = r0
            r0 = r4
            boolean r0 = r0.hasNext()     // Catch: all -> 0x00b3
            if (r0 != 0) goto L_0x004f
            goto L_0x0092
        L_0x004f:
            r0 = r5
            kotlinx.coroutines.internal.MainDispatcherFactory r0 = (kotlinx.coroutines.internal.MainDispatcherFactory) r0     // Catch: all -> 0x00b3
            int r0 = r0.getLoadPriority()     // Catch: all -> 0x00b3
            r6 = r0
            r0 = r5
            r7 = r0
        L_0x005c:
            r0 = r4
            java.lang.Object r0 = r0.next()     // Catch: all -> 0x00b3
            r8 = r0
            r0 = r8
            kotlinx.coroutines.internal.MainDispatcherFactory r0 = (kotlinx.coroutines.internal.MainDispatcherFactory) r0     // Catch: all -> 0x00b3
            int r0 = r0.getLoadPriority()     // Catch: all -> 0x00b3
            r9 = r0
            r0 = r7
            r5 = r0
            r0 = r6
            r10 = r0
            r0 = r6
            r1 = r9
            if (r0 >= r1) goto L_0x0083
            r0 = r8
            r5 = r0
            r0 = r9
            r10 = r0
        L_0x0083:
            r0 = r5
            r7 = r0
            r0 = r10
            r6 = r0
            r0 = r4
            boolean r0 = r0.hasNext()     // Catch: all -> 0x00b3
            if (r0 != 0) goto L_0x005c
        L_0x0092:
            r0 = r5
            kotlinx.coroutines.internal.MainDispatcherFactory r0 = (kotlinx.coroutines.internal.MainDispatcherFactory) r0     // Catch: all -> 0x00b3
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x00a7
            r0 = r5
            r1 = r3
            kotlinx.coroutines.ce r0 = kotlinx.coroutines.internal.p.a(r0, r1)     // Catch: all -> 0x00b3
            r3 = r0
            r0 = r3
            r5 = r0
            r0 = r3
            if (r0 != 0) goto L_0x00bd
        L_0x00a7:
            r0 = 0
            r1 = 3
            kotlinx.coroutines.internal.q r0 = kotlinx.coroutines.internal.p.a(r0, r1)     // Catch: all -> 0x00b3
            kotlinx.coroutines.ce r0 = (kotlinx.coroutines.ce) r0     // Catch: all -> 0x00b3
            r5 = r0
            goto L_0x00bd
        L_0x00b3:
            r5 = move-exception
            r0 = r5
            r1 = 2
            kotlinx.coroutines.internal.q r0 = kotlinx.coroutines.internal.p.a(r0, r1)
            kotlinx.coroutines.ce r0 = (kotlinx.coroutines.ce) r0
            r5 = r0
        L_0x00bd:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.o.a():kotlinx.coroutines.ce");
    }
}
