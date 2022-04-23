package kotlinx.coroutines.internal;

import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlinx.coroutines.MainCoroutineDispatcher;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\bÀ\u0002\u0018��B\t\b\u0002¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u0002\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0016\u0010\u0005\u001a\u00020\u00048\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0016\u0010\u0007\u001a\u00020\u00018\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lkotlinx/coroutines/internal/MainDispatcherLoader;", "Lkotlinx/coroutines/MainCoroutineDispatcher;", "loadMainDispatcher", "()Lkotlinx/coroutines/MainCoroutineDispatcher;", "", "FAST_SERVICE_LOADER_ENABLED", "Z", "dispatcher", "Lkotlinx/coroutines/MainCoroutineDispatcher;", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/internal/MainDispatcherLoader.class */
public final class MainDispatcherLoader {

    /* renamed from: a */
    private static final boolean f23938a = SystemPropsKt.m439e("kotlinx.coroutines.fast.service.loader", true);
    @JvmField
    @NotNull

    /* renamed from: b */
    public static final MainCoroutineDispatcher f23939b = new MainDispatcherLoader().m483a();

    private MainDispatcherLoader() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00a3, code lost:
        if (r8 != null) goto L_0x00bd;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final kotlinx.coroutines.MainCoroutineDispatcher m483a() {
        /*
            r5 = this;
            boolean r0 = kotlinx.coroutines.internal.MainDispatcherLoader.f23938a     // Catch: all -> 0x00b4
            if (r0 == 0) goto L_0x0010
            kotlinx.coroutines.internal.FastServiceLoader r0 = kotlinx.coroutines.internal.FastServiceLoader.f23907a     // Catch: all -> 0x00b4
            java.util.List r0 = r0.m552c()     // Catch: all -> 0x00b4
            r6 = r0
            goto L_0x0024
        L_0x0010:
            java.lang.Class<kotlinx.coroutines.internal.MainDispatcherFactory> r0 = kotlinx.coroutines.internal.MainDispatcherFactory.class
            java.lang.Class<kotlinx.coroutines.internal.MainDispatcherFactory> r1 = kotlinx.coroutines.internal.MainDispatcherFactory.class
            java.lang.ClassLoader r1 = r1.getClassLoader()     // Catch: all -> 0x00b4
            java.util.ServiceLoader r0 = java.util.ServiceLoader.load(r0, r1)     // Catch: all -> 0x00b4
            java.util.Iterator r0 = r0.iterator()     // Catch: all -> 0x00b4
            kotlin.sequences.Sequence r0 = kotlin.sequences.SequencesKt.m1641b(r0)     // Catch: all -> 0x00b4
            java.util.List r0 = kotlin.sequences.SequencesKt.m1633r(r0)     // Catch: all -> 0x00b4
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
            kotlinx.coroutines.MainCoroutineDispatcher r0 = kotlinx.coroutines.internal.MainDispatchersKt.m479d(r0, r1)     // Catch: all -> 0x00b4
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x00a9
            goto L_0x00bd
        L_0x00a9:
            r0 = 0
            r1 = 0
            r2 = 3
            r3 = 0
            kotlinx.coroutines.internal.MissingMainCoroutineDispatcher r0 = kotlinx.coroutines.internal.MainDispatchersKt.m481b(r0, r1, r2, r3)     // Catch: all -> 0x00b4
            r8 = r0
            goto L_0x00bd
        L_0x00b4:
            r8 = move-exception
            r0 = r8
            r1 = 0
            r2 = 2
            r3 = 0
            kotlinx.coroutines.internal.MissingMainCoroutineDispatcher r0 = kotlinx.coroutines.internal.MainDispatchersKt.m481b(r0, r1, r2, r3)
            r8 = r0
        L_0x00bd:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.MainDispatcherLoader.m483a():kotlinx.coroutines.MainCoroutineDispatcher");
    }
}
