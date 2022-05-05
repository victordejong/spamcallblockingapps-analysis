package kotlinx.coroutines.channels;

import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.CancellableContinuationImplKt;
import kotlinx.coroutines.DebugKt;
import kotlinx.coroutines.DebugStringsKt;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.YieldKt;
import kotlinx.coroutines.internal.AtomicKt;
import kotlinx.coroutines.internal.InlineList;
import kotlinx.coroutines.internal.LockFreeLinkedListHead;
import kotlinx.coroutines.internal.LockFreeLinkedListKt;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;
import kotlinx.coroutines.internal.LockFreeLinkedList_commonKt;
import kotlinx.coroutines.internal.StackTraceRecoveryKt;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.intrinsics.UndispatchedKt;
import kotlinx.coroutines.selects.SelectClause2;
import kotlinx.coroutines.selects.SelectInstance;
import kotlinx.coroutines.selects.SelectKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0098\u0001\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\b \u0018��*\u0004\b��\u0010\u00012\u00020\u0002:\u0004abcdB\u0007¢\u0006\u0004\b_\u0010`J\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\t\u0010\nJ#\u0010\u000e\u001a\u000e\u0012\u0002\b\u00030\fj\u0006\u0012\u0002\b\u0003`\r2\u0006\u0010\u000b\u001a\u00028��H\u0004¢\u0006\u0004\b\u000e\u0010\u000fJ\u001d\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028��0\u00102\u0006\u0010\u000b\u001a\u00028��H\u0004¢\u0006\u0004\b\u0011\u0010\u0012J\u0019\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0014\u001a\u00020\u0013H\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\u001b\u0010\u001b\u001a\u00020\u001a2\n\u0010\u0019\u001a\u0006\u0012\u0002\b\u00030\u0018H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u001b\u0010\u001d\u001a\u00020\u00032\n\u0010\u0019\u001a\u0006\u0012\u0002\b\u00030\u0018H\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ)\u0010\"\u001a\u00020\u001a2\u0018\u0010!\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0012\u0004\u0012\u00020\u001a0\u001fj\u0002` H\u0016¢\u0006\u0004\b\"\u0010#J\u0019\u0010$\u001a\u00020\u001a2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0002¢\u0006\u0004\b$\u0010%J\u0015\u0010&\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00028��¢\u0006\u0004\b&\u0010'J\u0017\u0010(\u001a\u00020\u00152\u0006\u0010\u000b\u001a\u00028��H\u0014¢\u0006\u0004\b(\u0010)J#\u0010,\u001a\u00020\u00152\u0006\u0010\u000b\u001a\u00028��2\n\u0010+\u001a\u0006\u0012\u0002\b\u00030*H\u0014¢\u0006\u0004\b,\u0010-J\u0017\u0010/\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00020.H\u0014¢\u0006\u0004\b/\u00100JX\u00105\u001a\u00020\u001a\"\u0004\b\u0001\u001012\f\u0010+\u001a\b\u0012\u0004\u0012\u00028\u00010*2\u0006\u0010\u000b\u001a\u00028��2(\u00104\u001a$\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u000103\u0012\u0006\u0012\u0004\u0018\u00010\u001502H\u0002ø\u0001��¢\u0006\u0004\b5\u00106J\u001b\u0010\u0014\u001a\u00020\u001a2\u0006\u0010\u000b\u001a\u00028��H\u0086@ø\u0001��¢\u0006\u0004\b\u0014\u00107J\u001d\u00109\u001a\b\u0012\u0002\b\u0003\u0018\u0001082\u0006\u0010\u000b\u001a\u00028��H\u0004¢\u0006\u0004\b9\u0010:J\u001b\u0010<\u001a\u00020\u001a2\u0006\u0010\u000b\u001a\u00028��H\u0080@ø\u0001��¢\u0006\u0004\b;\u00107J\u001b\u0010=\u001a\u00020\u001a2\u0006\u0010\u000b\u001a\u00028��H\u0082@ø\u0001��¢\u0006\u0004\b=\u00107J\u0017\u0010>\u001a\n\u0012\u0004\u0012\u00028��\u0018\u000108H\u0014¢\u0006\u0004\b>\u0010?J\u0011\u0010@\u001a\u0004\u0018\u00010\u0013H\u0004¢\u0006\u0004\b@\u0010AJ\u000f\u0010C\u001a\u00020BH\u0016¢\u0006\u0004\bC\u0010DJ#\u0010E\u001a\u00020\u001a*\u0006\u0012\u0002\b\u0003032\n\u0010\u0019\u001a\u0006\u0012\u0002\b\u00030\u0018H\u0002¢\u0006\u0004\bE\u0010FR\u0016\u0010H\u001a\u00020B8T@\u0014X\u0094\u0004¢\u0006\u0006\u001a\u0004\bG\u0010DR\u001c\u0010K\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00188D@\u0004X\u0084\u0004¢\u0006\u0006\u001a\u0004\bI\u0010JR\u001c\u0010M\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00188D@\u0004X\u0084\u0004¢\u0006\u0006\u001a\u0004\bL\u0010JR\u0016\u0010N\u001a\u00020\u00058$@$X¤\u0004¢\u0006\u0006\u001a\u0004\bN\u0010OR\u0016\u0010P\u001a\u00020\u00058$@$X¤\u0004¢\u0006\u0006\u001a\u0004\bP\u0010OR\u0013\u0010Q\u001a\u00020\u00058F@\u0006¢\u0006\u0006\u001a\u0004\bQ\u0010OR\u0016\u0010R\u001a\u00020\u00058V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\bR\u0010OR\u0016\u0010S\u001a\u00020\u00058D@\u0004X\u0084\u0004¢\u0006\u0006\u001a\u0004\bS\u0010OR%\u0010W\u001a\u0014\u0012\u0004\u0012\u00028��\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u00020T8F@\u0006¢\u0006\u0006\u001a\u0004\bU\u0010VR\u001c\u0010Y\u001a\u00020X8\u0004@\u0004X\u0084\u0004¢\u0006\f\n\u0004\bY\u0010Z\u001a\u0004\b[\u0010\\R\u0016\u0010^\u001a\u00020B8B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b]\u0010D\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006e"}, d2 = {"Lkotlinx/coroutines/channels/AbstractSendChannel;", "E", "Lkotlinx/coroutines/channels/SendChannel;", "", "cause", "", "close", "(Ljava/lang/Throwable;)Z", "", "countQueueSize", "()I", "element", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AddLastDesc;", "Lkotlinx/coroutines/internal/AddLastDesc;", "describeSendBuffered", "(Ljava/lang/Object;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AddLastDesc;", "Lkotlinx/coroutines/channels/AbstractSendChannel$TryOfferDesc;", "describeTryOffer", "(Ljava/lang/Object;)Lkotlinx/coroutines/channels/AbstractSendChannel$TryOfferDesc;", "Lkotlinx/coroutines/channels/Send;", "send", "", "enqueueSend", "(Lkotlinx/coroutines/channels/Send;)Ljava/lang/Object;", "Lkotlinx/coroutines/channels/Closed;", "closed", "", "helpClose", "(Lkotlinx/coroutines/channels/Closed;)V", "helpCloseAndGetSendException", "(Lkotlinx/coroutines/channels/Closed;)Ljava/lang/Throwable;", "Lkotlin/Function1;", "Lkotlinx/coroutines/channels/Handler;", "handler", "invokeOnClose", "(Lkotlin/jvm/functions/Function1;)V", "invokeOnCloseHandler", "(Ljava/lang/Throwable;)V", "offer", "(Ljava/lang/Object;)Z", "offerInternal", "(Ljava/lang/Object;)Ljava/lang/Object;", "Lkotlinx/coroutines/selects/SelectInstance;", "select", "offerSelectInternal", "(Ljava/lang/Object;Lkotlinx/coroutines/selects/SelectInstance;)Ljava/lang/Object;", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "onClosedIdempotent", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V", "R", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "block", "registerSelectSend", "(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/channels/ReceiveOrClosed;", "sendBuffered", "(Ljava/lang/Object;)Lkotlinx/coroutines/channels/ReceiveOrClosed;", "sendFair$kotlinx_coroutines_core", "sendFair", "sendSuspend", "takeFirstReceiveOrPeekClosed", "()Lkotlinx/coroutines/channels/ReceiveOrClosed;", "takeFirstSendOrPeekClosed", "()Lkotlinx/coroutines/channels/Send;", "", "toString", "()Ljava/lang/String;", "helpCloseAndResumeWithSendException", "(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/channels/Closed;)V", "getBufferDebugString", "bufferDebugString", "getClosedForReceive", "()Lkotlinx/coroutines/channels/Closed;", "closedForReceive", "getClosedForSend", "closedForSend", "isBufferAlwaysFull", "()Z", "isBufferFull", "isClosedForSend", "isFull", "isFullImpl", "Lkotlinx/coroutines/selects/SelectClause2;", "getOnSend", "()Lkotlinx/coroutines/selects/SelectClause2;", "onSend", "Lkotlinx/coroutines/internal/LockFreeLinkedListHead;", "queue", "Lkotlinx/coroutines/internal/LockFreeLinkedListHead;", "getQueue", "()Lkotlinx/coroutines/internal/LockFreeLinkedListHead;", "getQueueDebugStateString", "queueDebugStateString", "<init>", "()V", "SendBuffered", "SendBufferedDesc", "SendSelect", "TryOfferDesc", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/AbstractSendChannel.class */
public abstract class AbstractSendChannel<E> implements SendChannel<E> {

    /* renamed from: g */
    private static final AtomicReferenceFieldUpdater f21303g = AtomicReferenceFieldUpdater.newUpdater(AbstractSendChannel.class, Object.class, "onCloseHandler");
    @NotNull

    /* renamed from: f */
    private final LockFreeLinkedListHead f21304f = new LockFreeLinkedListHead();
    private volatile Object onCloseHandler = null;

    @Metadata(bv = {1, 0, 3}, d1 = {"��8\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010��\n\u0002\b\u0006\b��\u0018��*\u0006\b\u0001\u0010\u0001 \u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0012\u001a\u00028\u0001¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0004\u0010\u0005J\u001b\u0010\b\u001a\u00020\u00032\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u0006H\u0016¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u001b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0012\u001a\u00028\u00018\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00148V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u001a"}, d2 = {"Lkotlinx/coroutines/channels/AbstractSendChannel$SendBuffered;", "E", "Lkotlinx/coroutines/channels/Send;", "", "completeResumeSend", "()V", "Lkotlinx/coroutines/channels/Closed;", "closed", "resumeSendClosed", "(Lkotlinx/coroutines/channels/Closed;)V", "", "toString", "()Ljava/lang/String;", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;", "otherOp", "Lkotlinx/coroutines/internal/Symbol;", "tryResumeSend", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)Lkotlinx/coroutines/internal/Symbol;", "element", "Ljava/lang/Object;", "", "getPollResult", "()Ljava/lang/Object;", "pollResult", "<init>", "(Ljava/lang/Object;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/AbstractSendChannel$SendBuffered.class */
    public static final class SendBuffered<E> extends Send {
        @JvmField

        /* renamed from: i */
        public final E f21305i;

        public SendBuffered(E e) {
            this.f21305i = e;
        }

        @Override // kotlinx.coroutines.channels.Send
        /* renamed from: X */
        public void mo799X() {
        }

        @Override // kotlinx.coroutines.channels.Send
        @Nullable
        /* renamed from: Y */
        public Object mo798Y() {
            return this.f21305i;
        }

        @Override // kotlinx.coroutines.channels.Send
        /* renamed from: Z */
        public void mo797Z(@NotNull Closed<?> closed) {
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

        @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
        @NotNull
        public String toString() {
            return "SendBuffered@" + DebugStringsKt.m1303b(this) + '(' + this.f21305i + ')';
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0012\u0018��*\u0004\b\u0001\u0010\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00028\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0014¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\r"}, d2 = {"Lkotlinx/coroutines/channels/AbstractSendChannel$SendBufferedDesc;", "E", "kotlinx/coroutines/internal/LockFreeLinkedListNode$AddLastDesc", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "affected", "", "failure", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Ljava/lang/Object;", "Lkotlinx/coroutines/internal/LockFreeLinkedListHead;", "queue", "element", "<init>", "(Lkotlinx/coroutines/internal/LockFreeLinkedListHead;Ljava/lang/Object;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/AbstractSendChannel$SendBufferedDesc.class */
    private static class SendBufferedDesc<E> extends LockFreeLinkedListNode.AddLastDesc<SendBuffered<? extends E>> {
        public SendBufferedDesc(@NotNull LockFreeLinkedListHead lockFreeLinkedListHead, E e) {
            super(lockFreeLinkedListHead, new SendBuffered(e));
        }

        @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode.AbstractAtomicDesc
        @Nullable
        /* renamed from: e */
        protected Object mo512e(@NotNull LockFreeLinkedListNode lockFreeLinkedListNode) {
            boolean z = lockFreeLinkedListNode instanceof Closed;
            Object obj = lockFreeLinkedListNode;
            if (!z) {
                obj = lockFreeLinkedListNode instanceof ReceiveOrClosed ? AbstractChannelKt.f21299b : null;
            }
            return obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��Z\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018��*\u0004\b\u0001\u0010\u0001*\u0004\b\u0002\u0010\u00022\u00020\u00032\u00020\u0004BZ\u0012\b\u0010\u001e\u001a\u0004\u0018\u00010\u0018\u0012\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00028\u00010\u001b\u0012\f\u0010#\u001a\b\u0012\u0004\u0012\u00028\u00020\"\u0012(\u0010\u0019\u001a$\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00020\u0017\u0012\u0006\u0012\u0004\u0018\u00010\u00180\u0015ø\u0001��¢\u0006\u0004\b%\u0010&J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\b\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\b\u0010\u0007J\u001b\u0010\u000b\u001a\u00020\u00052\n\u0010\n\u001a\u0006\u0012\u0002\b\u00030\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u001b\u0010\u0013\u001a\u0004\u0018\u00010\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016¢\u0006\u0004\b\u0013\u0010\u0014R;\u0010\u0019\u001a$\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00020\u0017\u0012\u0006\u0012\u0004\u0018\u00010\u00180\u00158\u0006@\u0007X\u0087\u0004ø\u0001��¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u001c\u0010\u001c\u001a\b\u0012\u0004\u0012\u00028\u00010\u001b8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u001e\u0010\u001e\u001a\u0004\u0018\u00010\u00188\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!R\u001c\u0010#\u001a\b\u0012\u0004\u0012\u00028\u00020\"8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b#\u0010$\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006'"}, d2 = {"Lkotlinx/coroutines/channels/AbstractSendChannel$SendSelect;", "E", "R", "Lkotlinx/coroutines/DisposableHandle;", "Lkotlinx/coroutines/channels/Send;", "", "completeResumeSend", "()V", "dispose", "Lkotlinx/coroutines/channels/Closed;", "closed", "resumeSendClosed", "(Lkotlinx/coroutines/channels/Closed;)V", "", "toString", "()Ljava/lang/String;", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;", "otherOp", "Lkotlinx/coroutines/internal/Symbol;", "tryResumeSend", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)Lkotlinx/coroutines/internal/Symbol;", "Lkotlin/Function2;", "Lkotlinx/coroutines/channels/SendChannel;", "Lkotlin/coroutines/Continuation;", "", "block", "Lkotlin/jvm/functions/Function2;", "Lkotlinx/coroutines/channels/AbstractSendChannel;", "channel", "Lkotlinx/coroutines/channels/AbstractSendChannel;", "pollResult", "Ljava/lang/Object;", "getPollResult", "()Ljava/lang/Object;", "Lkotlinx/coroutines/selects/SelectInstance;", "select", "Lkotlinx/coroutines/selects/SelectInstance;", "<init>", "(Ljava/lang/Object;Lkotlinx/coroutines/channels/AbstractSendChannel;Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/AbstractSendChannel$SendSelect.class */
    public static final class SendSelect<E, R> extends Send implements DisposableHandle {
        @Nullable

        /* renamed from: i */
        private final Object f21306i;
        @JvmField
        @NotNull

        /* renamed from: j */
        public final AbstractSendChannel<E> f21307j;
        @JvmField
        @NotNull

        /* renamed from: k */
        public final SelectInstance<R> f21308k;
        @JvmField
        @NotNull

        /* renamed from: l */
        public final Function2<SendChannel<? super E>, Continuation<? super R>, Object> f21309l;

        /* JADX WARN: Multi-variable type inference failed */
        public SendSelect(@Nullable Object obj, @NotNull AbstractSendChannel<E> abstractSendChannel, @NotNull SelectInstance<? super R> selectInstance, @NotNull Function2<? super SendChannel<? super E>, ? super Continuation<? super R>, ? extends Object> function2) {
            this.f21306i = obj;
            this.f21307j = abstractSendChannel;
            this.f21308k = selectInstance;
            this.f21309l = function2;
        }

        @Override // kotlinx.coroutines.channels.Send
        /* renamed from: X */
        public void mo799X() {
            ContinuationKt.m1934b(this.f21309l, this.f21307j, this.f21308k.mo312k());
        }

        @Override // kotlinx.coroutines.channels.Send
        @Nullable
        /* renamed from: Y */
        public Object mo798Y() {
            return this.f21306i;
        }

        @Override // kotlinx.coroutines.channels.Send
        /* renamed from: Z */
        public void mo797Z(@NotNull Closed<?> closed) {
            if (this.f21308k.mo314e()) {
                this.f21308k.mo311u(closed.m850e0());
            }
        }

        @Override // kotlinx.coroutines.channels.Send
        @Nullable
        /* renamed from: a0 */
        public Symbol mo796a0(@Nullable LockFreeLinkedListNode.PrepareOp prepareOp) {
            return (Symbol) this.f21308k.mo315b(prepareOp);
        }

        @Override // kotlinx.coroutines.DisposableHandle
        public void dispose() {
            mo521S();
        }

        @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
        @NotNull
        public String toString() {
            return "SendSelect@" + DebugStringsKt.m1303b(this) + '(' + mo798Y() + ")[" + this.f21307j + ", " + this.f21308k + ']';
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Metadata(bv = {1, 0, 3}, d1 = {"��*\n\u0002\u0018\u0002\n��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0004\u0018��*\u0004\b\u0001\u0010\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\r\u001a\u00028\u0001\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\u0019\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0014¢\u0006\u0004\b\u0006\u0010\u0007J\u001d\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\u0010\n\u001a\u00060\bj\u0002`\tH\u0016¢\u0006\u0004\b\u000b\u0010\fR\u0016\u0010\r\u001a\u00028\u00018\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0013"}, d2 = {"Lkotlinx/coroutines/channels/AbstractSendChannel$TryOfferDesc;", "E", "kotlinx/coroutines/internal/LockFreeLinkedListNode$RemoveFirstDesc", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "affected", "", "failure", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Ljava/lang/Object;", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;", "Lkotlinx/coroutines/internal/PrepareOp;", "prepareOp", "onPrepare", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)Ljava/lang/Object;", "element", "Ljava/lang/Object;", "Lkotlinx/coroutines/internal/LockFreeLinkedListHead;", "queue", "<init>", "(Ljava/lang/Object;Lkotlinx/coroutines/internal/LockFreeLinkedListHead;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/AbstractSendChannel$TryOfferDesc.class */
    public static final class TryOfferDesc<E> extends LockFreeLinkedListNode.RemoveFirstDesc<ReceiveOrClosed<? super E>> {
        @JvmField

        /* renamed from: e */
        public final E f21310e;

        public TryOfferDesc(E e, @NotNull LockFreeLinkedListHead lockFreeLinkedListHead) {
            super(lockFreeLinkedListHead);
            this.f21310e = e;
        }

        @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode.RemoveFirstDesc, kotlinx.coroutines.internal.LockFreeLinkedListNode.AbstractAtomicDesc
        @Nullable
        /* renamed from: e */
        protected Object mo512e(@NotNull LockFreeLinkedListNode lockFreeLinkedListNode) {
            boolean z = lockFreeLinkedListNode instanceof Closed;
            Object obj = lockFreeLinkedListNode;
            if (!z) {
                obj = !(lockFreeLinkedListNode instanceof ReceiveOrClosed) ? AbstractChannelKt.f21299b : null;
            }
            return obj;
        }

        @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode.AbstractAtomicDesc
        @Nullable
        /* renamed from: j */
        public Object mo515j(@NotNull LockFreeLinkedListNode.PrepareOp prepareOp) {
            LockFreeLinkedListNode lockFreeLinkedListNode = prepareOp.f23920a;
            if (lockFreeLinkedListNode != null) {
                Symbol z = ((ReceiveOrClosed) lockFreeLinkedListNode).mo810z(this.f21310e, prepareOp);
                if (z == null) {
                    return LockFreeLinkedList_commonKt.f23927a;
                }
                Object obj = AtomicKt.f23891b;
                if (z == obj) {
                    return obj;
                }
                if (!DebugKt.m1308a()) {
                    return null;
                }
                if (z == CancellableContinuationImplKt.f21113a) {
                    return null;
                }
                throw new AssertionError();
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlinx.coroutines.channels.ReceiveOrClosed<E>");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: H */
    public final <R> void m1055H(SelectInstance<? super R> selectInstance, E e, Function2<? super SendChannel<? super E>, ? super Continuation<? super R>, ? extends Object> function2) {
        while (!selectInstance.mo313j()) {
            if (m1057D()) {
                SendSelect sendSelect = new SendSelect(e, this, selectInstance, function2);
                Object i = mo1014i(sendSelect);
                if (i == null) {
                    selectInstance.mo316A(sendSelect);
                    return;
                } else if (i instanceof Closed) {
                    throw StackTraceRecoveryKt.m446k(m1039s((Closed) i));
                } else if (i != AbstractChannelKt.f21301d && !(i instanceof Receive)) {
                    throw new IllegalStateException(("enqueueSend returned " + i + ' ').toString());
                }
            }
            Object F = mo831F(e, selectInstance);
            if (F != SelectKt.m306d()) {
                if (F != AbstractChannelKt.f21299b && F != AtomicKt.f23891b) {
                    if (F == AbstractChannelKt.f21298a) {
                        UndispatchedKt.m395d(function2, this, selectInstance.mo312k());
                        return;
                    } else if (F instanceof Closed) {
                        throw StackTraceRecoveryKt.m446k(m1039s((Closed) F));
                    } else {
                        throw new IllegalStateException(("offerSelectInternal returned " + F).toString());
                    }
                }
            } else {
                return;
            }
        }
    }

    /* renamed from: d */
    private final int m1047d() {
        LockFreeLinkedListHead lockFreeLinkedListHead = this.f21304f;
        Object M = lockFreeLinkedListHead.m527M();
        if (M != null) {
            int i = 0;
            for (LockFreeLinkedListNode lockFreeLinkedListNode = (LockFreeLinkedListNode) M; !Intrinsics.m1834a(lockFreeLinkedListNode, lockFreeLinkedListHead); lockFreeLinkedListNode = lockFreeLinkedListNode.m526N()) {
                i = i;
                if (lockFreeLinkedListNode instanceof LockFreeLinkedListNode) {
                    i++;
                }
            }
            return i;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
    }

    /* renamed from: p */
    private final String m1041p() {
        String str;
        LockFreeLinkedListNode N = this.f21304f.m526N();
        if (N == this.f21304f) {
            return "EmptyQueue";
        }
        if (N instanceof Closed) {
            str = N.toString();
        } else if (N instanceof Receive) {
            str = "ReceiveQueued";
        } else if (N instanceof Send) {
            str = "SendQueued";
        } else {
            str = "UNEXPECTED:" + N;
        }
        LockFreeLinkedListNode O = this.f21304f.m525O();
        String str2 = str;
        if (O != N) {
            String str3 = str + ",queueSize=" + m1047d();
            str2 = str3;
            if (O instanceof Closed) {
                str2 = str3 + ",closedForSend=" + O;
            }
        }
        return str2;
    }

    /* renamed from: q */
    private final void m1040q(Closed<?> closed) {
        Object b = InlineList.m546b(null, 1, null);
        while (true) {
            LockFreeLinkedListNode O = closed.m525O();
            LockFreeLinkedListNode lockFreeLinkedListNode = O;
            if (!(O instanceof Receive)) {
                lockFreeLinkedListNode = null;
            }
            Receive receive = (Receive) lockFreeLinkedListNode;
            if (receive == null) {
                break;
            } else if (!receive.mo521S()) {
                receive.m524P();
            } else {
                b = InlineList.m543e(b, receive);
            }
        }
        if (b != null) {
            if (!(b instanceof ArrayList)) {
                ((Receive) b).mo819X(closed);
            } else if (b != null) {
                ArrayList arrayList = (ArrayList) b;
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    ((Receive) arrayList.get(size)).mo819X(closed);
                }
            } else {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.collections.ArrayList<E> /* = java.util.ArrayList<E> */");
            }
        }
        m1056G(closed);
    }

    /* renamed from: s */
    private final Throwable m1039s(Closed<?> closed) {
        m1040q(closed);
        return closed.m850e0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: u */
    public final void m1038u(Continuation<?> continuation, Closed<?> closed) {
        m1040q(closed);
        Throwable e0 = closed.m850e0();
        Result.Companion companion = Result.f20418g;
        Object a = ResultKt.m2473a(e0);
        Result.m2481b(a);
        continuation.resumeWith(a);
    }

    /* renamed from: y */
    private final void m1037y(Throwable th) {
        Object obj;
        Object obj2 = this.onCloseHandler;
        if (obj2 != null && obj2 != (obj = AbstractChannelKt.f21302e) && f21303g.compareAndSet(this, obj2, obj)) {
            TypeIntrinsics.m1785b(obj2, 1);
            ((Function1) obj2).invoke(th);
        }
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    @Nullable
    /* renamed from: A */
    public final Object mo805A(E e, @NotNull Continuation<? super Unit> continuation) {
        Object d;
        if (mo832E(e) == AbstractChannelKt.f21298a) {
            return Unit.f20447a;
        }
        Object K = m1052K(e, continuation);
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        return K == d ? K : Unit.f20447a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: B */
    public abstract boolean mo809B();

    @Override // kotlinx.coroutines.channels.SendChannel
    /* renamed from: C */
    public final boolean mo804C() {
        return m1043m() != null;
    }

    /* renamed from: D */
    protected final boolean m1057D() {
        return !(this.f21304f.m526N() instanceof ReceiveOrClosed) && mo809B();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    /* renamed from: E */
    public Object mo832E(E e) {
        ReceiveOrClosed<E> L;
        Symbol z;
        do {
            L = mo1051L();
            if (L == null) {
                return AbstractChannelKt.f21299b;
            }
            z = L.mo810z(e, null);
        } while (z == null);
        if (DebugKt.m1308a()) {
            if (!(z == CancellableContinuationImplKt.f21113a)) {
                throw new AssertionError();
            }
        }
        L.mo811n(e);
        return L.mo812d();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    /* renamed from: F */
    public Object mo831F(E e, @NotNull SelectInstance<?> selectInstance) {
        TryOfferDesc<E> f = m1045f(e);
        Object v = selectInstance.mo310v(f);
        if (v != null) {
            return v;
        }
        ReceiveOrClosed<? super E> n = f.m504n();
        n.mo811n(e);
        return n.mo812d();
    }

    /* renamed from: G */
    protected void m1056G(@NotNull LockFreeLinkedListNode lockFreeLinkedListNode) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    /* renamed from: I */
    public final ReceiveOrClosed<?> m1054I(E e) {
        LockFreeLinkedListNode O;
        LockFreeLinkedListNode lockFreeLinkedListNode = this.f21304f;
        SendBuffered sendBuffered = new SendBuffered(e);
        do {
            O = lockFreeLinkedListNode.m525O();
            if (O instanceof ReceiveOrClosed) {
                return (ReceiveOrClosed) O;
            }
        } while (!O.m532H(sendBuffered, lockFreeLinkedListNode));
        return null;
    }

    @Nullable
    /* renamed from: J */
    public final Object m1053J(E e, @NotNull Continuation<? super Unit> continuation) {
        Object d;
        Object d2;
        if (mo832E(e) == AbstractChannelKt.f21298a) {
            Object b = YieldKt.m1085b(continuation);
            d2 = IntrinsicsKt__IntrinsicsKt.m1920d();
            return b == d2 ? b : Unit.f20447a;
        }
        Object K = m1052K(e, continuation);
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        return K == d ? K : Unit.f20447a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x00c4, code lost:
        r0 = r0.m1347t();
        r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.m1920d();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00cd, code lost:
        if (r0 != r1) goto L_0x00d4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00d0, code lost:
        kotlin.coroutines.jvm.internal.DebugProbesKt.m1904c(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00d5, code lost:
        return r0;
     */
    @org.jetbrains.annotations.Nullable
    /* renamed from: K */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final /* synthetic */ java.lang.Object m1052K(E r6, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super kotlin.Unit> r7) {
        /*
            Method dump skipped, instructions count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.AbstractSendChannel.m1052K(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0018, code lost:
        r6 = null;
     */
    @org.jetbrains.annotations.Nullable
    /* renamed from: L */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public kotlinx.coroutines.channels.ReceiveOrClosed<E> mo1051L() {
        /*
            r4 = this;
            r0 = r4
            kotlinx.coroutines.internal.LockFreeLinkedListHead r0 = r0.f21304f
            r5 = r0
        L_0x0005:
            r0 = r5
            java.lang.Object r0 = r0.m527M()
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0050
            r0 = r6
            kotlinx.coroutines.internal.LockFreeLinkedListNode r0 = (kotlinx.coroutines.internal.LockFreeLinkedListNode) r0
            r6 = r0
            r0 = r6
            r1 = r5
            if (r0 != r1) goto L_0x001d
        L_0x0018:
            r0 = 0
            r6 = r0
            goto L_0x0044
        L_0x001d:
            r0 = r6
            boolean r0 = r0 instanceof kotlinx.coroutines.channels.ReceiveOrClosed
            if (r0 != 0) goto L_0x0027
            goto L_0x0018
        L_0x0027:
            r0 = r6
            kotlinx.coroutines.channels.ReceiveOrClosed r0 = (kotlinx.coroutines.channels.ReceiveOrClosed) r0
            boolean r0 = r0 instanceof kotlinx.coroutines.channels.Closed
            if (r0 == 0) goto L_0x003b
            r0 = r6
            boolean r0 = r0.mo522R()
            if (r0 != 0) goto L_0x003b
            goto L_0x0044
        L_0x003b:
            r0 = r6
            kotlinx.coroutines.internal.LockFreeLinkedListNode r0 = r0.m519U()
            r7 = r0
            r0 = r7
            if (r0 != 0) goto L_0x0049
        L_0x0044:
            r0 = r6
            kotlinx.coroutines.channels.ReceiveOrClosed r0 = (kotlinx.coroutines.channels.ReceiveOrClosed) r0
            return r0
        L_0x0049:
            r0 = r7
            r0.m523Q()
            goto L_0x0005
        L_0x0050:
            java.lang.NullPointerException r0 = new java.lang.NullPointerException
            r1 = r0
        */
        //  java.lang.String r2 = "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"
        /*
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.AbstractSendChannel.mo1051L():kotlinx.coroutines.channels.ReceiveOrClosed");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0018, code lost:
        r6 = null;
     */
    @org.jetbrains.annotations.Nullable
    /* renamed from: M */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final kotlinx.coroutines.channels.Send m1050M() {
        /*
            r4 = this;
            r0 = r4
            kotlinx.coroutines.internal.LockFreeLinkedListHead r0 = r0.f21304f
            r5 = r0
        L_0x0005:
            r0 = r5
            java.lang.Object r0 = r0.m527M()
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0050
            r0 = r6
            kotlinx.coroutines.internal.LockFreeLinkedListNode r0 = (kotlinx.coroutines.internal.LockFreeLinkedListNode) r0
            r6 = r0
            r0 = r6
            r1 = r5
            if (r0 != r1) goto L_0x001d
        L_0x0018:
            r0 = 0
            r6 = r0
            goto L_0x0044
        L_0x001d:
            r0 = r6
            boolean r0 = r0 instanceof kotlinx.coroutines.channels.Send
            if (r0 != 0) goto L_0x0027
            goto L_0x0018
        L_0x0027:
            r0 = r6
            kotlinx.coroutines.channels.Send r0 = (kotlinx.coroutines.channels.Send) r0
            boolean r0 = r0 instanceof kotlinx.coroutines.channels.Closed
            if (r0 == 0) goto L_0x003b
            r0 = r6
            boolean r0 = r0.mo522R()
            if (r0 != 0) goto L_0x003b
            goto L_0x0044
        L_0x003b:
            r0 = r6
            kotlinx.coroutines.internal.LockFreeLinkedListNode r0 = r0.m519U()
            r7 = r0
            r0 = r7
            if (r0 != 0) goto L_0x0049
        L_0x0044:
            r0 = r6
            kotlinx.coroutines.channels.Send r0 = (kotlinx.coroutines.channels.Send) r0
            return r0
        L_0x0049:
            r0 = r7
            r0.m523Q()
            goto L_0x0005
        L_0x0050:
            java.lang.NullPointerException r0 = new java.lang.NullPointerException
            r1 = r0
        */
        //  java.lang.String r2 = "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"
        /*
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.AbstractSendChannel.m1050M():kotlinx.coroutines.channels.Send");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    /* renamed from: e */
    public final LockFreeLinkedListNode.AddLastDesc<?> m1046e(E e) {
        return new SendBufferedDesc(this.f21304f, e);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    /* renamed from: f */
    public final TryOfferDesc<E> m1045f(E e) {
        return new TryOfferDesc<>(e, this.f21304f);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    /* renamed from: i */
    public Object mo1014i(@NotNull final Send send) {
        boolean z;
        LockFreeLinkedListNode O;
        if (mo806z()) {
            LockFreeLinkedListNode lockFreeLinkedListNode = this.f21304f;
            do {
                O = lockFreeLinkedListNode.m525O();
                if (O instanceof ReceiveOrClosed) {
                    return O;
                }
            } while (!O.m532H(send, lockFreeLinkedListNode));
            return null;
        }
        LockFreeLinkedListNode lockFreeLinkedListNode2 = this.f21304f;
        LockFreeLinkedListNode.CondAddOp abstractSendChannel$enqueueSend$$inlined$addLastIfPrevAndIf$1 = new LockFreeLinkedListNode.CondAddOp(send, send, this) { // from class: kotlinx.coroutines.channels.AbstractSendChannel$enqueueSend$$inlined$addLastIfPrevAndIf$1

            /* renamed from: d */
            final /* synthetic */ AbstractSendChannel f21311d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(send);
                this.f21311d = this;
            }

            @Nullable
            /* renamed from: j */
            public Object mo280h(@NotNull LockFreeLinkedListNode lockFreeLinkedListNode3) {
                return this.f21311d.mo809B() ? null : LockFreeLinkedListKt.m539a();
            }
        };
        while (true) {
            LockFreeLinkedListNode O2 = lockFreeLinkedListNode2.m525O();
            if (!(O2 instanceof ReceiveOrClosed)) {
                int W = O2.m517W(send, lockFreeLinkedListNode2, abstractSendChannel$enqueueSend$$inlined$addLastIfPrevAndIf$1);
                z = true;
                if (W != 1) {
                    if (W == 2) {
                        z = false;
                        break;
                    }
                } else {
                    break;
                }
            } else {
                return O2;
            }
        }
        if (!z) {
            return AbstractChannelKt.f21301d;
        }
        return null;
    }

    @NotNull
    /* renamed from: k */
    protected String mo835k() {
        return "";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    /* renamed from: l */
    public final Closed<?> m1044l() {
        LockFreeLinkedListNode N = this.f21304f.m526N();
        boolean z = N instanceof Closed;
        Closed<?> closed = null;
        if (!z) {
            N = null;
        }
        Closed<?> closed2 = (Closed) N;
        if (closed2 != null) {
            m1040q(closed2);
            closed = closed2;
        }
        return closed;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    /* renamed from: m */
    public final Closed<?> m1043m() {
        LockFreeLinkedListNode O = this.f21304f.m525O();
        boolean z = O instanceof Closed;
        Closed<?> closed = null;
        if (!z) {
            O = null;
        }
        Closed<?> closed2 = (Closed) O;
        if (closed2 != null) {
            m1040q(closed2);
            closed = closed2;
        }
        return closed;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    /* renamed from: o */
    public final LockFreeLinkedListHead m1042o() {
        return this.f21304f;
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    @NotNull
    /* renamed from: r */
    public final SelectClause2<E, SendChannel<E>> mo803r() {
        return (SelectClause2<E, SendChannel<? super E>>) new SelectClause2<E, SendChannel<? super E>>() { // from class: kotlinx.coroutines.channels.AbstractSendChannel$onSend$1
            @Override // kotlinx.coroutines.selects.SelectClause2
            /* renamed from: z */
            public <R> void mo290z(@NotNull SelectInstance<? super R> selectInstance, E e, @NotNull Function2<? super SendChannel<? super E>, ? super Continuation<? super R>, ? extends Object> function2) {
                AbstractSendChannel.this.m1055H(selectInstance, e, function2);
            }
        };
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    /* renamed from: t */
    public boolean mo802t(@Nullable Throwable th) {
        boolean z;
        Closed<?> closed = new Closed<>(th);
        LockFreeLinkedListNode lockFreeLinkedListNode = this.f21304f;
        while (true) {
            LockFreeLinkedListNode O = lockFreeLinkedListNode.m525O();
            z = true;
            if (!(O instanceof Closed)) {
                if (O.m532H(closed, lockFreeLinkedListNode)) {
                    break;
                }
            } else {
                z = false;
                break;
            }
        }
        if (!z) {
            LockFreeLinkedListNode O2 = this.f21304f.m525O();
            if (O2 != null) {
                closed = (Closed) O2;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type kotlinx.coroutines.channels.Closed<*>");
            }
        }
        m1040q(closed);
        if (z) {
            m1037y(th);
        }
        return z;
    }

    @NotNull
    public String toString() {
        return DebugStringsKt.m1304a(this) + '@' + DebugStringsKt.m1303b(this) + '{' + m1041p() + '}' + mo835k();
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    /* renamed from: w */
    public void mo801w(@NotNull Function1<? super Throwable, Unit> function1) {
        if (!f21303g.compareAndSet(this, null, function1)) {
            Object obj = this.onCloseHandler;
            if (obj == AbstractChannelKt.f21302e) {
                throw new IllegalStateException("Another handler was already registered and successfully invoked");
            }
            throw new IllegalStateException("Another handler was already registered: " + obj);
        }
        Closed<?> m = m1043m();
        if (m != null && f21303g.compareAndSet(this, function1, AbstractChannelKt.f21302e)) {
            function1.invoke(m.f22187i);
        }
    }

    /* renamed from: z */
    protected abstract boolean mo806z();
}
