package kotlin.internal;

import java.lang.reflect.Method;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.FallbackThreadLocalRandom;
import kotlin.random.Random;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0006\b\u0010\u0018��:\u0001\u0016B\u0007¢\u0006\u0004\b\u0014\u0010\u0015J\u001f\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ!\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u001d\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00010\u00112\u0006\u0010\u0003\u001a\u00020\u0001H\u0016¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0017"}, d2 = {"Lkotlin/internal/PlatformImplementations;", "", "cause", "exception", "", "addSuppressed", "(Ljava/lang/Throwable;Ljava/lang/Throwable;)V", "Lkotlin/random/Random;", "defaultPlatformRandom", "()Lkotlin/random/Random;", "Ljava/util/regex/MatchResult;", "matchResult", "", "name", "Lkotlin/text/MatchGroup;", "getMatchResultNamedGroup", "(Ljava/util/regex/MatchResult;Ljava/lang/String;)Lkotlin/text/MatchGroup;", "", "getSuppressed", "(Ljava/lang/Throwable;)Ljava/util/List;", "<init>", "()V", "ReflectThrowable", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/internal/PlatformImplementations.class */
public class PlatformImplementations {

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\bÂ\u0002\u0018��B\t\b\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00018\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0002\u0010\u0003R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00018\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0003¨\u0006\u0007"}, d2 = {"Lkotlin/internal/PlatformImplementations$ReflectThrowable;", "Ljava/lang/reflect/Method;", "addSuppressed", "Ljava/lang/reflect/Method;", "getSuppressed", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlin/internal/PlatformImplementations$ReflectThrowable.class */
    public static final class ReflectThrowable {
        @JvmField
        @Nullable

        /* renamed from: a */
        public static final Method f20671a;

        /* JADX WARN: Removed duplicated region for block: B:13:0x0060 A[LOOP:0: B:3:0x0013->B:13:0x0060, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0069 A[EDGE_INSN: B:23:0x0069->B:15:0x0069 ?: BREAK  , SYNTHETIC] */
        static {
            /*
                java.lang.Class<java.lang.Throwable> r0 = java.lang.Throwable.class
                java.lang.reflect.Method[] r0 = r0.getMethods()
                r3 = r0
                r0 = r3
                java.lang.String r1 = "throwableMethods"
                kotlin.jvm.internal.Intrinsics.m1831d(r0, r1)
                r0 = r3
                int r0 = r0.length
                r4 = r0
                r0 = 0
                r5 = r0
                r0 = 0
                r6 = r0
            L_0x0013:
                r0 = r6
                r1 = r4
                if (r0 >= r1) goto L_0x0066
                r0 = r3
                r1 = r6
                r0 = r0[r1]
                r7 = r0
                r0 = r7
                java.lang.String r1 = "it"
                kotlin.jvm.internal.Intrinsics.m1831d(r0, r1)
                r0 = r7
                java.lang.String r0 = r0.getName()
                java.lang.String r1 = "addSuppressed"
                boolean r0 = kotlin.jvm.internal.Intrinsics.m1834a(r0, r1)
                if (r0 == 0) goto L_0x0055
                r0 = r7
                java.lang.Class[] r0 = r0.getParameterTypes()
                r8 = r0
                r0 = r8
                java.lang.String r1 = "it.parameterTypes"
                kotlin.jvm.internal.Intrinsics.m1831d(r0, r1)
                r0 = r8
                java.lang.Object r0 = kotlin.collections.ArraysKt.m2328O(r0)
                java.lang.Class r0 = (java.lang.Class) r0
                java.lang.Class<java.lang.Throwable> r1 = java.lang.Throwable.class
                boolean r0 = kotlin.jvm.internal.Intrinsics.m1834a(r0, r1)
                if (r0 == 0) goto L_0x0055
                r0 = 1
                r9 = r0
                goto L_0x0058
            L_0x0055:
                r0 = 0
                r9 = r0
            L_0x0058:
                r0 = r9
                if (r0 == 0) goto L_0x0060
                goto L_0x0069
            L_0x0060:
                int r6 = r6 + 1
                goto L_0x0013
            L_0x0066:
                r0 = 0
                r7 = r0
            L_0x0069:
                r0 = r7
                kotlin.internal.PlatformImplementations.ReflectThrowable.f20671a = r0
                r0 = r3
                int r0 = r0.length
                r9 = r0
                r0 = r5
                r6 = r0
            L_0x0074:
                r0 = r6
                r1 = r9
                if (r0 >= r1) goto L_0x009c
                r0 = r3
                r1 = r6
                r0 = r0[r1]
                r7 = r0
                r0 = r7
                java.lang.String r1 = "it"
                kotlin.jvm.internal.Intrinsics.m1831d(r0, r1)
                r0 = r7
                java.lang.String r0 = r0.getName()
                java.lang.String r1 = "getSuppressed"
                boolean r0 = kotlin.jvm.internal.Intrinsics.m1834a(r0, r1)
                if (r0 == 0) goto L_0x0096
                goto L_0x009c
            L_0x0096:
                int r6 = r6 + 1
                goto L_0x0074
            L_0x009c:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.internal.PlatformImplementations.ReflectThrowable.m24372clinit():void");
        }

        private ReflectThrowable() {
        }
    }

    /* renamed from: a */
    public void mo1890a(@NotNull Throwable cause, @NotNull Throwable exception) {
        Intrinsics.m1830e(cause, "cause");
        Intrinsics.m1830e(exception, "exception");
        Method method = ReflectThrowable.f20671a;
        if (method != null) {
            method.invoke(cause, exception);
        }
    }

    @NotNull
    /* renamed from: b */
    public Random mo1889b() {
        return new FallbackThreadLocalRandom();
    }
}
