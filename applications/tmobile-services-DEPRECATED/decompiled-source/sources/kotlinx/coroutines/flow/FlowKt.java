package kotlinx.coroutines.flow;

import java.util.Collection;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.ReceiveChannel;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"kotlinx/coroutines/flow/FlowKt__BuildersKt", "kotlinx/coroutines/flow/FlowKt__ChannelsKt", "kotlinx/coroutines/flow/FlowKt__CollectKt", "kotlinx/coroutines/flow/FlowKt__CollectionKt", "kotlinx/coroutines/flow/FlowKt__ContextKt", "kotlinx/coroutines/flow/FlowKt__CountKt", "kotlinx/coroutines/flow/FlowKt__DelayKt", "kotlinx/coroutines/flow/FlowKt__DistinctKt", "kotlinx/coroutines/flow/FlowKt__EmittersKt", "kotlinx/coroutines/flow/FlowKt__ErrorsKt", "kotlinx/coroutines/flow/FlowKt__LimitKt", "kotlinx/coroutines/flow/FlowKt__MergeKt", "kotlinx/coroutines/flow/FlowKt__MigrationKt", "kotlinx/coroutines/flow/FlowKt__ReduceKt", "kotlinx/coroutines/flow/FlowKt__TransformKt", "kotlinx/coroutines/flow/FlowKt__ZipKt"}, d2 = {}, k = 4, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt.class */
public final class FlowKt {
    @NotNull
    /* renamed from: a */
    public static final <T> Flow<T> m744a(@NotNull Flow<? extends T> flow, int i) {
        return FlowKt__ContextKt.m721a(flow, i);
    }

    @Nullable
    /* renamed from: b */
    public static final <T> Object m743b(@NotNull Flow<? extends T> flow, @NotNull FlowCollector<? super T> flowCollector, @NotNull Continuation<? super Throwable> continuation) {
        return FlowKt__ErrorsKt.m710a(flow, flowCollector, continuation);
    }

    @Nullable
    /* renamed from: c */
    public static final Object m742c(@NotNull Flow<?> flow, @NotNull Continuation<? super Unit> continuation) {
        return FlowKt__CollectKt.m723a(flow, continuation);
    }

    @Nullable
    /* renamed from: d */
    public static final <T> Object m741d(@NotNull Flow<? extends T> flow, @NotNull Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2, @NotNull Continuation<? super Unit> continuation) {
        return FlowKt__LimitKt.m702a(flow, function2, continuation);
    }

    @Nullable
    /* renamed from: e */
    public static final <T> Object m740e(@NotNull Flow<? extends T> flow, @NotNull Continuation<? super Integer> continuation) {
        return FlowKt__CountKt.m718a(flow, continuation);
    }

    @Nullable
    /* renamed from: f */
    public static final <T> Object m739f(@NotNull Flow<? extends T> flow, @NotNull Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2, @NotNull Continuation<? super Integer> continuation) {
        return FlowKt__CountKt.m717b(flow, function2, continuation);
    }

    @Nullable
    /* renamed from: g */
    public static final <T> Object m738g(@NotNull FlowCollector<? super T> flowCollector, @NotNull ReceiveChannel<? extends T> receiveChannel, @NotNull Continuation<? super Unit> continuation) {
        return FlowKt__ChannelsKt.m725a(flowCollector, receiveChannel, continuation);
    }

    @Nullable
    /* renamed from: h */
    public static final <T> Object m737h(@NotNull Flow<? extends T> flow, @NotNull Continuation<? super T> continuation) {
        return FlowKt__ReduceKt.m677a(flow, continuation);
    }

    @Nullable
    /* renamed from: i */
    public static final <T> Object m736i(@NotNull Flow<? extends T> flow, @NotNull Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2, @NotNull Continuation<? super T> continuation) {
        return FlowKt__ReduceKt.m676b(flow, function2, continuation);
    }

    @Nullable
    /* renamed from: j */
    public static final <T> Object m735j(@NotNull Flow<? extends T> flow, @NotNull Continuation<? super T> continuation) {
        return FlowKt__ReduceKt.m675c(flow, continuation);
    }

    @Nullable
    /* renamed from: k */
    public static final <T> Object m734k(@NotNull Flow<? extends T> flow, @NotNull Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2, @NotNull Continuation<? super T> continuation) {
        return FlowKt__ReduceKt.m674d(flow, function2, continuation);
    }

    @NotNull
    /* renamed from: l */
    public static final ReceiveChannel<Unit> m733l(@NotNull CoroutineScope coroutineScope, long j, long j2) {
        return FlowKt__DelayKt.m716a(coroutineScope, j, j2);
    }

    @NotNull
    /* renamed from: n */
    public static final <T> Flow<T> m731n(@NotNull Flow<? extends T> flow, @NotNull CoroutineContext coroutineContext) {
        return FlowKt__ContextKt.m719c(flow, coroutineContext);
    }

    @Nullable
    /* renamed from: o */
    public static final <T, R> Object m730o(@NotNull Flow<? extends T> flow, R r, @NotNull Function3<? super R, ? super T, ? super Continuation<? super R>, ? extends Object> function3, @NotNull Continuation<? super R> continuation) {
        return FlowKt__ReduceKt.m673e(flow, r, function3, continuation);
    }

    @Nullable
    /* renamed from: p */
    public static final <S, T extends S> Object m729p(@NotNull Flow<? extends T> flow, @NotNull Function3<? super S, ? super T, ? super Continuation<? super S>, ? extends Object> function3, @NotNull Continuation<? super S> continuation) {
        return FlowKt__ReduceKt.m672f(flow, function3, continuation);
    }

    @Nullable
    /* renamed from: q */
    public static final <T> Object m728q(@NotNull Flow<? extends T> flow, @NotNull Continuation<? super T> continuation) {
        return FlowKt__ReduceKt.m671g(flow, continuation);
    }

    @Nullable
    /* renamed from: r */
    public static final <T> Object m727r(@NotNull Flow<? extends T> flow, @NotNull Continuation<? super T> continuation) {
        return FlowKt__ReduceKt.m670h(flow, continuation);
    }

    @Nullable
    /* renamed from: s */
    public static final <T, C extends Collection<? super T>> Object m726s(@NotNull Flow<? extends T> flow, @NotNull C c, @NotNull Continuation<? super C> continuation) {
        return FlowKt__CollectionKt.m722a(flow, c, continuation);
    }
}
