package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��B\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\b \u0018��*\u0004\b��\u0010\u0001*\u0004\b\u0001\u0010\u00022\u00020\u0003B%\u0012\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028��0\u0015\u0012\u0006\u0010\u0018\u001a\u00020\r\u0012\u0006\u0010\u001a\u001a\u00020\u0019¢\u0006\u0004\b\u001b\u0010\u001cJ!\u0010\u0007\u001a\u00020\u00062\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004H\u0096@ø\u0001��¢\u0006\u0004\b\u0007\u0010\bJ!\u0010\u000b\u001a\u00020\u00062\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00010\tH\u0094@ø\u0001��¢\u0006\u0004\b\u000b\u0010\fJ)\u0010\u000f\u001a\u00020\u00062\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00010\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0082@ø\u0001��¢\u0006\u0004\b\u000f\u0010\u0010J!\u0010\u0011\u001a\u00020\u00062\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004H¤@ø\u0001��¢\u0006\u0004\b\u0011\u0010\bJ\u000f\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028��0\u00158\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001d"}, d2 = {"Lkotlinx/coroutines/flow/internal/ChannelFlowOperator;", "S", "T", "Lkotlinx/coroutines/flow/internal/ChannelFlow;", "Lkotlinx/coroutines/flow/FlowCollector;", "collector", "", "collect", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/channels/ProducerScope;", "scope", "collectTo", "(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/coroutines/CoroutineContext;", "newContext", "collectWithContextUndispatched", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "flowCollect", "", "toString", "()Ljava/lang/String;", "Lkotlinx/coroutines/flow/Flow;", "flow", "Lkotlinx/coroutines/flow/Flow;", "context", "", "capacity", "<init>", "(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;I)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/internal/ChannelFlowOperator.class */
public abstract class ChannelFlowOperator<S, T> extends ChannelFlow<T> {
    @JvmField
    @NotNull

    /* renamed from: c */
    public final Flow<S> f23681c;

    /* JADX WARN: Multi-variable type inference failed */
    public ChannelFlowOperator(@NotNull Flow<? extends S> flow, @NotNull CoroutineContext coroutineContext, int i) {
        super(coroutineContext, i);
        this.f23681c = flow;
    }

    /* renamed from: j */
    static /* synthetic */ Object m620j(ChannelFlowOperator channelFlowOperator, FlowCollector flowCollector, Continuation continuation) {
        Object d;
        Object d2;
        Object d3;
        if (channelFlowOperator.f23649b == -3) {
            CoroutineContext context = continuation.getContext();
            CoroutineContext plus = context.plus(channelFlowOperator.f23648a);
            if (Intrinsics.m1834a(plus, context)) {
                Object m = channelFlowOperator.mo617m(flowCollector, continuation);
                d3 = IntrinsicsKt__IntrinsicsKt.m1920d();
                return m == d3 ? m : Unit.f20447a;
            } else if (Intrinsics.m1834a((ContinuationInterceptor) plus.get(ContinuationInterceptor.f20640b), (ContinuationInterceptor) context.get(ContinuationInterceptor.f20640b))) {
                Object l = channelFlowOperator.m618l(flowCollector, plus, continuation);
                d2 = IntrinsicsKt__IntrinsicsKt.m1920d();
                return l == d2 ? l : Unit.f20447a;
            }
        }
        Object a = super.mo589a(flowCollector, continuation);
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        return a == d ? a : Unit.f20447a;
    }

    /* renamed from: k */
    static /* synthetic */ Object m619k(ChannelFlowOperator channelFlowOperator, ProducerScope producerScope, Continuation continuation) {
        Object d;
        Object m = channelFlowOperator.mo617m(new SendingCollector(producerScope), continuation);
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        return m == d ? m : Unit.f20447a;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow, kotlinx.coroutines.flow.Flow
    @Nullable
    /* renamed from: a */
    public Object mo589a(@NotNull FlowCollector<? super T> flowCollector, @NotNull Continuation<? super Unit> continuation) {
        return m620j(this, flowCollector, continuation);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @Nullable
    /* renamed from: e */
    public Object mo615e(@NotNull ProducerScope<? super T> producerScope, @NotNull Continuation<? super Unit> continuation) {
        return m619k(this, producerScope, continuation);
    }

    @Nullable
    /* renamed from: l */
    final /* synthetic */ Object m618l(@NotNull FlowCollector<? super T> flowCollector, @NotNull CoroutineContext coroutineContext, @NotNull Continuation<? super Unit> continuation) {
        Object d;
        Object c = ChannelFlowKt.m623c(coroutineContext, null, new ChannelFlowOperator$collectWithContextUndispatched$2(this, null), ChannelFlowKt.m625a(flowCollector, continuation.getContext()), continuation, 2, null);
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        return c == d ? c : Unit.f20447a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    /* renamed from: m */
    public abstract Object mo617m(@NotNull FlowCollector<? super T> flowCollector, @NotNull Continuation<? super Unit> continuation);

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @NotNull
    public String toString() {
        return this.f23681c + " -> " + super.toString();
    }
}
