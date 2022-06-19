package kotlin.internal;

import java.lang.reflect.Method;
import java.util.regex.MatchResult;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.FallbackThreadLocalRandom;
import kotlin.random.Random;
import kotlin.text.MatchGroup;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010 \n\u0002\b\u0002\b\u0010\u0018��2\u00020\u0001:\u0001\u0012B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\b\u0010\b\u001a\u00020\tH\u0016J\u001a\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0016\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00060\u00112\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¨\u0006\u0013"}, m400d2 = {"Lkotlin/internal/PlatformImplementations;", "", "()V", "addSuppressed", "", "cause", "", "exception", "defaultPlatformRandom", "Lkotlin/random/Random;", "getMatchResultNamedGroup", "Lkotlin/text/MatchGroup;", "matchResult", "Ljava/util/regex/MatchResult;", "name", "", "getSuppressed", "", "ReflectThrowable", "kotlin-stdlib"}, m399k = 1, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:kotlin/internal/PlatformImplementations.class */
public class PlatformImplementations {

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÂ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n��¨\u0006\u0006"}, m400d2 = {"Lkotlin/internal/PlatformImplementations$ReflectThrowable;", "", "()V", "addSuppressed", "Ljava/lang/reflect/Method;", "getSuppressed", "kotlin-stdlib"}, m399k = 1, m398mv = {1, 4, 0})
    /* loaded from: classes-dex2jar.jar:kotlin/internal/PlatformImplementations$ReflectThrowable.class */
    public static final class ReflectThrowable {
        public static final ReflectThrowable INSTANCE = new ReflectThrowable();
        public static final Method addSuppressed;
        public static final Method getSuppressed;

        /* JADX WARN: Removed duplicated region for block: B:13:0x006d A[LOOP:0: B:3:0x001d->B:13:0x006d, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0076 A[EDGE_INSN: B:24:0x0076->B:15:0x0076 ?: BREAK  , SYNTHETIC] */
        static {
            /*
                kotlin.internal.PlatformImplementations$ReflectThrowable r0 = new kotlin.internal.PlatformImplementations$ReflectThrowable
                r1 = r0
                r1.<init>()
                kotlin.internal.PlatformImplementations.ReflectThrowable.INSTANCE = r0
                java.lang.Class<java.lang.Throwable> r0 = java.lang.Throwable.class
                java.lang.reflect.Method[] r0 = r0.getMethods()
                r3 = r0
                r0 = r3
                java.lang.String r1 = "throwableMethods"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
                r0 = r3
                int r0 = r0.length
                r4 = r0
                r0 = 0
                r5 = r0
                r0 = 0
                r6 = r0
            L1d:
                r0 = 0
                r7 = r0
                r0 = r6
                r1 = r4
                if (r0 >= r1) goto L73
                r0 = r3
                r1 = r6
                r0 = r0[r1]
                r8 = r0
                r0 = r8
                java.lang.String r1 = "it"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
                r0 = r8
                java.lang.String r0 = r0.getName()
                java.lang.String r1 = "addSuppressed"
                boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r0, r1)
                if (r0 == 0) goto L62
                r0 = r8
                java.lang.Class[] r0 = r0.getParameterTypes()
                r9 = r0
                r0 = r9
                java.lang.String r1 = "it.parameterTypes"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
                r0 = r9
                java.lang.Object r0 = kotlin.collections.ArraysKt.singleOrNull(r0)
                java.lang.Class r0 = (java.lang.Class) r0
                java.lang.Class<java.lang.Throwable> r1 = java.lang.Throwable.class
                boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r0, r1)
                if (r0 == 0) goto L62
                r0 = 1
                r10 = r0
                goto L65
            L62:
                r0 = 0
                r10 = r0
            L65:
                r0 = r10
                if (r0 == 0) goto L6d
                goto L76
            L6d:
                int r6 = r6 + 1
                goto L1d
            L73:
                r0 = 0
                r8 = r0
            L76:
                r0 = r8
                kotlin.internal.PlatformImplementations.ReflectThrowable.addSuppressed = r0
                r0 = r3
                int r0 = r0.length
                r10 = r0
                r0 = r5
                r6 = r0
            L81:
                r0 = r7
                r8 = r0
                r0 = r6
                r1 = r10
                if (r0 >= r1) goto Lad
                r0 = r3
                r1 = r6
                r0 = r0[r1]
                r8 = r0
                r0 = r8
                java.lang.String r1 = "it"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
                r0 = r8
                java.lang.String r0 = r0.getName()
                java.lang.String r1 = "getSuppressed"
                boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r0, r1)
                if (r0 == 0) goto La7
                goto Lad
            La7:
                int r6 = r6 + 1
                goto L81
            Lad:
                r0 = r8
                kotlin.internal.PlatformImplementations.ReflectThrowable.getSuppressed = r0
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.internal.PlatformImplementations.ReflectThrowable.m5366clinit():void");
        }

        private ReflectThrowable() {
        }
    }

    public void addSuppressed(Throwable cause, Throwable exception) {
        Intrinsics.checkNotNullParameter(cause, "cause");
        Intrinsics.checkNotNullParameter(exception, "exception");
        Method method = ReflectThrowable.addSuppressed;
        if (method != null) {
            method.invoke(cause, exception);
        }
    }

    public Random defaultPlatformRandom() {
        return new FallbackThreadLocalRandom();
    }

    public MatchGroup getMatchResultNamedGroup(MatchResult matchResult, String name) {
        Intrinsics.checkNotNullParameter(matchResult, "matchResult");
        Intrinsics.checkNotNullParameter(name, "name");
        throw new UnsupportedOperationException("Retrieving groups by name is not supported on this platform.");
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x002c, code lost:
        if (r5 != null) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<java.lang.Throwable> getSuppressed(java.lang.Throwable r5) {
        /*
            r4 = this;
            r0 = r5
            java.lang.String r1 = "exception"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r0, r1)
            java.lang.reflect.Method r0 = kotlin.internal.PlatformImplementations.ReflectThrowable.getSuppressed
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L32
            r0 = r6
            r1 = r5
            r2 = 0
            java.lang.Object[] r2 = new java.lang.Object[r2]
            java.lang.Object r0 = r0.invoke(r1, r2)
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L32
            r0 = r5
            java.lang.String r1 = "null cannot be cast to non-null type kotlin.Array<kotlin.Throwable>"
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0, r1)
            r0 = r5
            java.lang.Throwable[] r0 = (java.lang.Throwable[]) r0
            java.util.List r0 = kotlin.collections.ArraysKt.asList(r0)
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L32
            goto L36
        L32:
            java.util.List r0 = kotlin.collections.CollectionsKt.emptyList()
            r5 = r0
        L36:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.internal.PlatformImplementations.getSuppressed(java.lang.Throwable):java.util.List");
    }
}
