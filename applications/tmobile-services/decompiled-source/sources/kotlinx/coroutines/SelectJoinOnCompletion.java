package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.intrinsics.CancellableKt;
import kotlinx.coroutines.selects.SelectInstance;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��@\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018��*\u0004\b��\u0010\u00012\u00020\u0002B>\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028��0\u0010\u0012\u001c\u0010\u000e\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\f\u0012\u0006\u0012\u0004\u0018\u00010\r0\u000bø\u0001��¢\u0006\u0004\b\u0015\u0010\u0016J\u001a\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0096\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nR/\u0010\u000e\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\f\u0012\u0006\u0012\u0004\u0018\u00010\r0\u000b8\u0002@\u0002X\u0082\u0004ø\u0001��¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028��0\u00108\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0017"}, d2 = {"Lkotlinx/coroutines/SelectJoinOnCompletion;", "R", "Lkotlinx/coroutines/JobNode;", "", "cause", "", "invoke", "(Ljava/lang/Throwable;)V", "", "toString", "()Ljava/lang/String;", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "", "block", "Lkotlin/jvm/functions/Function1;", "Lkotlinx/coroutines/selects/SelectInstance;", "select", "Lkotlinx/coroutines/selects/SelectInstance;", "Lkotlinx/coroutines/JobSupport;", "job", "<init>", "(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function1;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/SelectJoinOnCompletion.class */
final class SelectJoinOnCompletion<R> extends JobNode<JobSupport> {

    /* renamed from: j */
    private final SelectInstance<R> f21241j;

    /* renamed from: k */
    private final Function1<Continuation<? super R>, Object> f21242k;

    /* JADX WARN: Multi-variable type inference failed */
    public SelectJoinOnCompletion(@NotNull JobSupport jobSupport, @NotNull SelectInstance<? super R> selectInstance, @NotNull Function1<? super Continuation<? super R>, ? extends Object> function1) {
        super(jobSupport);
        this.f21241j = selectInstance;
        this.f21242k = function1;
    }

    @Override // kotlinx.coroutines.CompletionHandlerBase
    /* renamed from: X */
    public void mo319X(@Nullable Throwable th) {
        if (this.f21241j.mo314e()) {
            CancellableKt.m400b(this.f21242k, this.f21241j.mo312k());
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
        return "SelectJoinOnCompletion[" + this.f21241j + ']';
    }
}
