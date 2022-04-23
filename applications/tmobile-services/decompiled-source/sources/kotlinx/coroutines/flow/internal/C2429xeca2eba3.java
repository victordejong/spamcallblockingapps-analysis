package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\u00020\u0004H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"<anonymous>", "", "T", "R", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$1$2"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* renamed from: kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1$lambda$1 */
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1$lambda$1.class */
public final class C2429xeca2eba3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* renamed from: g */
    private CoroutineScope f23699g;

    /* renamed from: h */
    Object f23700h;

    /* renamed from: i */
    int f23701i;

    /* renamed from: j */
    final /* synthetic */ Object f23702j;

    /* renamed from: k */
    final /* synthetic */ C2427xfa64eeb5 f23703k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2429xeca2eba3(Object obj, Continuation continuation, C2427xfa64eeb5 channelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1) {
        super(2, continuation);
        this.f23702j = obj;
        this.f23703k = channelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        C2429xeca2eba3 channelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1$lambda$1 = new C2429xeca2eba3(this.f23702j, continuation, this.f23703k);
        channelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1$lambda$1.f23699g = (CoroutineScope) obj;
        return channelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1$lambda$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object d;
        Function3 function3;
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        int i = this.f23701i;
        if (i == 0) {
            ResultKt.m2472b(obj);
            CoroutineScope coroutineScope = this.f23699g;
            function3 = this.f23703k.f23687f.f23709l.f23686d;
            FlowCollector flowCollector = this.f23703k.f23687f.f23710m;
            Object obj2 = this.f23702j;
            this.f23700h = coroutineScope;
            this.f23701i = 1;
            if (function3.mo594a(flowCollector, obj2, this) == d) {
                return d;
            }
        } else if (i == 1) {
            CoroutineScope coroutineScope2 = (CoroutineScope) this.f23700h;
            ResultKt.m2472b(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return Unit.f20447a;
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: o */
    public final Object mo422o(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((C2429xeca2eba3) create(coroutineScope, continuation)).invokeSuspend(Unit.f20447a);
    }
}
