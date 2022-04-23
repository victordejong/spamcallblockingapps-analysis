package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlinx.coroutines.flow.internal.CombineKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u0003\"\u0004\b\u0002\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u0005H\u008a@¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"<anonymous>", "", "T1", "T2", "R", "Lkotlinx/coroutines/flow/FlowCollector;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$1", m1914f = "Zip.kt", m1913l = {79}, m1912m = "invokeSuspend")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$1.class */
public final class FlowKt__ZipKt$combineTransform$1 extends SuspendLambda implements Function2<FlowCollector<? super R>, Continuation<? super Unit>, Object> {

    /* renamed from: g */
    private FlowCollector f23593g;

    /* renamed from: h */
    Object f23594h;

    /* renamed from: i */
    int f23595i;

    /* renamed from: j */
    final /* synthetic */ Flow f23596j;

    /* renamed from: k */
    final /* synthetic */ Flow f23597k;

    /* renamed from: l */
    final /* synthetic */ Function4 f23598l;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u0003\"\u0004\b\u0002\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00052\u0006\u0010\u0006\u001a\u0002H\u00022\u0006\u0010\u0007\u001a\u0002H\u0003H\u008a@¢\u0006\u0004\b\b\u0010\t"}, d2 = {"<anonymous>", "", "T1", "T2", "R", "Lkotlinx/coroutines/flow/FlowCollector;", "a", "b", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    @DebugMetadata(m1915c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$1$1", m1914f = "Zip.kt", m1913l = {80}, m1912m = "invokeSuspend")
    /* renamed from: kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$1$1 */
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$1$1.class */
    public static final class C24201 extends SuspendLambda implements Function4<FlowCollector<? super R>, T1, T2, Continuation<? super Unit>, Object> {

        /* renamed from: g */
        private FlowCollector f23599g;

        /* renamed from: h */
        private Object f23600h;

        /* renamed from: i */
        private Object f23601i;

        /* renamed from: j */
        Object f23602j;

        /* renamed from: k */
        Object f23603k;

        /* renamed from: l */
        Object f23604l;

        /* renamed from: m */
        int f23605m;

        C24201(Continuation continuation) {
            super(4, continuation);
        }

        @NotNull
        /* renamed from: d */
        public final Continuation<Unit> m644d(@NotNull FlowCollector<? super R> flowCollector, T1 t1, T2 t2, @NotNull Continuation<? super Unit> continuation) {
            C24201 r0 = new C24201(continuation);
            r0.f23599g = flowCollector;
            r0.f23600h = t1;
            r0.f23601i = t2;
            return r0;
        }

        @Override // kotlin.jvm.functions.Function4
        /* renamed from: h */
        public final Object mo643h(Object obj, Object obj2, Object obj3, Continuation<? super Unit> continuation) {
            return ((C24201) m644d((FlowCollector) obj, obj2, obj3, continuation)).invokeSuspend(Unit.f20447a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object d;
            d = IntrinsicsKt__IntrinsicsKt.m1920d();
            int i = this.f23605m;
            if (i == 0) {
                ResultKt.m2472b(obj);
                FlowCollector flowCollector = this.f23599g;
                Object obj2 = this.f23600h;
                Object obj3 = this.f23601i;
                Function4 function4 = FlowKt__ZipKt$combineTransform$1.this.f23598l;
                this.f23602j = flowCollector;
                this.f23603k = obj2;
                this.f23604l = obj3;
                this.f23605m = 1;
                if (function4.mo643h(flowCollector, obj2, obj3, this) == d) {
                    return d;
                }
            } else if (i == 1) {
                FlowCollector flowCollector2 = (FlowCollector) this.f23602j;
                ResultKt.m2472b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            return Unit.f20447a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FlowKt__ZipKt$combineTransform$1(Flow flow, Flow flow2, Function4 function4, Continuation continuation) {
        super(2, continuation);
        this.f23596j = flow;
        this.f23597k = flow2;
        this.f23598l = function4;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        FlowKt__ZipKt$combineTransform$1 flowKt__ZipKt$combineTransform$1 = new FlowKt__ZipKt$combineTransform$1(this.f23596j, this.f23597k, this.f23598l, continuation);
        flowKt__ZipKt$combineTransform$1.f23593g = (FlowCollector) obj;
        return flowKt__ZipKt$combineTransform$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object d;
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        int i = this.f23595i;
        if (i == 0) {
            ResultKt.m2472b(obj);
            FlowCollector flowCollector = this.f23593g;
            Flow flow = this.f23596j;
            Flow flow2 = this.f23597k;
            C24201 r0 = new C24201(null);
            this.f23594h = flowCollector;
            this.f23595i = 1;
            if (CombineKt.m607f(flowCollector, flow, flow2, r0, this) == d) {
                return d;
            }
        } else if (i == 1) {
            FlowCollector flowCollector2 = (FlowCollector) this.f23594h;
            ResultKt.m2472b(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return Unit.f20447a;
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: o */
    public final Object mo422o(Object obj, Continuation<? super Unit> continuation) {
        return ((FlowKt__ZipKt$combineTransform$1) create(obj, continuation)).invokeSuspend(Unit.f20447a);
    }
}
