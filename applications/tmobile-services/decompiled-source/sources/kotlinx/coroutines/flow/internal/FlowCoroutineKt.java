package kotlinx.coroutines.flow.internal;

import kotlin.BuilderInference;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineContextKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.intrinsics.UndispatchedKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��F\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001aD\u0010\u0007\u001a\u00028��\"\u0004\b��\u0010��2)\b\u0001\u0010\u0006\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0001¢\u0006\u0002\b\u0005H\u0080@ø\u0001��¢\u0006\u0004\b\u0007\u0010\b\u001aU\u0010\r\u001a\b\u0012\u0004\u0012\u00028��0\f\"\u0004\b��\u0010��25\b\u0001\u0010\u0006\u001a/\b\u0001\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\n\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00040\t¢\u0006\u0002\b\u0005H��ø\u0001��¢\u0006\u0004\b\r\u0010\u000e\u001ae\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028��0\u0015\"\u0004\b��\u0010\u000f*\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00102\b\b\u0002\u0010\u0013\u001a\u00020\u00122/\b\u0001\u0010\u0006\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0001¢\u0006\u0002\b\u0005H��ø\u0001��¢\u0006\u0004\b\u0016\u0010\u0017\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0018"}, d2 = {"R", "Lkotlin/Function2;", "Lkotlinx/coroutines/CoroutineScope;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "block", "flowScope", "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/Function3;", "Lkotlinx/coroutines/flow/FlowCollector;", "", "Lkotlinx/coroutines/flow/Flow;", "scopedFlow", "(Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;", "T", "Lkotlin/coroutines/CoroutineContext;", "context", "", "capacity", "Lkotlinx/coroutines/channels/ProducerScope;", "Lkotlinx/coroutines/channels/ReceiveChannel;", "flowProduce", "(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/ReceiveChannel;", "kotlinx-coroutines-core"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/internal/FlowCoroutineKt.class */
public final class FlowCoroutineKt {
    @NotNull
    /* renamed from: a */
    public static final <T> ReceiveChannel<T> m605a(@NotNull CoroutineScope coroutineScope, @NotNull CoroutineContext coroutineContext, int i, @BuilderInference @NotNull Function2<? super ProducerScope<? super T>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        FlowProduceCoroutine flowProduceCoroutine = new FlowProduceCoroutine(CoroutineContextKt.m1323c(coroutineScope, coroutineContext), ChannelKt.m999a(i));
        flowProduceCoroutine.m1386U0(CoroutineStart.ATOMIC, flowProduceCoroutine, function2);
        return flowProduceCoroutine;
    }

    @Nullable
    /* renamed from: b */
    public static final <R> Object m604b(@BuilderInference @NotNull Function2<? super CoroutineScope, ? super Continuation<? super R>, ? extends Object> function2, @NotNull Continuation<? super R> continuation) {
        Object d;
        FlowCoroutine flowCoroutine = new FlowCoroutine(continuation.getContext(), continuation);
        Object e = UndispatchedKt.m394e(flowCoroutine, flowCoroutine, function2);
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        if (e == d) {
            DebugProbesKt.m1904c(continuation);
        }
        return e;
    }
}
