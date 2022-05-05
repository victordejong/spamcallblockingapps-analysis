package kotlinx.coroutines.flow;

import com.facebook.stetho.server.http.HttpStatus;
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
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0003\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u008a@¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"<anonymous>", "", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "it", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$2", m1914f = "Emitters.kt", m1913l = {HttpStatus.HTTP_OK}, m1912m = "invokeSuspend")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$2.class */
final class FlowKt__EmittersKt$onCompletion$2 extends SuspendLambda implements Function3<FlowCollector<? super T>, Throwable, Continuation<? super Unit>, Object> {

    /* renamed from: g */
    private FlowCollector f22683g;

    /* renamed from: h */
    private Throwable f22684h;

    /* renamed from: i */
    Object f22685i;

    /* renamed from: j */
    Object f22686j;

    /* renamed from: k */
    int f22687k;

    /* renamed from: l */
    final /* synthetic */ Function2 f22688l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FlowKt__EmittersKt$onCompletion$2(Function2 function2, Continuation continuation) {
        super(3, continuation);
        this.f22688l = function2;
    }

    @Override // kotlin.jvm.functions.Function3
    /* renamed from: a */
    public final Object mo594a(Object obj, Throwable th, Continuation<? super Unit> continuation) {
        return ((FlowKt__EmittersKt$onCompletion$2) m711d((FlowCollector) obj, th, continuation)).invokeSuspend(Unit.f20447a);
    }

    @NotNull
    /* renamed from: d */
    public final Continuation<Unit> m711d(@NotNull FlowCollector<? super T> flowCollector, @Nullable Throwable th, @NotNull Continuation<? super Unit> continuation) {
        FlowKt__EmittersKt$onCompletion$2 flowKt__EmittersKt$onCompletion$2 = new FlowKt__EmittersKt$onCompletion$2(this.f22688l, continuation);
        flowKt__EmittersKt$onCompletion$2.f22683g = flowCollector;
        flowKt__EmittersKt$onCompletion$2.f22684h = th;
        return flowKt__EmittersKt$onCompletion$2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object d;
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        int i = this.f22687k;
        if (i == 0) {
            ResultKt.m2472b(obj);
            FlowCollector flowCollector = this.f22683g;
            Throwable th = this.f22684h;
            Function2 function2 = this.f22688l;
            this.f22685i = flowCollector;
            this.f22686j = th;
            this.f22687k = 1;
            if (function2.mo422o(th, this) == d) {
                return d;
            }
        } else if (i == 1) {
            Throwable th2 = (Throwable) this.f22686j;
            FlowCollector flowCollector2 = (FlowCollector) this.f22685i;
            ResultKt.m2472b(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return Unit.f20447a;
    }
}
