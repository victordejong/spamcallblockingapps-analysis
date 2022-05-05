package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import okhttp3.internal.http.StatusLine;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0003\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u008a@¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"<anonymous>", "", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "e", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.flow.FlowKt__MigrationKt$onErrorReturn$2", m1914f = "Migration.kt", m1913l = {StatusLine.HTTP_PERM_REDIRECT}, m1912m = "invokeSuspend")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__MigrationKt$onErrorReturn$2.class */
final class FlowKt__MigrationKt$onErrorReturn$2 extends SuspendLambda implements Function3<FlowCollector<? super T>, Throwable, Continuation<? super Unit>, Object> {

    /* renamed from: g */
    private FlowCollector f23088g;

    /* renamed from: h */
    private Throwable f23089h;

    /* renamed from: i */
    Object f23090i;

    /* renamed from: j */
    Object f23091j;

    /* renamed from: k */
    int f23092k;

    /* renamed from: l */
    final /* synthetic */ Function1 f23093l;

    /* renamed from: m */
    final /* synthetic */ Object f23094m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FlowKt__MigrationKt$onErrorReturn$2(Function1 function1, Object obj, Continuation continuation) {
        super(3, continuation);
        this.f23093l = function1;
        this.f23094m = obj;
    }

    @Override // kotlin.jvm.functions.Function3
    /* renamed from: a */
    public final Object mo594a(Object obj, Throwable th, Continuation<? super Unit> continuation) {
        return ((FlowKt__MigrationKt$onErrorReturn$2) m679d((FlowCollector) obj, th, continuation)).invokeSuspend(Unit.f20447a);
    }

    @NotNull
    /* renamed from: d */
    public final Continuation<Unit> m679d(@NotNull FlowCollector<? super T> flowCollector, @NotNull Throwable th, @NotNull Continuation<? super Unit> continuation) {
        FlowKt__MigrationKt$onErrorReturn$2 flowKt__MigrationKt$onErrorReturn$2 = new FlowKt__MigrationKt$onErrorReturn$2(this.f23093l, this.f23094m, continuation);
        flowKt__MigrationKt$onErrorReturn$2.f23088g = flowCollector;
        flowKt__MigrationKt$onErrorReturn$2.f23089h = th;
        return flowKt__MigrationKt$onErrorReturn$2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object d;
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        int i = this.f23092k;
        if (i == 0) {
            ResultKt.m2472b(obj);
            FlowCollector flowCollector = this.f23088g;
            Throwable th = this.f23089h;
            if (((Boolean) this.f23093l.invoke(th)).booleanValue()) {
                Object obj2 = this.f23094m;
                this.f23090i = flowCollector;
                this.f23091j = th;
                this.f23092k = 1;
                if (flowCollector.mo588b(obj2, this) == d) {
                    return d;
                }
            } else {
                throw th;
            }
        } else if (i == 1) {
            Throwable th2 = (Throwable) this.f23091j;
            FlowCollector flowCollector2 = (FlowCollector) this.f23090i;
            ResultKt.m2472b(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return Unit.f20447a;
    }
}
