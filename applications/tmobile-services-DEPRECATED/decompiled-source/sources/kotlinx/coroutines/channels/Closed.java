package kotlinx.coroutines.channels;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlinx.coroutines.CancellableContinuationImplKt;
import kotlinx.coroutines.DebugKt;
import kotlinx.coroutines.DebugStringsKt;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;
import kotlinx.coroutines.internal.Symbol;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0003\n\u0002\b\u000f\b��\u0018��*\u0006\b��\u0010\u0001 ��2\u00020\u00022\u00020\u0003B\u0011\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017¢\u0006\u0004\b$\u0010%J\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00028��H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\b\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\b\u0010\tJ\u001b\u0010\u000b\u001a\u00020\u00052\n\u0010\n\u001a\u0006\u0012\u0002\b\u00030��H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ#\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0004\u001a\u00028��2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u001b\u0010\u0015\u001a\u0004\u0018\u00010\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016¢\u0006\u0004\b\u0015\u0010\u0016R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00178\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u001c\u0010\u001c\u001a\b\u0012\u0004\u0012\u00028��0��8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001bR\u001c\u0010\u001e\u001a\b\u0012\u0004\u0012\u00028��0��8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001bR\u0013\u0010!\u001a\u00020\u00178F@\u0006¢\u0006\u0006\u001a\u0004\b\u001f\u0010 R\u0013\u0010#\u001a\u00020\u00178F@\u0006¢\u0006\u0006\u001a\u0004\b\"\u0010 ¨\u0006&"}, d2 = {"Lkotlinx/coroutines/channels/Closed;", "E", "Lkotlinx/coroutines/channels/ReceiveOrClosed;", "Lkotlinx/coroutines/channels/Send;", FirebaseAnalytics.Param.VALUE, "", "completeResumeReceive", "(Ljava/lang/Object;)V", "completeResumeSend", "()V", "closed", "resumeSendClosed", "(Lkotlinx/coroutines/channels/Closed;)V", "", "toString", "()Ljava/lang/String;", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;", "otherOp", "Lkotlinx/coroutines/internal/Symbol;", "tryResumeReceive", "(Ljava/lang/Object;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)Lkotlinx/coroutines/internal/Symbol;", "tryResumeSend", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)Lkotlinx/coroutines/internal/Symbol;", "", "closeCause", "Ljava/lang/Throwable;", "getOfferResult", "()Lkotlinx/coroutines/channels/Closed;", "offerResult", "getPollResult", "pollResult", "getReceiveException", "()Ljava/lang/Throwable;", "receiveException", "getSendException", "sendException", "<init>", "(Ljava/lang/Throwable;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/Closed.class */
public final class Closed<E> extends Send implements ReceiveOrClosed<E> {
    @JvmField
    @Nullable

    /* renamed from: i */
    public final Throwable f22187i;

    public Closed(@Nullable Throwable th) {
        this.f22187i = th;
    }

    @Override // kotlinx.coroutines.channels.Send
    /* renamed from: X */
    public void mo799X() {
    }

    @Override // kotlinx.coroutines.channels.Send
    /* renamed from: Y */
    public /* bridge */ /* synthetic */ Object mo798Y() {
        m852c0();
        return this;
    }

    @Override // kotlinx.coroutines.channels.Send
    /* renamed from: Z */
    public void mo797Z(@NotNull Closed<?> closed) {
        if (DebugKt.m1308a()) {
            throw new AssertionError();
        }
    }

    @Override // kotlinx.coroutines.channels.Send
    @Nullable
    /* renamed from: a0 */
    public Symbol mo796a0(@Nullable LockFreeLinkedListNode.PrepareOp prepareOp) {
        Symbol symbol = CancellableContinuationImplKt.f21113a;
        if (prepareOp != null) {
            prepareOp.m513d();
        }
        return symbol;
    }

    @NotNull
    /* renamed from: b0 */
    public Closed<E> m853b0() {
        return this;
    }

    @NotNull
    /* renamed from: c0 */
    public Closed<E> m852c0() {
        return this;
    }

    @Override // kotlinx.coroutines.channels.ReceiveOrClosed
    /* renamed from: d */
    public /* bridge */ /* synthetic */ Object mo812d() {
        m853b0();
        return this;
    }

    @NotNull
    /* renamed from: d0 */
    public final Throwable m851d0() {
        Throwable th = this.f22187i;
        if (th == null) {
            th = new ClosedReceiveChannelException("Channel was closed");
        }
        return th;
    }

    @NotNull
    /* renamed from: e0 */
    public final Throwable m850e0() {
        Throwable th = this.f22187i;
        if (th == null) {
            th = new ClosedSendChannelException("Channel was closed");
        }
        return th;
    }

    @Override // kotlinx.coroutines.channels.ReceiveOrClosed
    /* renamed from: n */
    public void mo811n(E e) {
    }

    @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
    @NotNull
    public String toString() {
        return "Closed@" + DebugStringsKt.m1303b(this) + '[' + this.f22187i + ']';
    }

    @Override // kotlinx.coroutines.channels.ReceiveOrClosed
    @Nullable
    /* renamed from: z */
    public Symbol mo810z(E e, @Nullable LockFreeLinkedListNode.PrepareOp prepareOp) {
        Symbol symbol = CancellableContinuationImplKt.f21113a;
        if (prepareOp != null) {
            prepareOp.m513d();
        }
        return symbol;
    }
}
