package kotlinx.coroutines.flow.internal;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.internal.Symbol;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��h\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u000f\u0010\u0001\u001a\u00020��H��¢\u0006\u0004\b\u0001\u0010\u0002\u001ap\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00020\u0006\"\u0004\b��\u0010\u0003\"\u0004\b\u0001\u0010\u0004\"\u0004\b\u0002\u0010\u00052\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028��0\u00062\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00010\u00062(\u0010\f\u001a$\b\u0001\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00020\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\tH��ø\u0001��¢\u0006\u0004\b\r\u0010\u000e\u001a%\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0010*\u00020\u000f2\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u0006H\u0002¢\u0006\u0004\b\u0011\u0010\u0012\u001a%\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0010*\u00020\u000f2\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u0006H\u0002¢\u0006\u0004\b\u0013\u0010\u0012\u001a\u0090\u0001\u0010\u001c\u001a\u00020\u001a\"\u0004\b��\u0010\u0005\"\u0004\b\u0001\u0010\u0014*\b\u0012\u0004\u0012\u00028��0\u00152\u0014\u0010\u0017\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0004\u0012\u00028\u00010\u00060\u00162\u0014\u0010\u0019\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00018\u00010\u00160\u001829\u0010\f\u001a5\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0015\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001a0\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\t¢\u0006\u0002\b\u001bH\u0081@ø\u0001��¢\u0006\u0004\b\u001c\u0010\u001d\u001a¤\u0001\u0010%\u001a\u00020\u001a\"\u0004\b��\u0010\u0003\"\u0004\b\u0001\u0010\u0004\"\u0004\b\u0002\u0010\u0005*\b\u0012\u0004\u0012\u00028\u00020\u00152\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00028��0\u00062\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00028\u00010\u00062W\u0010\f\u001aS\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00020\u0015\u0012\u0013\u0012\u00118��¢\u0006\f\b!\u0012\b\b\"\u0012\u0004\b\b(#\u0012\u0013\u0012\u00118\u0001¢\u0006\f\b!\u0012\b\b\"\u0012\u0004\b\b($\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001a0\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0 ¢\u0006\u0002\b\u001bH\u0080@ø\u0001��¢\u0006\u0004\b%\u0010&\u001ax\u0010.\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\u001a0'2\u0006\u0010)\u001a\u00020(2\f\u0010*\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00102\u000e\b\u0004\u0010+\u001a\b\u0012\u0004\u0012\u00020\u001a0\u001823\b\b\u0010.\u001a-\b\u0001\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b!\u0012\b\b\"\u0012\u0004\b\b(-\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001a0\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0,H\u0082\bø\u0001��¢\u0006\u0004\b.\u0010/\u0082\u0002\u0004\n\u0002\b\u0019¨\u00060"}, d2 = {"Lkotlinx/coroutines/internal/Symbol;", "getNull", "()Lkotlinx/coroutines/internal/Symbol;", "T1", "T2", "R", "Lkotlinx/coroutines/flow/Flow;", "flow", "flow2", "Lkotlin/Function3;", "Lkotlin/coroutines/Continuation;", "", "transform", "zipImpl", "(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;", "Lkotlinx/coroutines/CoroutineScope;", "Lkotlinx/coroutines/channels/ReceiveChannel;", "asChannel", "(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/channels/ReceiveChannel;", "asFairChannel", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "flows", "Lkotlin/Function0;", "arrayFactory", "", "Lkotlin/ExtensionFunctionType;", "combineInternal", "(Lkotlinx/coroutines/flow/FlowCollector;[Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "first", "second", "Lkotlin/Function4;", "Lkotlin/ParameterName;", "name", "a", "b", "combineTransformInternal", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/selects/SelectBuilder;", "", "isClosed", "channel", "onClosed", "Lkotlin/Function2;", FirebaseAnalytics.Param.VALUE, "onReceive", "(Lkotlinx/coroutines/selects/SelectBuilder;ZLkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V", "kotlinx-coroutines-core"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/internal/CombineKt.class */
public final class CombineKt {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public static final ReceiveChannel<Object> m610c(CoroutineScope coroutineScope, Flow<?> flow) {
        return ProduceKt.m826e(coroutineScope, null, 0, new CombineKt$asChannel$1(flow, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public static final ReceiveChannel<Object> m609d(CoroutineScope coroutineScope, Flow<?> flow) {
        return ProduceKt.m826e(coroutineScope, null, 0, new CombineKt$asFairChannel$1(flow, null), 3, null);
    }

    @PublishedApi
    @Nullable
    /* renamed from: e */
    public static final <R, T> Object m608e(@NotNull FlowCollector<? super R> flowCollector, @NotNull Flow<? extends T>[] flowArr, @NotNull Function0<T[]> function0, @NotNull Function3<? super FlowCollector<? super R>, ? super T[], ? super Continuation<? super Unit>, ? extends Object> function3, @NotNull Continuation<? super Unit> continuation) {
        Object d;
        Object d2 = CoroutineScopeKt.m1309d(new CombineKt$combineInternal$2(flowCollector, flowArr, function0, function3, null), continuation);
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        return d2 == d ? d2 : Unit.f20447a;
    }

    @Nullable
    /* renamed from: f */
    public static final <T1, T2, R> Object m607f(@NotNull FlowCollector<? super R> flowCollector, @NotNull Flow<? extends T1> flow, @NotNull Flow<? extends T2> flow2, @NotNull Function4<? super FlowCollector<? super R>, ? super T1, ? super T2, ? super Continuation<? super Unit>, ? extends Object> function4, @NotNull Continuation<? super Unit> continuation) {
        Object d;
        Object d2 = CoroutineScopeKt.m1309d(new CombineKt$combineTransformInternal$2(flowCollector, flow, flow2, function4, null), continuation);
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        return d2 == d ? d2 : Unit.f20447a;
    }

    @NotNull
    /* renamed from: g */
    public static final Symbol m606g() {
        return NullSurrogateKt.f23864a;
    }
}
