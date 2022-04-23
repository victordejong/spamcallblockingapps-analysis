package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmField;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b��\u0018��2\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\t\u001a\u00020\b2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0096\u0002¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rR\u0016\u0010\u000f\u001a\u00020\u000e8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0015"}, d2 = {"Lkotlinx/coroutines/ChildHandleNode;", "Lkotlinx/coroutines/ChildHandle;", "Lkotlinx/coroutines/JobCancellingNode;", "", "cause", "", "childCancelled", "(Ljava/lang/Throwable;)Z", "", "invoke", "(Ljava/lang/Throwable;)V", "", "toString", "()Ljava/lang/String;", "Lkotlinx/coroutines/ChildJob;", "childJob", "Lkotlinx/coroutines/ChildJob;", "Lkotlinx/coroutines/JobSupport;", "parent", "<init>", "(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/ChildJob;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/ChildHandleNode.class */
public final class ChildHandleNode extends JobCancellingNode<JobSupport> implements ChildHandle {
    @JvmField
    @NotNull

    /* renamed from: j */
    public final ChildJob f21116j;

    public ChildHandleNode(@NotNull JobSupport jobSupport, @NotNull ChildJob childJob) {
        super(jobSupport);
        this.f21116j = childJob;
    }

    @Override // kotlinx.coroutines.CompletionHandlerBase
    /* renamed from: X */
    public void mo319X(@Nullable Throwable th) {
        this.f21116j.mo1160o((ParentJob) this.f21203i);
    }

    @Override // kotlinx.coroutines.ChildHandle
    /* renamed from: g */
    public boolean mo1118g(@NotNull Throwable th) {
        return ((JobSupport) this.f21203i).mo602V(th);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
        mo319X(th);
        return Unit.f20447a;
    }

    @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
    @NotNull
    public String toString() {
        return "ChildHandle[" + this.f21116j + ']';
    }
}
