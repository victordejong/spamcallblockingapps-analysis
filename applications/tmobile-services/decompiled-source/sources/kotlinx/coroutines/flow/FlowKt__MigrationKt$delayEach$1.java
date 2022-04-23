package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.DelayKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "", "T", "it", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.flow.FlowKt__MigrationKt$delayEach$1", m1914f = "Migration.kt", m1913l = {425}, m1912m = "invokeSuspend")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__MigrationKt$delayEach$1.class */
final class FlowKt__MigrationKt$delayEach$1 extends SuspendLambda implements Function2<T, Continuation<? super Unit>, Object> {

    /* renamed from: g */
    private Object f23080g;

    /* renamed from: h */
    Object f23081h;

    /* renamed from: i */
    int f23082i;

    /* renamed from: j */
    final /* synthetic */ long f23083j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FlowKt__MigrationKt$delayEach$1(long j, Continuation continuation) {
        super(2, continuation);
        this.f23083j = j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        FlowKt__MigrationKt$delayEach$1 flowKt__MigrationKt$delayEach$1 = new FlowKt__MigrationKt$delayEach$1(this.f23083j, continuation);
        flowKt__MigrationKt$delayEach$1.f23080g = obj;
        return flowKt__MigrationKt$delayEach$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object d;
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        int i = this.f23082i;
        if (i == 0) {
            ResultKt.m2472b(obj);
            Object obj2 = this.f23080g;
            long j = this.f23083j;
            this.f23081h = obj2;
            this.f23082i = 1;
            if (DelayKt.m1293a(j, this) == d) {
                return d;
            }
        } else if (i == 1) {
            ResultKt.m2472b(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return Unit.f20447a;
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: o */
    public final Object mo422o(Object obj, Continuation<? super Unit> continuation) {
        return ((FlowKt__MigrationKt$delayEach$1) create(obj, continuation)).invokeSuspend(Unit.f20447a);
    }
}
