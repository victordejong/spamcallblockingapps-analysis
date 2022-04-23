package androidx.lifecycle;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001*\u00020\u0002H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "androidx.lifecycle.LifecycleCoroutineScope$launchWhenStarted$1", m1914f = "Lifecycle.kt", m1913l = {87}, m1912m = "invokeSuspend")
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/LifecycleCoroutineScope$launchWhenStarted$1.class */
final class LifecycleCoroutineScope$launchWhenStarted$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* renamed from: g */
    private CoroutineScope f4005g;

    /* renamed from: h */
    Object f4006h;

    /* renamed from: i */
    int f4007i;

    /* renamed from: j */
    final /* synthetic */ LifecycleCoroutineScope f4008j;

    /* renamed from: k */
    final /* synthetic */ Function2 f4009k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LifecycleCoroutineScope$launchWhenStarted$1(LifecycleCoroutineScope lifecycleCoroutineScope, Function2 function2, Continuation continuation) {
        super(2, continuation);
        this.f4008j = lifecycleCoroutineScope;
        this.f4009k = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> completion) {
        Intrinsics.m1829f(completion, "completion");
        LifecycleCoroutineScope$launchWhenStarted$1 lifecycleCoroutineScope$launchWhenStarted$1 = new LifecycleCoroutineScope$launchWhenStarted$1(this.f4008j, this.f4009k, completion);
        lifecycleCoroutineScope$launchWhenStarted$1.f4005g = (CoroutineScope) obj;
        return lifecycleCoroutineScope$launchWhenStarted$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object d;
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        int i = this.f4007i;
        if (i == 0) {
            ResultKt.m2472b(obj);
            CoroutineScope coroutineScope = this.f4005g;
            Lifecycle h = this.f4008j.mo18236h();
            Function2 function2 = this.f4009k;
            this.f4006h = coroutineScope;
            this.f4007i = 1;
            if (PausingDispatcherKt.m18185c(h, function2, this) == d) {
                return d;
            }
        } else if (i == 1) {
            CoroutineScope coroutineScope2 = (CoroutineScope) this.f4006h;
            ResultKt.m2472b(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return Unit.f20447a;
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: o */
    public final Object mo422o(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((LifecycleCoroutineScope$launchWhenStarted$1) create(coroutineScope, continuation)).invokeSuspend(Unit.f20447a);
    }
}
