package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.internal.AbortFlowException;
import kotlinx.coroutines.flow.internal.FlowExceptions_commonKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u0004H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"<anonymous>", "", "T", "R", "Lkotlinx/coroutines/flow/FlowCollector;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.flow.FlowKt__LimitKt$transformWhile$1", m1914f = "Limit.kt", m1913l = {154}, m1912m = "invokeSuspend")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__LimitKt$transformWhile$1.class */
public final class FlowKt__LimitKt$transformWhile$1 extends SuspendLambda implements Function2<FlowCollector<? super R>, Continuation<? super Unit>, Object> {

    /* renamed from: g */
    private FlowCollector f22833g;

    /* renamed from: h */
    Object f22834h;

    /* renamed from: i */
    Object f22835i;

    /* renamed from: j */
    Object f22836j;

    /* renamed from: k */
    int f22837k;

    /* renamed from: l */
    final /* synthetic */ Flow f22838l;

    /* renamed from: m */
    final /* synthetic */ Function3 f22839m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FlowKt__LimitKt$transformWhile$1(Flow flow, Function3 function3, Continuation continuation) {
        super(2, continuation);
        this.f22838l = flow;
        this.f22839m = function3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        FlowKt__LimitKt$transformWhile$1 flowKt__LimitKt$transformWhile$1 = new FlowKt__LimitKt$transformWhile$1(this.f22838l, this.f22839m, continuation);
        flowKt__LimitKt$transformWhile$1.f22833g = (FlowCollector) obj;
        return flowKt__LimitKt$transformWhile$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object d;
        C2312xdf1aa1b6 flowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$1;
        AbortFlowException e;
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        int i = this.f22837k;
        if (i == 0) {
            ResultKt.m2472b(obj);
            FlowCollector flowCollector = this.f22833g;
            Flow flow = this.f22838l;
            flowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$1 = new C2312xdf1aa1b6(this, flowCollector);
            try {
                this.f22834h = flowCollector;
                this.f22835i = flow;
                this.f22836j = flowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$1;
                this.f22837k = 1;
                if (flow.mo589a(flowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$1, this) == d) {
                    return d;
                }
            } catch (AbortFlowException e2) {
                e = e2;
                FlowExceptions_commonKt.m603a(e, flowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$1);
                return Unit.f20447a;
            }
        } else if (i == 1) {
            flowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$1 = (C2312xdf1aa1b6) this.f22836j;
            Flow flow2 = (Flow) this.f22835i;
            FlowCollector flowCollector2 = (FlowCollector) this.f22834h;
            try {
                ResultKt.m2472b(obj);
            } catch (AbortFlowException e3) {
                e = e3;
                FlowExceptions_commonKt.m603a(e, flowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$1);
                return Unit.f20447a;
            }
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return Unit.f20447a;
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: o */
    public final Object mo422o(Object obj, Continuation<? super Unit> continuation) {
        return ((FlowKt__LimitKt$transformWhile$1) create(obj, continuation)).invokeSuspend(Unit.f20447a);
    }
}
