package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\"\n\u0002\u0010\t\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u001b\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020��H\u0086@ø\u0001��¢\u0006\u0004\b\u0003\u0010\u0004\u001a\u001e\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0087@ø\u0001��ø\u0001��¢\u0006\u0004\b\u0007\u0010\b\u001a\u0016\u0010\u000b\u001a\u00020��*\u00020\u0005H\u0001ø\u0001��¢\u0006\u0004\b\t\u0010\n\"\u001a\u0010\u0003\u001a\u00020\r*\u00020\f8@@��X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0010"}, d2 = {"", "timeMillis", "", "delay", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/time/Duration;", "duration", "delay-p9JZ4hM", "(DLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "toDelayMillis-LRDsOJo", "(D)J", "toDelayMillis", "Lkotlin/coroutines/CoroutineContext;", "Lkotlinx/coroutines/Delay;", "getDelay", "(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Delay;", "kotlinx-coroutines-core"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/DelayKt.class */
public final class DelayKt {
    @Nullable
    /* renamed from: a */
    public static final Object m1293a(long j, @NotNull Continuation<? super Unit> continuation) {
        Continuation c;
        Object d;
        if (j <= 0) {
            return Unit.f20447a;
        }
        c = IntrinsicsKt__IntrinsicsJvmKt.m1921c(continuation);
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(c, 1);
        cancellableContinuationImpl.m1345v();
        m1292b(cancellableContinuationImpl.getContext()).mo243h(j, cancellableContinuationImpl);
        Object t = cancellableContinuationImpl.m1347t();
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        if (t == d) {
            DebugProbesKt.m1904c(continuation);
        }
        return t;
    }

    @NotNull
    /* renamed from: b */
    public static final Delay m1292b(@NotNull CoroutineContext coroutineContext) {
        CoroutineContext.Element element = coroutineContext.get(ContinuationInterceptor.f20640b);
        CoroutineContext.Element element2 = element;
        if (!(element instanceof Delay)) {
            element2 = null;
        }
        Delay delay = (Delay) element2;
        if (delay == null) {
            delay = DefaultExecutorKt.m1297a();
        }
        return delay;
    }
}
