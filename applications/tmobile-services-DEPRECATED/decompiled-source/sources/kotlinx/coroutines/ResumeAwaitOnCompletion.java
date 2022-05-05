package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018��*\u0004\b��\u0010\u00012\u00020\u0002B\u001d\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028��0\u000b¢\u0006\u0004\b\u0010\u0010\u0011J\u001a\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0096\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nR\u001c\u0010\f\u001a\b\u0012\u0004\u0012\u00028��0\u000b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0012"}, d2 = {"Lkotlinx/coroutines/ResumeAwaitOnCompletion;", "T", "Lkotlinx/coroutines/JobNode;", "", "cause", "", "invoke", "(Ljava/lang/Throwable;)V", "", "toString", "()Ljava/lang/String;", "Lkotlinx/coroutines/CancellableContinuationImpl;", "continuation", "Lkotlinx/coroutines/CancellableContinuationImpl;", "Lkotlinx/coroutines/JobSupport;", "job", "<init>", "(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/CancellableContinuationImpl;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/ResumeAwaitOnCompletion.class */
public final class ResumeAwaitOnCompletion<T> extends JobNode<JobSupport> {

    /* renamed from: j */
    private final CancellableContinuationImpl<T> f21234j;

    /* JADX WARN: Multi-variable type inference failed */
    public ResumeAwaitOnCompletion(@NotNull JobSupport jobSupport, @NotNull CancellableContinuationImpl<? super T> cancellableContinuationImpl) {
        super(jobSupport);
        this.f21234j = cancellableContinuationImpl;
    }

    @Override // kotlinx.coroutines.CompletionHandlerBase
    /* renamed from: X */
    public void mo319X(@Nullable Throwable th) {
        Object i0 = ((JobSupport) this.f21203i).m1164i0();
        if (DebugKt.m1308a() && !(!(i0 instanceof Incomplete))) {
            throw new AssertionError();
        } else if (i0 instanceof CompletedExceptionally) {
            CancellableContinuationImpl<T> cancellableContinuationImpl = this.f21234j;
            Throwable th2 = ((CompletedExceptionally) i0).f21127a;
            Result.Companion companion = Result.f20418g;
            Object a = ResultKt.m2473a(th2);
            Result.m2481b(a);
            cancellableContinuationImpl.resumeWith(a);
        } else {
            CancellableContinuationImpl<T> cancellableContinuationImpl2 = this.f21234j;
            Object h = JobSupportKt.m1127h(i0);
            Result.Companion companion2 = Result.f20418g;
            Result.m2481b(h);
            cancellableContinuationImpl2.resumeWith(h);
        }
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
        mo319X(th);
        return Unit.f20447a;
    }

    @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
    @NotNull
    public String toString() {
        return "ResumeAwaitOnCompletion[" + this.f21234j + ']';
    }
}
