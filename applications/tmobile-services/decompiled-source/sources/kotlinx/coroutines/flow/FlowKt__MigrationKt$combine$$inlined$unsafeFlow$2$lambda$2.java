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
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\b\u0003\u0010��\u001a\u00020\u0001\"\u0006\b��\u0010\u0002\u0018\u0001\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u008a@¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"<anonymous>", "", "T", "R", "Lkotlinx/coroutines/flow/FlowCollector;", "it", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__ZipKt$combine$5$2"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.flow.FlowKt__MigrationKt$combine$$inlined$unsafeFlow$2$lambda$2", m1914f = "Zip.kt", m1913l = {240, 240}, m1912m = "invokeSuspend")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__MigrationKt$combine$$inlined$unsafeFlow$2$lambda$2.class */
public final class FlowKt__MigrationKt$combine$$inlined$unsafeFlow$2$lambda$2 extends SuspendLambda implements Function3<FlowCollector<? super R>, T[], Continuation<? super Unit>, Object> {

    /* renamed from: g */
    private FlowCollector f23007g;

    /* renamed from: h */
    private Object[] f23008h;

    /* renamed from: i */
    Object f23009i;

    /* renamed from: j */
    Object f23010j;

    /* renamed from: k */
    Object f23011k;

    /* renamed from: l */
    int f23012l;

    /* renamed from: m */
    final /* synthetic */ FlowKt__MigrationKt$combine$$inlined$unsafeFlow$2 f23013m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__MigrationKt$combine$$inlined$unsafeFlow$2$lambda$2(Continuation continuation, FlowKt__MigrationKt$combine$$inlined$unsafeFlow$2 flowKt__MigrationKt$combine$$inlined$unsafeFlow$2) {
        super(3, continuation);
        this.f23013m = flowKt__MigrationKt$combine$$inlined$unsafeFlow$2;
    }

    @Override // kotlin.jvm.functions.Function3
    /* renamed from: a */
    public final Object mo594a(Object obj, Object obj2, Continuation<? super Unit> continuation) {
        return ((FlowKt__MigrationKt$combine$$inlined$unsafeFlow$2$lambda$2) m689d((FlowCollector) obj, (Object[]) obj2, continuation)).invokeSuspend(Unit.f20447a);
    }

    @NotNull
    /* renamed from: d */
    public final Continuation<Unit> m689d(@NotNull FlowCollector<? super R> flowCollector, @NotNull T[] tArr, @NotNull Continuation<? super Unit> continuation) {
        FlowKt__MigrationKt$combine$$inlined$unsafeFlow$2$lambda$2 flowKt__MigrationKt$combine$$inlined$unsafeFlow$2$lambda$2 = new FlowKt__MigrationKt$combine$$inlined$unsafeFlow$2$lambda$2(continuation, this.f23013m);
        flowKt__MigrationKt$combine$$inlined$unsafeFlow$2$lambda$2.f23007g = flowCollector;
        flowKt__MigrationKt$combine$$inlined$unsafeFlow$2$lambda$2.f23008h = tArr;
        return flowKt__MigrationKt$combine$$inlined$unsafeFlow$2$lambda$2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object d;
        Object obj2;
        Object[] objArr;
        FlowCollector flowCollector;
        FlowCollector flowCollector2;
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        int i = this.f23012l;
        if (i == 0) {
            ResultKt.m2472b(obj);
            FlowCollector flowCollector3 = this.f23007g;
            objArr = this.f23008h;
            Function2 function2 = this.f23013m.f23002b;
            this.f23009i = flowCollector3;
            this.f23010j = objArr;
            this.f23011k = flowCollector3;
            this.f23012l = 1;
            obj2 = function2.mo422o(objArr, this);
            if (obj2 == d) {
                return d;
            }
            flowCollector2 = flowCollector3;
            flowCollector = flowCollector3;
        } else if (i == 1) {
            flowCollector = (FlowCollector) this.f23011k;
            objArr = (Object[]) this.f23010j;
            flowCollector2 = (FlowCollector) this.f23009i;
            ResultKt.m2472b(obj);
            obj2 = obj;
        } else if (i == 2) {
            Object[] objArr2 = (Object[]) this.f23010j;
            FlowCollector flowCollector4 = (FlowCollector) this.f23009i;
            ResultKt.m2472b(obj);
            return Unit.f20447a;
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        this.f23009i = flowCollector2;
        this.f23010j = objArr;
        this.f23012l = 2;
        if (flowCollector.mo588b(obj2, this) == d) {
            return d;
        }
        return Unit.f20447a;
    }
}
