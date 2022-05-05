package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0003\n��\n\u0002\u0010\t\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u008a@¢\u0006\u0004\b\b\u0010\t"}, d2 = {"<anonymous>", "", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "cause", "", "attempt", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt$retry$6", m1914f = "Errors.kt", m1913l = {}, m1912m = "invokeSuspend")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__ErrorsKt$retry$6.class */
final class FlowKt__ErrorsKt$retry$6 extends SuspendLambda implements Function4<FlowCollector<? super T>, Throwable, Long, Continuation<? super Boolean>, Object> {

    /* renamed from: g */
    private FlowCollector f22752g;

    /* renamed from: h */
    private Throwable f22753h;

    /* renamed from: i */
    private long f22754i;

    /* renamed from: j */
    int f22755j;

    /* renamed from: k */
    final /* synthetic */ int f22756k;

    /* renamed from: l */
    final /* synthetic */ Function1 f22757l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FlowKt__ErrorsKt$retry$6(int i, Function1 function1, Continuation continuation) {
        super(4, continuation);
        this.f22756k = i;
        this.f22757l = function1;
    }

    @NotNull
    /* renamed from: d */
    public final Continuation<Unit> m703d(@NotNull FlowCollector<? super T> flowCollector, @NotNull Throwable th, long j, @NotNull Continuation<? super Boolean> continuation) {
        FlowKt__ErrorsKt$retry$6 flowKt__ErrorsKt$retry$6 = new FlowKt__ErrorsKt$retry$6(this.f22756k, this.f22757l, continuation);
        flowKt__ErrorsKt$retry$6.f22752g = flowCollector;
        flowKt__ErrorsKt$retry$6.f22753h = th;
        flowKt__ErrorsKt$retry$6.f22754i = j;
        return flowKt__ErrorsKt$retry$6;
    }

    @Override // kotlin.jvm.functions.Function4
    /* renamed from: h */
    public final Object mo643h(Object obj, Throwable th, Long l, Continuation<? super Boolean> continuation) {
        return ((FlowKt__ErrorsKt$retry$6) m703d((FlowCollector) obj, th, l.longValue(), continuation)).invokeSuspend(Unit.f20447a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        IntrinsicsKt__IntrinsicsKt.m1920d();
        if (this.f22755j == 0) {
            ResultKt.m2472b(obj);
            return Boxing.m1919a(((Boolean) this.f22757l.invoke(this.f22753h)).booleanValue() && this.f22754i < ((long) this.f22756k));
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
