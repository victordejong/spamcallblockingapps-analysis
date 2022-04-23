package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\u00020\u0004H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"<anonymous>", "", "T", "R", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3", m1914f = "Merge.kt", m1913l = {99}, m1912m = "invokeSuspend")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3.class */
public final class ChannelFlowTransformLatest$flowCollect$3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* renamed from: g */
    private CoroutineScope f23704g;

    /* renamed from: h */
    Object f23705h;

    /* renamed from: i */
    Object f23706i;

    /* renamed from: j */
    Object f23707j;

    /* renamed from: k */
    int f23708k;

    /* renamed from: l */
    final /* synthetic */ ChannelFlowTransformLatest f23709l;

    /* renamed from: m */
    final /* synthetic */ FlowCollector f23710m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChannelFlowTransformLatest$flowCollect$3(ChannelFlowTransformLatest channelFlowTransformLatest, FlowCollector flowCollector, Continuation continuation) {
        super(2, continuation);
        this.f23709l = channelFlowTransformLatest;
        this.f23710m = flowCollector;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        ChannelFlowTransformLatest$flowCollect$3 channelFlowTransformLatest$flowCollect$3 = new ChannelFlowTransformLatest$flowCollect$3(this.f23709l, this.f23710m, continuation);
        channelFlowTransformLatest$flowCollect$3.f23704g = (CoroutineScope) obj;
        return channelFlowTransformLatest$flowCollect$3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object d;
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        int i = this.f23708k;
        if (i == 0) {
            ResultKt.m2472b(obj);
            CoroutineScope coroutineScope = this.f23704g;
            Ref.ObjectRef objectRef = new Ref.ObjectRef();
            objectRef.f20751f = null;
            Flow<S> flow = this.f23709l.f23681c;
            C2427xfa64eeb5 channelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1 = new C2427xfa64eeb5(this, coroutineScope, objectRef);
            this.f23705h = coroutineScope;
            this.f23706i = objectRef;
            this.f23707j = flow;
            this.f23708k = 1;
            if (flow.mo589a(channelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1, this) == d) {
                return d;
            }
        } else if (i == 1) {
            Flow flow2 = (Flow) this.f23707j;
            Ref.ObjectRef objectRef2 = (Ref.ObjectRef) this.f23706i;
            CoroutineScope coroutineScope2 = (CoroutineScope) this.f23705h;
            ResultKt.m2472b(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return Unit.f20447a;
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: o */
    public final Object mo422o(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((ChannelFlowTransformLatest$flowCollect$3) create(coroutineScope, continuation)).invokeSuspend(Unit.f20447a);
    }
}
