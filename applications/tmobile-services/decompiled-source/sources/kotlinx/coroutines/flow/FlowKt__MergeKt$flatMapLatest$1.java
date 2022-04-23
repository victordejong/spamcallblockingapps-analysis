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
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u00042\u0006\u0010\u0005\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"<anonymous>", "", "T", "R", "Lkotlinx/coroutines/flow/FlowCollector;", "it", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapLatest$1", m1914f = "Merge.kt", m1913l = {190, 216}, m1912m = "invokeSuspend")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__MergeKt$flatMapLatest$1.class */
public final class FlowKt__MergeKt$flatMapLatest$1 extends SuspendLambda implements Function3<FlowCollector<? super R>, T, Continuation<? super Unit>, Object> {

    /* renamed from: g */
    private FlowCollector f22928g;

    /* renamed from: h */
    private Object f22929h;

    /* renamed from: i */
    Object f22930i;

    /* renamed from: j */
    Object f22931j;

    /* renamed from: k */
    Object f22932k;

    /* renamed from: l */
    Object f22933l;

    /* renamed from: m */
    int f22934m;

    /* renamed from: n */
    final /* synthetic */ Function2 f22935n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__MergeKt$flatMapLatest$1(Function2 function2, Continuation continuation) {
        super(3, continuation);
        this.f22935n = function2;
    }

    @Override // kotlin.jvm.functions.Function3
    /* renamed from: a */
    public final Object mo594a(Object obj, Object obj2, Continuation<? super Unit> continuation) {
        return ((FlowKt__MergeKt$flatMapLatest$1) m700d((FlowCollector) obj, obj2, continuation)).invokeSuspend(Unit.f20447a);
    }

    @NotNull
    /* renamed from: d */
    public final Continuation<Unit> m700d(@NotNull FlowCollector<? super R> flowCollector, T t, @NotNull Continuation<? super Unit> continuation) {
        FlowKt__MergeKt$flatMapLatest$1 flowKt__MergeKt$flatMapLatest$1 = new FlowKt__MergeKt$flatMapLatest$1(this.f22935n, continuation);
        flowKt__MergeKt$flatMapLatest$1.f22928g = flowCollector;
        flowKt__MergeKt$flatMapLatest$1.f22929h = t;
        return flowKt__MergeKt$flatMapLatest$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object d;
        Object obj2;
        FlowCollector flowCollector;
        FlowCollector flowCollector2;
        Object obj3;
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        int i = this.f22934m;
        if (i == 0) {
            ResultKt.m2472b(obj);
            FlowCollector flowCollector3 = this.f22928g;
            obj3 = this.f22929h;
            Function2 function2 = this.f22935n;
            this.f22930i = flowCollector3;
            this.f22931j = obj3;
            this.f22932k = flowCollector3;
            this.f22934m = 1;
            obj2 = function2.mo422o(obj3, this);
            if (obj2 == d) {
                return d;
            }
            flowCollector = flowCollector3;
            flowCollector2 = flowCollector3;
        } else if (i == 1) {
            flowCollector2 = (FlowCollector) this.f22932k;
            obj3 = this.f22931j;
            flowCollector = (FlowCollector) this.f22930i;
            ResultKt.m2472b(obj);
            obj2 = obj;
        } else if (i == 2) {
            Flow flow = (Flow) this.f22933l;
            FlowCollector flowCollector4 = (FlowCollector) this.f22932k;
            FlowCollector flowCollector5 = (FlowCollector) this.f22930i;
            ResultKt.m2472b(obj);
            return Unit.f20447a;
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        Flow flow2 = (Flow) obj2;
        this.f22930i = flowCollector;
        this.f22931j = obj3;
        this.f22932k = flowCollector2;
        this.f22933l = flow2;
        this.f22934m = 2;
        if (flow2.mo589a(flowCollector2, this) == d) {
            return d;
        }
        return Unit.f20447a;
    }
}
