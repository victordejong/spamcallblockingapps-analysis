package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u0002H\u0001\"\u0004\b��\u0010\u0001*\u00020\u0002H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"<anonymous>", "T", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "androidx.lifecycle.PausingDispatcherKt$whenStateAtLeast$2", m1914f = "PausingDispatcher.kt", m1913l = {163}, m1912m = "invokeSuspend")
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/PausingDispatcherKt$whenStateAtLeast$2.class */
final class PausingDispatcherKt$whenStateAtLeast$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super T>, Object> {

    /* renamed from: g */
    private CoroutineScope f4053g;

    /* renamed from: h */
    Object f4054h;

    /* renamed from: i */
    Object f4055i;

    /* renamed from: j */
    Object f4056j;

    /* renamed from: k */
    Object f4057k;

    /* renamed from: l */
    int f4058l;

    /* renamed from: m */
    final /* synthetic */ Lifecycle f4059m;

    /* renamed from: n */
    final /* synthetic */ Lifecycle.State f4060n;

    /* renamed from: o */
    final /* synthetic */ Function2 f4061o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PausingDispatcherKt$whenStateAtLeast$2(Lifecycle lifecycle, Lifecycle.State state, Function2 function2, Continuation continuation) {
        super(2, continuation);
        this.f4059m = lifecycle;
        this.f4060n = state;
        this.f4061o = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> completion) {
        Intrinsics.m1829f(completion, "completion");
        PausingDispatcherKt$whenStateAtLeast$2 pausingDispatcherKt$whenStateAtLeast$2 = new PausingDispatcherKt$whenStateAtLeast$2(this.f4059m, this.f4060n, this.f4061o, completion);
        pausingDispatcherKt$whenStateAtLeast$2.f4053g = (CoroutineScope) obj;
        return pausingDispatcherKt$whenStateAtLeast$2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object d;
        LifecycleController lifecycleController;
        Throwable th;
        Object obj2;
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        int i = this.f4058l;
        if (i == 0) {
            ResultKt.m2472b(obj);
            CoroutineScope coroutineScope = this.f4053g;
            Job job = (Job) coroutineScope.mo567u().get(Job.f21198d);
            if (job != null) {
                PausingDispatcher pausingDispatcher = new PausingDispatcher();
                LifecycleController lifecycleController2 = new LifecycleController(this.f4059m, this.f4060n, pausingDispatcher.f4052g, job);
                try {
                    Function2 function2 = this.f4061o;
                    this.f4054h = coroutineScope;
                    this.f4055i = job;
                    this.f4056j = pausingDispatcher;
                    this.f4057k = lifecycleController2;
                    this.f4058l = 1;
                    obj2 = BuildersKt.m1372c(pausingDispatcher, function2, this);
                    if (obj2 == d) {
                        return d;
                    }
                    lifecycleController = lifecycleController2;
                } catch (Throwable th2) {
                    th = th2;
                    lifecycleController = lifecycleController2;
                    lifecycleController.m18237c();
                    throw th;
                }
            } else {
                throw new IllegalStateException("when[State] methods should have a parent job".toString());
            }
        } else if (i == 1) {
            lifecycleController = (LifecycleController) this.f4057k;
            PausingDispatcher pausingDispatcher2 = (PausingDispatcher) this.f4056j;
            Job job2 = (Job) this.f4055i;
            CoroutineScope coroutineScope2 = (CoroutineScope) this.f4054h;
            try {
                ResultKt.m2472b(obj);
                obj2 = obj;
            } catch (Throwable th3) {
                th = th3;
                lifecycleController.m18237c();
                throw th;
            }
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        lifecycleController.m18237c();
        return obj2;
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: o */
    public final Object mo422o(CoroutineScope coroutineScope, Object obj) {
        return ((PausingDispatcherKt$whenStateAtLeast$2) create(coroutineScope, (Continuation) obj)).invokeSuspend(Unit.f20447a);
    }
}
