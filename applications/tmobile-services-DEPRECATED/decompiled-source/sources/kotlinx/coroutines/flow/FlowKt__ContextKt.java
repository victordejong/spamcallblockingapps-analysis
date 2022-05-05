package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.internal.ChannelFlowOperatorImpl;
import kotlinx.coroutines.flow.internal.FusibleFlow;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u0017\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020��H\u0002¢\u0006\u0004\b\u0003\u0010\u0004\u001a-\u0010\n\u001a\b\u0012\u0004\u0012\u00028��0\u0007\"\u0004\b��\u0010\u0006*\b\u0012\u0004\u0012\u00028��0\u00072\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b\u001a#\u0010\f\u001a\b\u0012\u0004\u0012\u00028��0\u0007\"\u0004\b��\u0010\u0006*\b\u0012\u0004\u0012\u00028��0\u0007¢\u0006\u0004\b\f\u0010\r\u001a#\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028��0\u0007\"\u0004\b��\u0010\u0006*\b\u0012\u0004\u0012\u00028��0\u0007¢\u0006\u0004\b\u000e\u0010\r\u001a+\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028��0\u0007\"\u0004\b��\u0010\u0006*\b\u0012\u0004\u0012\u00028��0\u00072\u0006\u0010\u0001\u001a\u00020��¢\u0006\u0004\b\u000f\u0010\u0010\u001ab\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00010\u0007\"\u0004\b��\u0010\u0006\"\u0004\b\u0001\u0010\u0011*\b\u0012\u0004\u0012\u00028��0\u00072\u0006\u0010\u0012\u001a\u00020��2\b\b\u0002\u0010\u0013\u001a\u00020\b2#\u0010\u0016\u001a\u001f\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u00070\u0014¢\u0006\u0002\b\u0015H\u0007¢\u0006\u0004\b\u0017\u0010\u0018¨\u0006\u0019"}, d2 = {"Lkotlin/coroutines/CoroutineContext;", "context", "", "checkFlowContext$FlowKt__ContextKt", "(Lkotlin/coroutines/CoroutineContext;)V", "checkFlowContext", "T", "Lkotlinx/coroutines/flow/Flow;", "", "capacity", "buffer", "(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;", "cancellable", "(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;", "conflate", "flowOn", "(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;", "R", "flowContext", "bufferSize", "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "builder", "flowWith", "(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;ILkotlin/Function1;)Lkotlinx/coroutines/flow/Flow;", "kotlinx-coroutines-core"}, k = 5, mv = {1, 1, 15}, pn = "", xi = 0, xs = "kotlinx/coroutines/flow/FlowKt")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__ContextKt.class */
public final /* synthetic */ class FlowKt__ContextKt {
    @NotNull
    /* renamed from: a */
    public static final <T> Flow<T> m721a(@NotNull Flow<? extends T> flow, int i) {
        if (i >= 0 || i == -2 || i == -1) {
            return flow instanceof FusibleFlow ? FusibleFlow.DefaultImpls.m600a((FusibleFlow) flow, null, i, 1, null) : new ChannelFlowOperatorImpl<>(flow, null, i, 2, null);
        }
        throw new IllegalArgumentException(("Buffer size should be non-negative, BUFFERED, or CONFLATED, but was " + i).toString());
    }

    /* renamed from: b */
    private static final void m720b(CoroutineContext coroutineContext) {
        if (!(coroutineContext.get(Job.f21198d) == null)) {
            throw new IllegalArgumentException(("Flow context cannot contain job in it. Had " + coroutineContext).toString());
        }
    }

    @NotNull
    /* renamed from: c */
    public static final <T> Flow<T> m719c(@NotNull Flow<? extends T> flow, @NotNull CoroutineContext coroutineContext) {
        m720b(coroutineContext);
        FusibleFlow fusibleFlow = flow;
        if (!Intrinsics.m1834a(coroutineContext, EmptyCoroutineContext.f20645f)) {
            fusibleFlow = flow instanceof FusibleFlow ? FusibleFlow.DefaultImpls.m600a((FusibleFlow) flow, coroutineContext, 0, 2, null) : new ChannelFlowOperatorImpl(flow, coroutineContext, 0, 4, null);
        }
        return (Flow<T>) fusibleFlow;
    }
}
