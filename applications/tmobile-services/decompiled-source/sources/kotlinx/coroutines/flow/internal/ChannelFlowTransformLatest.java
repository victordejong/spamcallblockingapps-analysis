package kotlinx.coroutines.flow.internal;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.DebugKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��R\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b��\u0018��*\u0004\b��\u0010\u0001*\u0004\b\u0001\u0010\u00022\u00020\u0003Bp\u0012B\u0010\u0017\u001a>\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u000b\u0012\u0013\u0012\u00118��¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\u0013\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u0010¢\u0006\u0002\b\u0016\u0012\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00028��0\u0019\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006ø\u0001��¢\u0006\u0004\b\u001b\u0010\u001cJ%\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00010\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\t\u0010\nJ!\u0010\u000e\u001a\u00020\r2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00010\u000bH\u0094@ø\u0001��¢\u0006\u0004\b\u000e\u0010\u000fRU\u0010\u0017\u001a>\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u000b\u0012\u0013\u0012\u00118��¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\u0013\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u0010¢\u0006\u0002\b\u00168\u0002@\u0002X\u0082\u0004ø\u0001��¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001d"}, d2 = {"Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;", "T", "R", "Lkotlinx/coroutines/flow/internal/ChannelFlowOperator;", "Lkotlin/coroutines/CoroutineContext;", "context", "", "capacity", "Lkotlinx/coroutines/flow/internal/ChannelFlow;", "create", "(Lkotlin/coroutines/CoroutineContext;I)Lkotlinx/coroutines/flow/internal/ChannelFlow;", "Lkotlinx/coroutines/flow/FlowCollector;", "collector", "", "flowCollect", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/Function3;", "Lkotlin/ParameterName;", "name", FirebaseAnalytics.Param.VALUE, "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "transform", "Lkotlin/jvm/functions/Function3;", "Lkotlinx/coroutines/flow/Flow;", "flow", "<init>", "(Lkotlin/jvm/functions/Function3;Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;I)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/internal/ChannelFlowTransformLatest.class */
public final class ChannelFlowTransformLatest<T, R> extends ChannelFlowOperator<T, R> {

    /* renamed from: d */
    private final Function3<FlowCollector<? super R>, T, Continuation<? super Unit>, Object> f23686d;

    /* JADX WARN: Multi-variable type inference failed */
    public ChannelFlowTransformLatest(@NotNull Function3<? super FlowCollector<? super R>, ? super T, ? super Continuation<? super Unit>, ? extends Object> function3, @NotNull Flow<? extends T> flow, @NotNull CoroutineContext coroutineContext, int i) {
        super(flow, coroutineContext, i);
        this.f23686d = function3;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @NotNull
    /* renamed from: f */
    protected ChannelFlow<R> mo614f(@NotNull CoroutineContext coroutineContext, int i) {
        return new ChannelFlowTransformLatest(this.f23686d, this.f23681c, coroutineContext, i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.flow.internal.ChannelFlowOperator
    @Nullable
    /* renamed from: m */
    public Object mo617m(@NotNull FlowCollector<? super R> flowCollector, @NotNull Continuation<? super Unit> continuation) {
        Object d;
        if (!DebugKt.m1308a() || Boxing.m1919a(flowCollector instanceof SendingCollector).booleanValue()) {
            Object b = FlowCoroutineKt.m604b(new ChannelFlowTransformLatest$flowCollect$3(this, flowCollector, null), continuation);
            d = IntrinsicsKt__IntrinsicsKt.m1920d();
            return b == d ? b : Unit.f20447a;
        }
        throw new AssertionError();
    }
}
