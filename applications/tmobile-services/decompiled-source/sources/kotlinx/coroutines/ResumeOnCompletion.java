package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018��2\u00020\u0001B\u001d\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00040\n¢\u0006\u0004\b\u000f\u0010\u0010J\u001a\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0096\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tR\u001c\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00040\n8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0011"}, d2 = {"Lkotlinx/coroutines/ResumeOnCompletion;", "Lkotlinx/coroutines/JobNode;", "", "cause", "", "invoke", "(Ljava/lang/Throwable;)V", "", "toString", "()Ljava/lang/String;", "Lkotlin/coroutines/Continuation;", "continuation", "Lkotlin/coroutines/Continuation;", "Lkotlinx/coroutines/Job;", "job", "<init>", "(Lkotlinx/coroutines/Job;Lkotlin/coroutines/Continuation;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/ResumeOnCompletion.class */
public final class ResumeOnCompletion extends JobNode<Job> {

    /* renamed from: j */
    private final Continuation<Unit> f21235j;

    /* JADX WARN: Multi-variable type inference failed */
    public ResumeOnCompletion(@NotNull Job job, @NotNull Continuation<? super Unit> continuation) {
        super(job);
        this.f21235j = continuation;
    }

    @Override // kotlinx.coroutines.CompletionHandlerBase
    /* renamed from: X */
    public void mo319X(@Nullable Throwable th) {
        Continuation<Unit> continuation = this.f21235j;
        Unit unit = Unit.f20447a;
        Result.Companion companion = Result.f20418g;
        Result.m2481b(unit);
        continuation.resumeWith(unit);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
        mo319X(th);
        return Unit.f20447a;
    }

    @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
    @NotNull
    public String toString() {
        return "ResumeOnCompletion[" + this.f21235j + ']';
    }
}
