package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0006\b��\u0010\u0002\u0018\u0001\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u0004H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"<anonymous>", "", "T", "R", "Lkotlinx/coroutines/flow/FlowCollector;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$6", m1914f = "Zip.kt", m1913l = {253}, m1912m = "invokeSuspend")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$6.class */
public final class FlowKt__ZipKt$combineTransform$6 extends SuspendLambda implements Function2<FlowCollector<? super R>, Continuation<? super Unit>, Object> {

    /* renamed from: g */
    private FlowCollector f23607g;

    /* renamed from: h */
    Object f23608h;

    /* renamed from: i */
    int f23609i;

    /* renamed from: j */
    final /* synthetic */ Flow[] f23610j;

    /* renamed from: k */
    final /* synthetic */ Function3 f23611k;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0010\u0011\n\u0002\b\u0004\u0010��\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u0001\"\u0006\b��\u0010\u0002\u0018\u0001\"\u0004\b\u0001\u0010\u0003H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "", "T", "R", "invoke", "()[Ljava/lang/Object;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    /* renamed from: kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$6$1 */
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$6$1.class */
    public static final class C24211 extends Lambda implements Function0<T[]> {

        /* renamed from: f */
        final /* synthetic */ FlowKt__ZipKt$combineTransform$6 f23612f;

        @NotNull
        /* renamed from: b */
        public final T[] m642b() {
            int length = this.f23612f.f23610j.length;
            Intrinsics.m1825j(0, "T?");
            throw null;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() {
            m642b();
            throw null;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0006\b��\u0010\u0002\u0018\u0001\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u008a@¢\u0006\u0004\b\u0007\u0010\b"}, d2 = {"<anonymous>", "", "T", "R", "Lkotlinx/coroutines/flow/FlowCollector;", "it", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    @DebugMetadata(m1915c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$6$2", m1914f = "Zip.kt", m1913l = {253}, m1912m = "invokeSuspend")
    /* renamed from: kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$6$2 */
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$6$2.class */
    public static final class C24222 extends SuspendLambda implements Function3<FlowCollector<? super R>, T[], Continuation<? super Unit>, Object> {

        /* renamed from: g */
        private FlowCollector f23613g;

        /* renamed from: h */
        private Object[] f23614h;

        /* renamed from: i */
        Object f23615i;

        /* renamed from: j */
        Object f23616j;

        /* renamed from: k */
        int f23617k;

        public C24222(Continuation continuation) {
            super(3, continuation);
        }

        @Override // kotlin.jvm.functions.Function3
        /* renamed from: a */
        public final Object mo594a(Object obj, Object obj2, Continuation<? super Unit> continuation) {
            return ((C24222) m641d((FlowCollector) obj, (Object[]) obj2, continuation)).invokeSuspend(Unit.f20447a);
        }

        @NotNull
        /* renamed from: d */
        public final Continuation<Unit> m641d(@NotNull FlowCollector<? super R> flowCollector, @NotNull T[] tArr, @NotNull Continuation<? super Unit> continuation) {
            C24222 r0 = new C24222(continuation);
            r0.f23613g = flowCollector;
            r0.f23614h = tArr;
            return r0;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object d;
            d = IntrinsicsKt__IntrinsicsKt.m1920d();
            int i = this.f23617k;
            if (i == 0) {
                ResultKt.m2472b(obj);
                FlowCollector flowCollector = this.f23613g;
                Object[] objArr = this.f23614h;
                Function3 function3 = FlowKt__ZipKt$combineTransform$6.this.f23611k;
                this.f23615i = flowCollector;
                this.f23616j = objArr;
                this.f23617k = 1;
                if (function3.mo594a(flowCollector, objArr, this) == d) {
                    return d;
                }
            } else if (i == 1) {
                Object[] objArr2 = (Object[]) this.f23616j;
                FlowCollector flowCollector2 = (FlowCollector) this.f23615i;
                ResultKt.m2472b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            return Unit.f20447a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__ZipKt$combineTransform$6(Flow[] flowArr, Function3 function3, Continuation continuation) {
        super(2, continuation);
        this.f23610j = flowArr;
        this.f23611k = function3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        FlowKt__ZipKt$combineTransform$6 flowKt__ZipKt$combineTransform$6 = new FlowKt__ZipKt$combineTransform$6(this.f23610j, this.f23611k, continuation);
        flowKt__ZipKt$combineTransform$6.f23607g = (FlowCollector) obj;
        return flowKt__ZipKt$combineTransform$6;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        IntrinsicsKt__IntrinsicsKt.m1920d();
        int i = this.f23609i;
        if (i == 0) {
            ResultKt.m2472b(obj);
            Intrinsics.m1826i();
            throw null;
        } else if (i == 1) {
            FlowCollector flowCollector = (FlowCollector) this.f23608h;
            ResultKt.m2472b(obj);
            return Unit.f20447a;
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: o */
    public final Object mo422o(Object obj, Continuation<? super Unit> continuation) {
        return ((FlowKt__ZipKt$combineTransform$6) create(obj, continuation)).invokeSuspend(Unit.f20447a);
    }
}
