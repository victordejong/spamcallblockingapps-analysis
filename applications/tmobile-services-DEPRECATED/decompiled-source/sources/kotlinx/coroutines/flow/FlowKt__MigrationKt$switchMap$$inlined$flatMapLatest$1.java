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
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u00042\u0006\u0010\u0005\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", "T", "R", "Lkotlinx/coroutines/flow/FlowCollector;", "it", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__MergeKt$flatMapLatest$1"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.flow.FlowKt__MigrationKt$switchMap$$inlined$flatMapLatest$1", m1914f = "Migration.kt", m1913l = {190, 216}, m1912m = "invokeSuspend")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__MigrationKt$switchMap$$inlined$flatMapLatest$1.class */
public final class FlowKt__MigrationKt$switchMap$$inlined$flatMapLatest$1 extends SuspendLambda implements Function3<FlowCollector<? super R>, T, Continuation<? super Unit>, Object> {

    /* renamed from: g */
    private FlowCollector f23072g;

    /* renamed from: h */
    private Object f23073h;

    /* renamed from: i */
    Object f23074i;

    /* renamed from: j */
    Object f23075j;

    /* renamed from: k */
    Object f23076k;

    /* renamed from: l */
    Object f23077l;

    /* renamed from: m */
    int f23078m;

    /* renamed from: n */
    final /* synthetic */ Function2 f23079n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__MigrationKt$switchMap$$inlined$flatMapLatest$1(Function2 function2, Continuation continuation) {
        super(3, continuation);
        this.f23079n = function2;
    }

    @Override // kotlin.jvm.functions.Function3
    /* renamed from: a */
    public final Object mo594a(Object obj, Object obj2, Continuation<? super Unit> continuation) {
        return ((FlowKt__MigrationKt$switchMap$$inlined$flatMapLatest$1) m678d((FlowCollector) obj, obj2, continuation)).invokeSuspend(Unit.f20447a);
    }

    @NotNull
    /* renamed from: d */
    public final Continuation<Unit> m678d(@NotNull FlowCollector<? super R> flowCollector, T t, @NotNull Continuation<? super Unit> continuation) {
        FlowKt__MigrationKt$switchMap$$inlined$flatMapLatest$1 flowKt__MigrationKt$switchMap$$inlined$flatMapLatest$1 = new FlowKt__MigrationKt$switchMap$$inlined$flatMapLatest$1(this.f23079n, continuation);
        flowKt__MigrationKt$switchMap$$inlined$flatMapLatest$1.f23072g = flowCollector;
        flowKt__MigrationKt$switchMap$$inlined$flatMapLatest$1.f23073h = t;
        return flowKt__MigrationKt$switchMap$$inlined$flatMapLatest$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object d;
        Object obj2;
        Object obj3;
        FlowCollector flowCollector;
        FlowCollector flowCollector2;
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        int i = this.f23078m;
        if (i == 0) {
            ResultKt.m2472b(obj);
            FlowCollector flowCollector3 = this.f23072g;
            obj3 = this.f23073h;
            Function2 function2 = this.f23079n;
            this.f23074i = flowCollector3;
            this.f23075j = obj3;
            this.f23076k = flowCollector3;
            this.f23078m = 1;
            obj2 = function2.mo422o(obj3, this);
            if (obj2 == d) {
                return d;
            }
            flowCollector2 = flowCollector3;
            flowCollector = flowCollector3;
        } else if (i == 1) {
            flowCollector = (FlowCollector) this.f23076k;
            obj3 = this.f23075j;
            flowCollector2 = (FlowCollector) this.f23074i;
            ResultKt.m2472b(obj);
            obj2 = obj;
        } else if (i == 2) {
            Flow flow = (Flow) this.f23077l;
            FlowCollector flowCollector4 = (FlowCollector) this.f23076k;
            FlowCollector flowCollector5 = (FlowCollector) this.f23074i;
            ResultKt.m2472b(obj);
            return Unit.f20447a;
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        Flow flow2 = (Flow) obj2;
        this.f23074i = flowCollector2;
        this.f23075j = obj3;
        this.f23076k = flowCollector;
        this.f23077l = flow2;
        this.f23078m = 2;
        if (flow2.mo589a(flowCollector, this) == d) {
            return d;
        }
        return Unit.f20447a;
    }
}
