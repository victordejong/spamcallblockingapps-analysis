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
@DebugMetadata(m1915c = "kotlinx.coroutines.flow.FlowKt__MergeKt$mapLatest$1", m1914f = "Merge.kt", m1913l = {214, 214}, m1912m = "invokeSuspend")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__MergeKt$mapLatest$1.class */
final class FlowKt__MergeKt$mapLatest$1 extends SuspendLambda implements Function3<FlowCollector<? super R>, T, Continuation<? super Unit>, Object> {

    /* renamed from: g */
    private FlowCollector f22936g;

    /* renamed from: h */
    private Object f22937h;

    /* renamed from: i */
    Object f22938i;

    /* renamed from: j */
    Object f22939j;

    /* renamed from: k */
    Object f22940k;

    /* renamed from: l */
    int f22941l;

    /* renamed from: m */
    final /* synthetic */ Function2 f22942m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FlowKt__MergeKt$mapLatest$1(Function2 function2, Continuation continuation) {
        super(3, continuation);
        this.f22942m = function2;
    }

    @Override // kotlin.jvm.functions.Function3
    /* renamed from: a */
    public final Object mo594a(Object obj, Object obj2, Continuation<? super Unit> continuation) {
        return ((FlowKt__MergeKt$mapLatest$1) m699d((FlowCollector) obj, obj2, continuation)).invokeSuspend(Unit.f20447a);
    }

    @NotNull
    /* renamed from: d */
    public final Continuation<Unit> m699d(@NotNull FlowCollector<? super R> flowCollector, T t, @NotNull Continuation<? super Unit> continuation) {
        FlowKt__MergeKt$mapLatest$1 flowKt__MergeKt$mapLatest$1 = new FlowKt__MergeKt$mapLatest$1(this.f22942m, continuation);
        flowKt__MergeKt$mapLatest$1.f22936g = flowCollector;
        flowKt__MergeKt$mapLatest$1.f22937h = t;
        return flowKt__MergeKt$mapLatest$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object d;
        FlowCollector flowCollector;
        Object obj2;
        FlowCollector flowCollector2;
        Object obj3;
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        int i = this.f22941l;
        if (i == 0) {
            ResultKt.m2472b(obj);
            FlowCollector flowCollector3 = this.f22936g;
            obj2 = this.f22937h;
            Function2 function2 = this.f22942m;
            this.f22938i = flowCollector3;
            this.f22939j = obj2;
            this.f22940k = flowCollector3;
            this.f22941l = 1;
            obj3 = function2.mo422o(obj2, this);
            if (obj3 == d) {
                return d;
            }
            flowCollector = flowCollector3;
            flowCollector2 = flowCollector3;
        } else if (i == 1) {
            flowCollector2 = (FlowCollector) this.f22940k;
            obj2 = this.f22939j;
            flowCollector = (FlowCollector) this.f22938i;
            ResultKt.m2472b(obj);
            obj3 = obj;
        } else if (i == 2) {
            FlowCollector flowCollector4 = (FlowCollector) this.f22938i;
            ResultKt.m2472b(obj);
            return Unit.f20447a;
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        this.f22938i = flowCollector;
        this.f22939j = obj2;
        this.f22941l = 2;
        if (flowCollector2.mo588b(obj3, this) == d) {
            return d;
        }
        return Unit.f20447a;
    }
}
