package kotlinx.coroutines.internal;

import kotlin.Metadata;
import kotlinx.coroutines.MainCoroutineDispatcher;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\bÀ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0007\u001a\u00020\u0006H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n��¨\u0006\b"}, m815d2 = {"Lkotlinx/coroutines/internal/MainDispatcherLoader;", "", "()V", "FAST_SERVICE_LOADER_ENABLED", "", "dispatcher", "Lkotlinx/coroutines/MainCoroutineDispatcher;", "loadMainDispatcher", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/internal/MainDispatcherLoader.class */
public final class MainDispatcherLoader {
    public static final boolean FAST_SERVICE_LOADER_ENABLED = SystemPropsKt.systemProp(MainDispatchersKt.FAST_SERVICE_LOADER_PROPERTY_NAME, true);
    public static final MainDispatcherLoader INSTANCE;
    public static final MainCoroutineDispatcher dispatcher;

    static {
        MainDispatcherLoader mainDispatcherLoader = new MainDispatcherLoader();
        INSTANCE = mainDispatcherLoader;
        dispatcher = mainDispatcherLoader.loadMainDispatcher();
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00a3, code lost:
        if (r8 != null) goto L_0x00bd;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final kotlinx.coroutines.MainCoroutineDispatcher loadMainDispatcher() {
        /*
            r5 = this;
            boolean r0 = kotlinx.coroutines.internal.MainDispatcherLoader.FAST_SERVICE_LOADER_ENABLED     // Catch: all -> 0x00b4
            if (r0 == 0) goto L_0x0010
            kotlinx.coroutines.internal.FastServiceLoader r0 = kotlinx.coroutines.internal.FastServiceLoader.INSTANCE     // Catch: all -> 0x00b4
            java.util.List r0 = r0.loadMainDispatcherFactory$kotlinx_coroutines_core()     // Catch: all -> 0x00b4
            r6 = r0
            goto L_0x0024
        L_0x0010:
            java.lang.Class<kotlinx.coroutines.internal.MainDispatcherFactory> r0 = kotlinx.coroutines.internal.MainDispatcherFactory.class
            java.lang.Class<kotlinx.coroutines.internal.MainDispatcherFactory> r1 = kotlinx.coroutines.internal.MainDispatcherFactory.class
            java.lang.ClassLoader r1 = r1.getClassLoader()     // Catch: all -> 0x00b4
            java.util.ServiceLoader r0 = java.util.ServiceLoader.load(r0, r1)     // Catch: all -> 0x00b4
            java.util.Iterator r0 = r0.iterator()     // Catch: all -> 0x00b4
            l.d0.e r0 = p626l.p630d0.C14927j.m778a(r0)     // Catch: all -> 0x00b4
            java.util.List r0 = p626l.p630d0.C14930l.m769c(r0)     // Catch: all -> 0x00b4
            r6 = r0
        L_0x0024:
            r0 = r6
            java.util.Iterator r0 = r0.iterator()     // Catch: all -> 0x00b4
            r7 = r0
            r0 = r7
            boolean r0 = r0.hasNext()     // Catch: all -> 0x00b4
            if (r0 != 0) goto L_0x0039
            r0 = 0
            r8 = r0
            goto L_0x0093
        L_0x0039:
            r0 = r7
            java.lang.Object r0 = r0.next()     // Catch: all -> 0x00b4
            r8 = r0
            r0 = r7
            boolean r0 = r0.hasNext()     // Catch: all -> 0x00b4
            if (r0 != 0) goto L_0x004c
            goto L_0x0093
        L_0x004c:
            r0 = r8
            kotlinx.coroutines.internal.MainDispatcherFactory r0 = (kotlinx.coroutines.internal.MainDispatcherFactory) r0     // Catch: all -> 0x00b4
            int r0 = r0.getLoadPriority()     // Catch: all -> 0x00b4
            r9 = r0
            r0 = r8
            r10 = r0
        L_0x005a:
            r0 = r7
            java.lang.Object r0 = r0.next()     // Catch: all -> 0x00b4
            r11 = r0
            r0 = r11
            kotlinx.coroutines.internal.MainDispatcherFactory r0 = (kotlinx.coroutines.internal.MainDispatcherFactory) r0     // Catch: all -> 0x00b4
            int r0 = r0.getLoadPriority()     // Catch: all -> 0x00b4
            r12 = r0
            r0 = r10
            r8 = r0
            r0 = r9
            r13 = r0
            r0 = r9
            r1 = r12
            if (r0 >= r1) goto L_0x0083
            r0 = r11
            r8 = r0
            r0 = r12
            r13 = r0
        L_0x0083:
            r0 = r8
            r10 = r0
            r0 = r13
            r9 = r0
            r0 = r7
            boolean r0 = r0.hasNext()     // Catch: all -> 0x00b4
            if (r0 != 0) goto L_0x005a
        L_0x0093:
            r0 = r8
            kotlinx.coroutines.internal.MainDispatcherFactory r0 = (kotlinx.coroutines.internal.MainDispatcherFactory) r0     // Catch: all -> 0x00b4
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x00a9
            r0 = r8
            r1 = r6
            kotlinx.coroutines.MainCoroutineDispatcher r0 = kotlinx.coroutines.internal.MainDispatchersKt.tryCreateDispatcher(r0, r1)     // Catch: all -> 0x00b4
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x00a9
            goto L_0x00bd
        L_0x00a9:
            r0 = 0
            r1 = 0
            r2 = 3
            r3 = 0
            kotlinx.coroutines.internal.MissingMainCoroutineDispatcher r0 = kotlinx.coroutines.internal.MainDispatchersKt.createMissingDispatcher$default(r0, r1, r2, r3)     // Catch: all -> 0x00b4
            r8 = r0
            goto L_0x00bd
        L_0x00b4:
            r8 = move-exception
            r0 = r8
            r1 = 0
            r2 = 2
            r3 = 0
            kotlinx.coroutines.internal.MissingMainCoroutineDispatcher r0 = kotlinx.coroutines.internal.MainDispatchersKt.createMissingDispatcher$default(r0, r1, r2, r3)
            r8 = r0
        L_0x00bd:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.MainDispatcherLoader.loadMainDispatcher():kotlinx.coroutines.MainCoroutineDispatcher");
    }
}
