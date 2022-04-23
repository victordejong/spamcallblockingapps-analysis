package kotlinx.coroutines.flow.internal;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.internal.ThreadContextKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a]\u0010\n\u001a\u00028��\"\u0004\b��\u0010��\"\u0004\b\u0001\u0010\u00012\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u00042\"\u0010\b\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00062\u0006\u0010\t\u001a\u00028\u0001H\u0082@ø\u0001��¢\u0006\u0004\b\n\u0010\u000b\u001a%\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028��0\r\"\u0004\b��\u0010��*\b\u0012\u0004\u0012\u00028��0\fH��¢\u0006\u0004\b\u000e\u0010\u000f\u001a-\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028��0\u0010\"\u0004\b��\u0010��*\b\u0012\u0004\u0012\u00028��0\u00102\u0006\u0010\u0011\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0012\u0010\u0013\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0014"}, d2 = {"T", "V", "Lkotlin/coroutines/CoroutineContext;", "newContext", "", "countOrElement", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "block", FirebaseAnalytics.Param.VALUE, "withContextUndispatched", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/flow/Flow;", "Lkotlinx/coroutines/flow/internal/ChannelFlow;", "asChannelFlow", "(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/internal/ChannelFlow;", "Lkotlinx/coroutines/flow/FlowCollector;", "emitContext", "withUndispatchedContextCollector", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/FlowCollector;", "kotlinx-coroutines-core"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/internal/ChannelFlowKt.class */
public final class ChannelFlowKt {
    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    /* renamed from: b */
    public static final /* synthetic */ <T, V> Object m624b(@NotNull CoroutineContext coroutineContext, @NotNull Object obj, @NotNull Function2<? super V, ? super Continuation<? super T>, ? extends Object> function2, V v, @NotNull Continuation<? super T> continuation) {
        Object d;
        Object c = ThreadContextKt.m427c(coroutineContext, obj);
        try {
            Continuation<T> channelFlowKt$withContextUndispatched$$inlined$suspendCoroutineUninterceptedOrReturn$lambda$1 = new Continuation<T>(continuation, coroutineContext, obj, function2, v) { // from class: kotlinx.coroutines.flow.internal.ChannelFlowKt$withContextUndispatched$$inlined$suspendCoroutineUninterceptedOrReturn$lambda$1

                /* renamed from: g */
                final /* synthetic */ Continuation f23660g;

                /* renamed from: h */
                final /* synthetic */ Object f23661h;

                /* renamed from: i */
                final /* synthetic */ Object f23662i;

                {
                    this.f23661h = obj;
                    this.f23662i = v;
                }

                @Override // kotlin.coroutines.Continuation
                @NotNull
                public CoroutineContext getContext() {
                    return CoroutineContext.this;
                }

                @Override // kotlin.coroutines.Continuation
                public void resumeWith(@NotNull Object obj2) {
                    this.f23660g.resumeWith(obj2);
                }
            };
            if (function2 != null) {
                TypeIntrinsics.m1785b(function2, 2);
                Object o = function2.mo422o(v, channelFlowKt$withContextUndispatched$$inlined$suspendCoroutineUninterceptedOrReturn$lambda$1);
                ThreadContextKt.m429a(coroutineContext, c);
                d = IntrinsicsKt__IntrinsicsKt.m1920d();
                if (o == d) {
                    DebugProbesKt.m1904c(continuation);
                }
                return o;
            }
            throw new NullPointerException("null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
        } catch (Throwable th) {
            ThreadContextKt.m429a(coroutineContext, c);
            throw th;
        }
    }

    /* renamed from: c */
    public static /* synthetic */ Object m623c(CoroutineContext coroutineContext, Object obj, Function2 function2, Object obj2, Continuation continuation, int i, Object obj3) {
        if ((i & 2) != 0) {
            obj = ThreadContextKt.m428b(coroutineContext);
        }
        return m624b(coroutineContext, obj, function2, obj2, continuation);
    }

    /* renamed from: d */
    public static final <T> FlowCollector<T> m622d(FlowCollector<? super T> flowCollector, CoroutineContext coroutineContext) {
        boolean z = flowCollector instanceof SendingCollector;
        UndispatchedContextCollector undispatchedContextCollector = flowCollector;
        if (!z) {
            boolean z2 = flowCollector instanceof NopCollector;
            undispatchedContextCollector = flowCollector;
            if (!z2) {
                undispatchedContextCollector = new UndispatchedContextCollector(flowCollector, coroutineContext);
            }
        }
        return (FlowCollector<T>) undispatchedContextCollector;
    }
}
