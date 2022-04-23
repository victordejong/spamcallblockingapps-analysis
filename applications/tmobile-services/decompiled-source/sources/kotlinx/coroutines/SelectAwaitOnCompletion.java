package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.selects.SelectInstance;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��B\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018��*\u0004\b��\u0010\u0001*\u0004\b\u0001\u0010\u00022\u00020\u0003BD\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00010\u0011\u0012\"\u0010\u000f\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028��\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\r\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\fø\u0001��¢\u0006\u0004\b\u0016\u0010\u0017J\u001a\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0096\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bR5\u0010\u000f\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028��\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\r\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\f8\u0002@\u0002X\u0082\u0004ø\u0001��¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00010\u00118\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0018"}, d2 = {"Lkotlinx/coroutines/SelectAwaitOnCompletion;", "T", "R", "Lkotlinx/coroutines/JobNode;", "", "cause", "", "invoke", "(Ljava/lang/Throwable;)V", "", "toString", "()Ljava/lang/String;", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "block", "Lkotlin/jvm/functions/Function2;", "Lkotlinx/coroutines/selects/SelectInstance;", "select", "Lkotlinx/coroutines/selects/SelectInstance;", "Lkotlinx/coroutines/JobSupport;", "job", "<init>", "(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/SelectAwaitOnCompletion.class */
public final class SelectAwaitOnCompletion<T, R> extends JobNode<JobSupport> {

    /* renamed from: j */
    private final SelectInstance<R> f21239j;

    /* renamed from: k */
    private final Function2<T, Continuation<? super R>, Object> f21240k;

    /* JADX WARN: Multi-variable type inference failed */
    public SelectAwaitOnCompletion(@NotNull JobSupport jobSupport, @NotNull SelectInstance<? super R> selectInstance, @NotNull Function2<? super T, ? super Continuation<? super R>, ? extends Object> function2) {
        super(jobSupport);
        this.f21239j = selectInstance;
        this.f21240k = function2;
    }

    @Override // kotlinx.coroutines.CompletionHandlerBase
    /* renamed from: X */
    public void mo319X(@Nullable Throwable th) {
        if (this.f21239j.mo314e()) {
            ((JobSupport) this.f21203i).m1199D0(this.f21239j, this.f21240k);
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
        return "SelectAwaitOnCompletion[" + this.f21239j + ']';
    }
}
