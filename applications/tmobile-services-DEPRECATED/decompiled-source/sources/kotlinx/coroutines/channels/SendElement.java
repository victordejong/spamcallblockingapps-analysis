package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.JvmField;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImplKt;
import kotlinx.coroutines.DebugKt;
import kotlinx.coroutines.DebugStringsKt;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;
import kotlinx.coroutines.internal.Symbol;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0007\b��\u0018��2\u00020\u0001B\u001f\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014\u0012\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00020\u0011¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u001b\u0010\u0007\u001a\u00020\u00022\n\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u0005H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u001b\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00020\u00118\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u001e\u0010\u0015\u001a\u0004\u0018\u00010\u00148\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u001b"}, d2 = {"Lkotlinx/coroutines/channels/SendElement;", "Lkotlinx/coroutines/channels/Send;", "", "completeResumeSend", "()V", "Lkotlinx/coroutines/channels/Closed;", "closed", "resumeSendClosed", "(Lkotlinx/coroutines/channels/Closed;)V", "", "toString", "()Ljava/lang/String;", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;", "otherOp", "Lkotlinx/coroutines/internal/Symbol;", "tryResumeSend", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)Lkotlinx/coroutines/internal/Symbol;", "Lkotlinx/coroutines/CancellableContinuation;", "cont", "Lkotlinx/coroutines/CancellableContinuation;", "", "pollResult", "Ljava/lang/Object;", "getPollResult", "()Ljava/lang/Object;", "<init>", "(Ljava/lang/Object;Lkotlinx/coroutines/CancellableContinuation;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/SendElement.class */
public final class SendElement extends Send {
    @Nullable

    /* renamed from: i */
    private final Object f22210i;
    @JvmField
    @NotNull

    /* renamed from: j */
    public final CancellableContinuation<Unit> f22211j;

    /* JADX WARN: Multi-variable type inference failed */
    public SendElement(@Nullable Object obj, @NotNull CancellableContinuation<? super Unit> cancellableContinuation) {
        this.f22210i = obj;
        this.f22211j = cancellableContinuation;
    }

    @Override // kotlinx.coroutines.channels.Send
    /* renamed from: X */
    public void mo799X() {
        this.f22211j.mo1365D(CancellableContinuationImplKt.f21113a);
    }

    @Override // kotlinx.coroutines.channels.Send
    @Nullable
    /* renamed from: Y */
    public Object mo798Y() {
        return this.f22210i;
    }

    @Override // kotlinx.coroutines.channels.Send
    /* renamed from: Z */
    public void mo797Z(@NotNull Closed<?> closed) {
        CancellableContinuation<Unit> cancellableContinuation = this.f22211j;
        Throwable e0 = closed.m850e0();
        Result.Companion companion = Result.f20418g;
        Object a = ResultKt.m2473a(e0);
        Result.m2481b(a);
        cancellableContinuation.resumeWith(a);
    }

    @Override // kotlinx.coroutines.channels.Send
    @Nullable
    /* renamed from: a0 */
    public Symbol mo796a0(@Nullable LockFreeLinkedListNode.PrepareOp prepareOp) {
        Object c = this.f22211j.mo1359c(Unit.f20447a, prepareOp != null ? prepareOp.f23922c : null);
        if (c == null) {
            return null;
        }
        if (DebugKt.m1308a()) {
            if (!(c == CancellableContinuationImplKt.f21113a)) {
                throw new AssertionError();
            }
        }
        if (prepareOp != null) {
            prepareOp.m513d();
        }
        return CancellableContinuationImplKt.f21113a;
    }

    @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
    @NotNull
    public String toString() {
        return "SendElement@" + DebugStringsKt.m1303b(this) + '(' + mo798Y() + ')';
    }
}
