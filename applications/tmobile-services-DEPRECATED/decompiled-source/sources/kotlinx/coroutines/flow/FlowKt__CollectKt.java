package kotlinx.coroutines.flow;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlinx.coroutines.flow.internal.NopCollector;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��F\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u001b\u0010\u0002\u001a\u00020\u0001*\u0006\u0012\u0002\b\u00030��H\u0086@ø\u0001��¢\u0006\u0004\b\u0002\u0010\u0003\u001aX\u0010\u0002\u001a\u00020\u0001\"\u0004\b��\u0010\u0004*\b\u0012\u0004\u0012\u00028��0��23\b\u0004\u0010\u000b\u001a-\b\u0001\u0012\u0013\u0012\u00118��¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0005H\u0086Hø\u0001��¢\u0006\u0004\b\u0002\u0010\f\u001am\u0010\u0010\u001a\u00020\u0001\"\u0004\b��\u0010\u0004*\b\u0012\u0004\u0012\u00028��0��2H\b\u0004\u0010\u000b\u001aB\b\u0001\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\u000f\u0012\u0013\u0012\u00118��¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\rH\u0086Hø\u0001��¢\u0006\u0004\b\u0010\u0010\u0011\u001aV\u0010\u0012\u001a\u00020\u0001\"\u0004\b��\u0010\u0004*\b\u0012\u0004\u0012\u00028��0��21\u0010\u000b\u001a-\b\u0001\u0012\u0013\u0012\u00118��¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0005H\u0086@ø\u0001��¢\u0006\u0004\b\u0012\u0010\f\u001a1\u0010\u0015\u001a\u00020\u0001\"\u0004\b��\u0010\u0004*\b\u0012\u0004\u0012\u00028��0\u00132\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028��0��H\u0087Hø\u0001��¢\u0006\u0004\b\u0015\u0010\u0016\u001a%\u0010\u001a\u001a\u00020\u0019\"\u0004\b��\u0010\u0004*\b\u0012\u0004\u0012\u00028��0��2\u0006\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u001a\u0010\u001b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001c"}, d2 = {"Lkotlinx/coroutines/flow/Flow;", "", "collect", "(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "T", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", FirebaseAnalytics.Param.VALUE, "Lkotlin/coroutines/Continuation;", "", "action", "(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/Function3;", "", FirebaseAnalytics.Param.INDEX, "collectIndexed", "(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "collectLatest", "Lkotlinx/coroutines/flow/FlowCollector;", "flow", "emitAll", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/CoroutineScope;", "scope", "Lkotlinx/coroutines/Job;", "launchIn", "(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;", "kotlinx-coroutines-core"}, k = 5, mv = {1, 1, 15}, pn = "", xi = 0, xs = "kotlinx/coroutines/flow/FlowKt")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__CollectKt.class */
final /* synthetic */ class FlowKt__CollectKt {
    @Nullable
    /* renamed from: a */
    public static final Object m723a(@NotNull Flow<?> flow, @NotNull Continuation<? super Unit> continuation) {
        Object d;
        Object a = flow.mo589a(NopCollector.f23863f, continuation);
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        return a == d ? a : Unit.f20447a;
    }
}
