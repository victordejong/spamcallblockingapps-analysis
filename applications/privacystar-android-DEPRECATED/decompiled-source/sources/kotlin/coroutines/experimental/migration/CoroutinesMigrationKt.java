package kotlin.coroutines.experimental.migration;

import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��:\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\u001a\u001e\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\u0007\u001a\f\u0010\u0004\u001a\u00020\u0005*\u00020\u0006H\u0007\u001a\f\u0010\u0007\u001a\u00020\b*\u00020\tH\u0007\u001a\u001e\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0003\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0001H\u0007\u001a\f\u0010\u000b\u001a\u00020\u0006*\u00020\u0005H\u0007\u001a\f\u0010\f\u001a\u00020\t*\u00020\bH\u0007\u001a^\u0010\r\u001a\"\u0012\u0004\u0012\u0002H\u000f\u0012\u0004\u0012\u0002H\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00110\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u000e\"\u0004\b��\u0010\u000f\"\u0004\b\u0001\u0010\u0010\"\u0004\b\u0002\u0010\u0011*\"\u0012\u0004\u0012\u0002H\u000f\u0012\u0004\u0012\u0002H\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00110\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u000eH��\u001aL\u0010\r\u001a\u001c\u0012\u0004\u0012\u0002H\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00110\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0013\"\u0004\b��\u0010\u000f\"\u0004\b\u0001\u0010\u0011*\u001c\u0012\u0004\u0012\u0002H\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00110\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0013H��\u001a:\u0010\r\u001a\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00110\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0014\"\u0004\b��\u0010\u0011*\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00110\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0014H��¨\u0006\u0015"}, m254d2 = {"toContinuation", "Lkotlin/coroutines/Continuation;", "T", "Lkotlin/coroutines/experimental/Continuation;", "toContinuationInterceptor", "Lkotlin/coroutines/ContinuationInterceptor;", "Lkotlin/coroutines/experimental/ContinuationInterceptor;", "toCoroutineContext", "Lkotlin/coroutines/CoroutineContext;", "Lkotlin/coroutines/experimental/CoroutineContext;", "toExperimentalContinuation", "toExperimentalContinuationInterceptor", "toExperimentalCoroutineContext", "toExperimentalSuspendFunction", "Lkotlin/Function3;", "T1", "T2", "R", "", "Lkotlin/Function2;", "Lkotlin/Function1;", "kotlin-stdlib_coroutinesExperimental"}, m253k = 2, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:kotlin/coroutines/experimental/migration/CoroutinesMigrationKt.class */
public final class CoroutinesMigrationKt {
    @SinceKotlin(version = "1.3")
    @NotNull
    public static final <T> Continuation<T> toContinuation(@NotNull kotlin.coroutines.experimental.Continuation<? super T> receiver$0) {
        Continuation<T> continuation;
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        ExperimentalContinuationMigration experimentalContinuationMigration = (ExperimentalContinuationMigration) (!(receiver$0 instanceof ExperimentalContinuationMigration) ? null : receiver$0);
        return (experimentalContinuationMigration == null || (continuation = experimentalContinuationMigration.getContinuation()) == null) ? new ContinuationMigration(receiver$0) : continuation;
    }

    @SinceKotlin(version = "1.3")
    @NotNull
    public static final ContinuationInterceptor toContinuationInterceptor(@NotNull kotlin.coroutines.experimental.ContinuationInterceptor receiver$0) {
        ContinuationInterceptor interceptor;
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        ExperimentalContinuationInterceptorMigration experimentalContinuationInterceptorMigration = (ExperimentalContinuationInterceptorMigration) (!(receiver$0 instanceof ExperimentalContinuationInterceptorMigration) ? null : receiver$0);
        return (experimentalContinuationInterceptorMigration == null || (interceptor = experimentalContinuationInterceptorMigration.getInterceptor()) == null) ? new ContinuationInterceptorMigration(receiver$0) : interceptor;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0048, code lost:
        if (r5 != null) goto L_0x0055;
     */
    @kotlin.SinceKotlin(version = "1.3")
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final kotlin.coroutines.CoroutineContext toCoroutineContext(@org.jetbrains.annotations.NotNull kotlin.coroutines.experimental.CoroutineContext r5) {
        /*
            r0 = r5
            java.lang.String r1 = "receiver$0"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r0, r1)
            r0 = r5
            kotlin.coroutines.experimental.ContinuationInterceptor$Key r1 = kotlin.coroutines.experimental.ContinuationInterceptor.Key
            kotlin.coroutines.experimental.CoroutineContext$Key r1 = (kotlin.coroutines.experimental.CoroutineContext.Key) r1
            kotlin.coroutines.experimental.CoroutineContext$Element r0 = r0.get(r1)
            kotlin.coroutines.experimental.ContinuationInterceptor r0 = (kotlin.coroutines.experimental.ContinuationInterceptor) r0
            r6 = r0
            r0 = r5
            kotlin.coroutines.experimental.migration.ExperimentalContextMigration$Key r1 = kotlin.coroutines.experimental.migration.ExperimentalContextMigration.Key
            kotlin.coroutines.experimental.CoroutineContext$Key r1 = (kotlin.coroutines.experimental.CoroutineContext.Key) r1
            kotlin.coroutines.experimental.CoroutineContext$Element r0 = r0.get(r1)
            kotlin.coroutines.experimental.migration.ExperimentalContextMigration r0 = (kotlin.coroutines.experimental.migration.ExperimentalContextMigration) r0
            r7 = r0
            r0 = r5
            kotlin.coroutines.experimental.ContinuationInterceptor$Key r1 = kotlin.coroutines.experimental.ContinuationInterceptor.Key
            kotlin.coroutines.experimental.CoroutineContext$Key r1 = (kotlin.coroutines.experimental.CoroutineContext.Key) r1
            kotlin.coroutines.experimental.CoroutineContext r0 = r0.minusKey(r1)
            kotlin.coroutines.experimental.migration.ExperimentalContextMigration$Key r1 = kotlin.coroutines.experimental.migration.ExperimentalContextMigration.Key
            kotlin.coroutines.experimental.CoroutineContext$Key r1 = (kotlin.coroutines.experimental.CoroutineContext.Key) r1
            kotlin.coroutines.experimental.CoroutineContext r0 = r0.minusKey(r1)
            r8 = r0
            r0 = r7
            if (r0 == 0) goto L_0x004e
            r0 = r7
            kotlin.coroutines.CoroutineContext r0 = r0.getContext()
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x004e
            goto L_0x0055
        L_0x004e:
            kotlin.coroutines.EmptyCoroutineContext r0 = kotlin.coroutines.EmptyCoroutineContext.INSTANCE
            kotlin.coroutines.CoroutineContext r0 = (kotlin.coroutines.CoroutineContext) r0
            r5 = r0
        L_0x0055:
            r0 = r8
            kotlin.coroutines.experimental.EmptyCoroutineContext r1 = kotlin.coroutines.experimental.EmptyCoroutineContext.INSTANCE
            if (r0 != r1) goto L_0x005f
            goto L_0x0071
        L_0x005f:
            r0 = r5
            kotlin.coroutines.experimental.migration.ContextMigration r1 = new kotlin.coroutines.experimental.migration.ContextMigration
            r2 = r1
            r3 = r8
            r2.<init>(r3)
            kotlin.coroutines.CoroutineContext r1 = (kotlin.coroutines.CoroutineContext) r1
            kotlin.coroutines.CoroutineContext r0 = r0.plus(r1)
            r5 = r0
        L_0x0071:
            r0 = r6
            if (r0 != 0) goto L_0x0078
            goto L_0x0086
        L_0x0078:
            r0 = r5
            r1 = r6
            kotlin.coroutines.ContinuationInterceptor r1 = toContinuationInterceptor(r1)
            kotlin.coroutines.CoroutineContext r1 = (kotlin.coroutines.CoroutineContext) r1
            kotlin.coroutines.CoroutineContext r0 = r0.plus(r1)
            r5 = r0
        L_0x0086:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.coroutines.experimental.migration.CoroutinesMigrationKt.toCoroutineContext(kotlin.coroutines.experimental.CoroutineContext):kotlin.coroutines.CoroutineContext");
    }

    @SinceKotlin(version = "1.3")
    @NotNull
    public static final <T> kotlin.coroutines.experimental.Continuation<T> toExperimentalContinuation(@NotNull Continuation<? super T> receiver$0) {
        kotlin.coroutines.experimental.Continuation<T> continuation;
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        ContinuationMigration continuationMigration = (ContinuationMigration) (!(receiver$0 instanceof ContinuationMigration) ? null : receiver$0);
        return (continuationMigration == null || (continuation = continuationMigration.getContinuation()) == null) ? new ExperimentalContinuationMigration(receiver$0) : continuation;
    }

    @SinceKotlin(version = "1.3")
    @NotNull
    public static final kotlin.coroutines.experimental.ContinuationInterceptor toExperimentalContinuationInterceptor(@NotNull ContinuationInterceptor receiver$0) {
        kotlin.coroutines.experimental.ContinuationInterceptor interceptor;
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        ContinuationInterceptorMigration continuationInterceptorMigration = (ContinuationInterceptorMigration) (!(receiver$0 instanceof ContinuationInterceptorMigration) ? null : receiver$0);
        return (continuationInterceptorMigration == null || (interceptor = continuationInterceptorMigration.getInterceptor()) == null) ? new ExperimentalContinuationInterceptorMigration(receiver$0) : interceptor;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0048, code lost:
        if (r5 != null) goto L_0x0055;
     */
    @kotlin.SinceKotlin(version = "1.3")
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final kotlin.coroutines.experimental.CoroutineContext toExperimentalCoroutineContext(@org.jetbrains.annotations.NotNull kotlin.coroutines.CoroutineContext r5) {
        /*
            r0 = r5
            java.lang.String r1 = "receiver$0"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r0, r1)
            r0 = r5
            kotlin.coroutines.ContinuationInterceptor$Key r1 = kotlin.coroutines.ContinuationInterceptor.Key
            kotlin.coroutines.CoroutineContext$Key r1 = (kotlin.coroutines.CoroutineContext.Key) r1
            kotlin.coroutines.CoroutineContext$Element r0 = r0.get(r1)
            kotlin.coroutines.ContinuationInterceptor r0 = (kotlin.coroutines.ContinuationInterceptor) r0
            r6 = r0
            r0 = r5
            kotlin.coroutines.experimental.migration.ContextMigration$Key r1 = kotlin.coroutines.experimental.migration.ContextMigration.Key
            kotlin.coroutines.CoroutineContext$Key r1 = (kotlin.coroutines.CoroutineContext.Key) r1
            kotlin.coroutines.CoroutineContext$Element r0 = r0.get(r1)
            kotlin.coroutines.experimental.migration.ContextMigration r0 = (kotlin.coroutines.experimental.migration.ContextMigration) r0
            r7 = r0
            r0 = r5
            kotlin.coroutines.ContinuationInterceptor$Key r1 = kotlin.coroutines.ContinuationInterceptor.Key
            kotlin.coroutines.CoroutineContext$Key r1 = (kotlin.coroutines.CoroutineContext.Key) r1
            kotlin.coroutines.CoroutineContext r0 = r0.minusKey(r1)
            kotlin.coroutines.experimental.migration.ContextMigration$Key r1 = kotlin.coroutines.experimental.migration.ContextMigration.Key
            kotlin.coroutines.CoroutineContext$Key r1 = (kotlin.coroutines.CoroutineContext.Key) r1
            kotlin.coroutines.CoroutineContext r0 = r0.minusKey(r1)
            r8 = r0
            r0 = r7
            if (r0 == 0) goto L_0x004e
            r0 = r7
            kotlin.coroutines.experimental.CoroutineContext r0 = r0.getContext()
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x004e
            goto L_0x0055
        L_0x004e:
            kotlin.coroutines.experimental.EmptyCoroutineContext r0 = kotlin.coroutines.experimental.EmptyCoroutineContext.INSTANCE
            kotlin.coroutines.experimental.CoroutineContext r0 = (kotlin.coroutines.experimental.CoroutineContext) r0
            r5 = r0
        L_0x0055:
            r0 = r8
            kotlin.coroutines.EmptyCoroutineContext r1 = kotlin.coroutines.EmptyCoroutineContext.INSTANCE
            if (r0 != r1) goto L_0x005f
            goto L_0x0071
        L_0x005f:
            r0 = r5
            kotlin.coroutines.experimental.migration.ExperimentalContextMigration r1 = new kotlin.coroutines.experimental.migration.ExperimentalContextMigration
            r2 = r1
            r3 = r8
            r2.<init>(r3)
            kotlin.coroutines.experimental.CoroutineContext r1 = (kotlin.coroutines.experimental.CoroutineContext) r1
            kotlin.coroutines.experimental.CoroutineContext r0 = r0.plus(r1)
            r5 = r0
        L_0x0071:
            r0 = r6
            if (r0 != 0) goto L_0x0078
            goto L_0x0086
        L_0x0078:
            r0 = r5
            r1 = r6
            kotlin.coroutines.experimental.ContinuationInterceptor r1 = toExperimentalContinuationInterceptor(r1)
            kotlin.coroutines.experimental.CoroutineContext r1 = (kotlin.coroutines.experimental.CoroutineContext) r1
            kotlin.coroutines.experimental.CoroutineContext r0 = r0.plus(r1)
            r5 = r0
        L_0x0086:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.coroutines.experimental.migration.CoroutinesMigrationKt.toExperimentalCoroutineContext(kotlin.coroutines.CoroutineContext):kotlin.coroutines.experimental.CoroutineContext");
    }

    @NotNull
    public static final <R> Function1<kotlin.coroutines.experimental.Continuation<? super R>, Object> toExperimentalSuspendFunction(@NotNull Function1<? super Continuation<? super R>, ? extends Object> receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return new ExperimentalSuspendFunction0Migration(receiver$0);
    }

    @NotNull
    public static final <T1, R> Function2<T1, kotlin.coroutines.experimental.Continuation<? super R>, Object> toExperimentalSuspendFunction(@NotNull Function2<? super T1, ? super Continuation<? super R>, ? extends Object> receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return new ExperimentalSuspendFunction1Migration(receiver$0);
    }

    @NotNull
    public static final <T1, T2, R> Function3<T1, T2, kotlin.coroutines.experimental.Continuation<? super R>, Object> toExperimentalSuspendFunction(@NotNull Function3<? super T1, ? super T2, ? super Continuation<? super R>, ? extends Object> receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return new ExperimentalSuspendFunction2Migration(receiver$0);
    }
}
