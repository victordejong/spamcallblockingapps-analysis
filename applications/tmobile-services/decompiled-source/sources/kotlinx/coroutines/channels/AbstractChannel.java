package kotlinx.coroutines.channels;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CancelHandler;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CancellableContinuationImplKt;
import kotlinx.coroutines.CancellableContinuationKt;
import kotlinx.coroutines.DebugKt;
import kotlinx.coroutines.DebugStringsKt;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.channels.ValueOrClosed;
import kotlinx.coroutines.internal.AtomicKt;
import kotlinx.coroutines.internal.InlineList;
import kotlinx.coroutines.internal.LockFreeLinkedListHead;
import kotlinx.coroutines.internal.LockFreeLinkedListKt;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;
import kotlinx.coroutines.internal.LockFreeLinkedList_commonKt;
import kotlinx.coroutines.internal.StackTraceRecoveryKt;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.intrinsics.UndispatchedKt;
import kotlinx.coroutines.selects.SelectClause1;
import kotlinx.coroutines.selects.SelectInstance;
import kotlinx.coroutines.selects.SelectKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0080\u0001\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u000f\b \u0018��*\u0004\b��\u0010\u00012\u00020\u00022\u00020\u0003:\u0006WXYZ[\\B\u0007¢\u0006\u0004\bV\u0010)J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u001d\u0010\u0007\u001a\u00020\u000b2\u000e\u0010\u0005\u001a\n\u0018\u00010\tj\u0004\u0018\u0001`\n¢\u0006\u0004\b\u0007\u0010\fJ\u0019\u0010\u000e\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H��¢\u0006\u0004\b\r\u0010\bJ\u0015\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028��0\u000fH\u0004¢\u0006\u0004\b\u0010\u0010\u0011J\u001d\u0010\u0014\u001a\u00020\u00062\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028��0\u0012H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u001d\u0010\u0016\u001a\u00020\u00062\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028��0\u0012H\u0014¢\u0006\u0004\b\u0016\u0010\u0015JT\u0010 \u001a\u00020\u0006\"\u0004\b\u0001\u0010\u00172\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028\u00010\u00182$\u0010\u001d\u001a \b\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u001b\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u001c\u0012\u0006\u0012\u0004\u0018\u00010\u001b0\u001a2\u0006\u0010\u001f\u001a\u00020\u001eH\u0002ø\u0001��¢\u0006\u0004\b \u0010!J\u0016\u0010#\u001a\b\u0012\u0004\u0012\u00028��0\"H\u0086\u0002¢\u0006\u0004\b#\u0010$J\u0017\u0010&\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020\u0006H\u0014¢\u0006\u0004\b&\u0010'J\u000f\u0010(\u001a\u00020\u000bH\u0014¢\u0006\u0004\b(\u0010)J\u000f\u0010*\u001a\u00020\u000bH\u0014¢\u0006\u0004\b*\u0010)J\u000f\u0010+\u001a\u0004\u0018\u00018��¢\u0006\u0004\b+\u0010,J\u0011\u0010-\u001a\u0004\u0018\u00010\u001bH\u0014¢\u0006\u0004\b-\u0010,J\u001d\u0010.\u001a\u0004\u0018\u00010\u001b2\n\u0010\u0019\u001a\u0006\u0012\u0002\b\u00030\u0018H\u0014¢\u0006\u0004\b.\u0010/J\u0013\u0010\u0013\u001a\u00028��H\u0086@ø\u0001��¢\u0006\u0004\b\u0013\u00100J\u001f\u00103\u001a\b\u0012\u0004\u0012\u00028��01H\u0086@ø\u0001��ø\u0001��ø\u0001\u0001¢\u0006\u0004\b2\u00100J\u0015\u00104\u001a\u0004\u0018\u00018��H\u0086@ø\u0001��¢\u0006\u0004\b4\u00100J\u001b\u00106\u001a\u0004\u0018\u00018��2\b\u00105\u001a\u0004\u0018\u00010\u001bH\u0002¢\u0006\u0004\b6\u00107J!\u00108\u001a\u00028\u0001\"\u0004\b\u0001\u0010\u00172\u0006\u0010\u001f\u001a\u00020\u001eH\u0082@ø\u0001��¢\u0006\u0004\b8\u00109JT\u0010:\u001a\u00020\u000b\"\u0004\b\u0001\u0010\u00172\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028\u00010\u00182\u0006\u0010\u001f\u001a\u00020\u001e2$\u0010\u001d\u001a \b\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u001b\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u001c\u0012\u0006\u0012\u0004\u0018\u00010\u001b0\u001aH\u0002ø\u0001��¢\u0006\u0004\b:\u0010;J'\u0010>\u001a\u00020\u000b2\n\u0010=\u001a\u0006\u0012\u0002\b\u00030<2\n\u0010\u0013\u001a\u0006\u0012\u0002\b\u00030\u0012H\u0002¢\u0006\u0004\b>\u0010?J\u0017\u0010A\u001a\n\u0012\u0004\u0012\u00028��\u0018\u00010@H\u0014¢\u0006\u0004\bA\u0010BJZ\u0010D\u001a\u00020\u000b\"\u0004\b\u0001\u0010\u0017* \b\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u001b\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u001c\u0012\u0006\u0012\u0004\u0018\u00010\u001b0\u001a2\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028\u00010\u00182\u0006\u0010\u001f\u001a\u00020\u001e2\b\u0010C\u001a\u0004\u0018\u00010\u001bH\u0002ø\u0001��¢\u0006\u0004\bD\u0010ER\u0016\u0010H\u001a\u00020\u00068D@\u0004X\u0084\u0004¢\u0006\u0006\u001a\u0004\bF\u0010GR\u0016\u0010I\u001a\u00020\u00068$@$X¤\u0004¢\u0006\u0006\u001a\u0004\bI\u0010GR\u0016\u0010J\u001a\u00020\u00068$@$X¤\u0004¢\u0006\u0006\u001a\u0004\bJ\u0010GR\u0016\u0010K\u001a\u00020\u00068V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\bK\u0010GR\u0016\u0010L\u001a\u00020\u00068V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\bL\u0010GR\u0016\u0010M\u001a\u00020\u00068D@\u0004X\u0084\u0004¢\u0006\u0006\u001a\u0004\bM\u0010GR\u0019\u0010Q\u001a\b\u0012\u0004\u0012\u00028��0N8F@\u0006¢\u0006\u0006\u001a\u0004\bO\u0010PR\"\u0010S\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028��010N8F@\u0006ø\u0001��¢\u0006\u0006\u001a\u0004\bR\u0010PR\u001b\u0010U\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018��0N8F@\u0006¢\u0006\u0006\u001a\u0004\bT\u0010P\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006]"}, d2 = {"Lkotlinx/coroutines/channels/AbstractChannel;", "E", "Lkotlinx/coroutines/channels/Channel;", "Lkotlinx/coroutines/channels/AbstractSendChannel;", "", "cause", "", "cancel", "(Ljava/lang/Throwable;)Z", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "", "(Ljava/util/concurrent/CancellationException;)V", "cancelInternal$kotlinx_coroutines_core", "cancelInternal", "Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc;", "describeTryPoll", "()Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc;", "Lkotlinx/coroutines/channels/Receive;", "receive", "enqueueReceive", "(Lkotlinx/coroutines/channels/Receive;)Z", "enqueueReceiveInternal", "R", "Lkotlinx/coroutines/selects/SelectInstance;", "select", "Lkotlin/Function2;", "", "Lkotlin/coroutines/Continuation;", "block", "", "receiveMode", "enqueueReceiveSelect", "(Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;I)Z", "Lkotlinx/coroutines/channels/ChannelIterator;", "iterator", "()Lkotlinx/coroutines/channels/ChannelIterator;", "wasClosed", "onCancelIdempotent", "(Z)V", "onReceiveDequeued", "()V", "onReceiveEnqueued", "poll", "()Ljava/lang/Object;", "pollInternal", "pollSelectInternal", "(Lkotlinx/coroutines/selects/SelectInstance;)Ljava/lang/Object;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/channels/ValueOrClosed;", "receiveOrClosed-ZYPwvRU", "receiveOrClosed", "receiveOrNull", "result", "receiveOrNullResult", "(Ljava/lang/Object;)Ljava/lang/Object;", "receiveSuspend", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "registerSelectReceiveMode", "(Lkotlinx/coroutines/selects/SelectInstance;ILkotlin/jvm/functions/Function2;)V", "Lkotlinx/coroutines/CancellableContinuation;", "cont", "removeReceiveOnCancel", "(Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/channels/Receive;)V", "Lkotlinx/coroutines/channels/ReceiveOrClosed;", "takeFirstReceiveOrPeekClosed", "()Lkotlinx/coroutines/channels/ReceiveOrClosed;", FirebaseAnalytics.Param.VALUE, "tryStartBlockUnintercepted", "(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/selects/SelectInstance;ILjava/lang/Object;)V", "getHasReceiveOrClosed", "()Z", "hasReceiveOrClosed", "isBufferAlwaysEmpty", "isBufferEmpty", "isClosedForReceive", "isEmpty", "isEmptyImpl", "Lkotlinx/coroutines/selects/SelectClause1;", "getOnReceive", "()Lkotlinx/coroutines/selects/SelectClause1;", "onReceive", "getOnReceiveOrClosed", "onReceiveOrClosed", "getOnReceiveOrNull", "onReceiveOrNull", "<init>", "Itr", "ReceiveElement", "ReceiveHasNext", "ReceiveSelect", "RemoveReceiveOnCancel", "TryPollDesc", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/AbstractChannel.class */
public abstract class AbstractChannel<E> extends AbstractSendChannel<E> implements Channel<E> {

    @Metadata(bv = {1, 0, 3}, d1 = {"��\"\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0002\u0018��*\u0004\b\u0001\u0010\u00012\u00020\u0002B\u0015\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00010\r¢\u0006\u0004\b\u0016\u0010\u0017J\u0013\u0010\u0004\u001a\u00020\u0003H\u0096Bø\u0001��¢\u0006\u0004\b\u0004\u0010\u0005J\u0019\u0010\b\u001a\u00020\u00032\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0004\b\b\u0010\tJ\u0013\u0010\n\u001a\u00020\u0003H\u0082@ø\u0001��¢\u0006\u0004\b\n\u0010\u0005J\u0010\u0010\u000b\u001a\u00028\u0001H\u0096\u0002¢\u0006\u0004\b\u000b\u0010\fR\u001f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00010\r8\u0006@\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R$\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\u0012\u001a\u0004\b\u0013\u0010\f\"\u0004\b\u0014\u0010\u0015\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0018"}, d2 = {"Lkotlinx/coroutines/channels/AbstractChannel$Itr;", "E", "Lkotlinx/coroutines/channels/ChannelIterator;", "", "hasNext", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "result", "hasNextResult", "(Ljava/lang/Object;)Z", "hasNextSuspend", "next", "()Ljava/lang/Object;", "Lkotlinx/coroutines/channels/AbstractChannel;", "channel", "Lkotlinx/coroutines/channels/AbstractChannel;", "getChannel", "()Lkotlinx/coroutines/channels/AbstractChannel;", "Ljava/lang/Object;", "getResult", "setResult", "(Ljava/lang/Object;)V", "<init>", "(Lkotlinx/coroutines/channels/AbstractChannel;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/AbstractChannel$Itr.class */
    private static final class Itr<E> implements ChannelIterator<E> {
        @Nullable

        /* renamed from: a */
        private Object f21277a = AbstractChannelKt.f21300c;
        @NotNull

        /* renamed from: b */
        private final AbstractChannel<E> f21278b;

        public Itr(@NotNull AbstractChannel<E> abstractChannel) {
            this.f21278b = abstractChannel;
        }

        /* renamed from: c */
        private final boolean m1061c(Object obj) {
            if (!(obj instanceof Closed)) {
                return true;
            }
            Closed closed = (Closed) obj;
            if (closed.f22187i == null) {
                return false;
            }
            throw StackTraceRecoveryKt.m446k(closed.m851d0());
        }

        @Override // kotlinx.coroutines.channels.ChannelIterator
        @Nullable
        /* renamed from: a */
        public Object mo1001a(@NotNull Continuation<? super Boolean> continuation) {
            Object obj = this.f21277a;
            if (obj != AbstractChannelKt.f21300c) {
                return Boxing.m1919a(m1061c(obj));
            }
            Object c0 = this.f21278b.mo837c0();
            this.f21277a = c0;
            return c0 != AbstractChannelKt.f21300c ? Boxing.m1919a(m1061c(c0)) : m1060d(continuation);
        }

        @NotNull
        /* renamed from: b */
        public final AbstractChannel<E> m1062b() {
            return this.f21278b;
        }

        @Nullable
        /* renamed from: d */
        final /* synthetic */ Object m1060d(@NotNull Continuation<? super Boolean> continuation) {
            Continuation c;
            Object d;
            c = IntrinsicsKt__IntrinsicsJvmKt.m1921c(continuation);
            CancellableContinuationImpl b = CancellableContinuationKt.m1339b(c);
            ReceiveHasNext receiveHasNext = new ReceiveHasNext(this, b);
            while (true) {
                if (!m1062b().m1073S(receiveHasNext)) {
                    Object c0 = m1062b().mo837c0();
                    m1059e(c0);
                    if (!(c0 instanceof Closed)) {
                        if (c0 != AbstractChannelKt.f21300c) {
                            Boolean a = Boxing.m1919a(true);
                            Result.Companion companion = Result.f20418g;
                            Result.m2481b(a);
                            b.resumeWith(a);
                            break;
                        }
                    } else {
                        Closed closed = (Closed) c0;
                        if (closed.f22187i == null) {
                            Boolean a2 = Boxing.m1919a(false);
                            Result.Companion companion2 = Result.f20418g;
                            Result.m2481b(a2);
                            b.resumeWith(a2);
                        } else {
                            Throwable d0 = closed.m851d0();
                            Result.Companion companion3 = Result.f20418g;
                            Object a3 = ResultKt.m2473a(d0);
                            Result.m2481b(a3);
                            b.resumeWith(a3);
                        }
                    }
                } else {
                    m1062b().m1065g0(b, receiveHasNext);
                    break;
                }
            }
            Object t = b.m1347t();
            d = IntrinsicsKt__IntrinsicsKt.m1920d();
            if (t == d) {
                DebugProbesKt.m1904c(continuation);
            }
            return t;
        }

        /* renamed from: e */
        public final void m1059e(@Nullable Object obj) {
            this.f21277a = obj;
        }

        @Override // kotlinx.coroutines.channels.ChannelIterator
        public E next() {
            E e = (E) this.f21277a;
            if (!(e instanceof Closed)) {
                Object obj = AbstractChannelKt.f21300c;
                if (e != obj) {
                    this.f21277a = obj;
                    return e;
                }
                throw new IllegalStateException("'hasNext' should be called prior to 'next' invocation");
            }
            throw StackTraceRecoveryKt.m446k(((Closed) e).m851d0());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��J\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b\u0002\u0018��*\u0006\b\u0001\u0010\u0001 ��2\u00020\u0002B\u001f\u0012\u000e\u0010\u0017\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0016\u0012\u0006\u0010\u001a\u001a\u00020\u0019¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u001b\u0010\t\u001a\u00020\u00042\n\u0010\b\u001a\u0006\u0012\u0002\b\u00030\u0007H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0003\u001a\u00028\u0001¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J#\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0003\u001a\u00028\u00012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016¢\u0006\u0004\b\u0014\u0010\u0015R\u001e\u0010\u0017\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u00168\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0016\u0010\u001a\u001a\u00020\u00198\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001b¨\u0006\u001e"}, d2 = {"Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElement;", "E", "Lkotlinx/coroutines/channels/Receive;", FirebaseAnalytics.Param.VALUE, "", "completeResumeReceive", "(Ljava/lang/Object;)V", "Lkotlinx/coroutines/channels/Closed;", "closed", "resumeReceiveClosed", "(Lkotlinx/coroutines/channels/Closed;)V", "", "resumeValue", "(Ljava/lang/Object;)Ljava/lang/Object;", "", "toString", "()Ljava/lang/String;", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;", "otherOp", "Lkotlinx/coroutines/internal/Symbol;", "tryResumeReceive", "(Ljava/lang/Object;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)Lkotlinx/coroutines/internal/Symbol;", "Lkotlinx/coroutines/CancellableContinuation;", "cont", "Lkotlinx/coroutines/CancellableContinuation;", "", "receiveMode", "I", "<init>", "(Lkotlinx/coroutines/CancellableContinuation;I)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/AbstractChannel$ReceiveElement.class */
    public static final class ReceiveElement<E> extends Receive<E> {
        @JvmField
        @NotNull

        /* renamed from: i */
        public final CancellableContinuation<Object> f21279i;
        @JvmField

        /* renamed from: j */
        public final int f21280j;

        public ReceiveElement(@NotNull CancellableContinuation<Object> cancellableContinuation, int i) {
            this.f21279i = cancellableContinuation;
            this.f21280j = i;
        }

        @Override // kotlinx.coroutines.channels.Receive
        /* renamed from: X */
        public void mo819X(@NotNull Closed<?> closed) {
            if (this.f21280j == 1 && closed.f22187i == null) {
                CancellableContinuation<Object> cancellableContinuation = this.f21279i;
                Result.Companion companion = Result.f20418g;
                Result.m2481b(null);
                cancellableContinuation.resumeWith(null);
            } else if (this.f21280j == 2) {
                CancellableContinuation<Object> cancellableContinuation2 = this.f21279i;
                ValueOrClosed.Companion companion2 = ValueOrClosed.f22234b;
                ValueOrClosed.Closed closed2 = new ValueOrClosed.Closed(closed.f22187i);
                ValueOrClosed.m792b(closed2);
                ValueOrClosed a = ValueOrClosed.m793a(closed2);
                Result.Companion companion3 = Result.f20418g;
                Result.m2481b(a);
                cancellableContinuation2.resumeWith(a);
            } else {
                CancellableContinuation<Object> cancellableContinuation3 = this.f21279i;
                Throwable d0 = closed.m851d0();
                Result.Companion companion4 = Result.f20418g;
                Object a2 = ResultKt.m2473a(d0);
                Result.m2481b(a2);
                cancellableContinuation3.resumeWith(a2);
            }
        }

        @Nullable
        /* renamed from: Y */
        public final Object m1058Y(E e) {
            if (this.f21280j == 2) {
                ValueOrClosed.Companion companion = ValueOrClosed.f22234b;
                ValueOrClosed.m792b(e);
                e = (E) ValueOrClosed.m793a(e);
            }
            return e;
        }

        @Override // kotlinx.coroutines.channels.ReceiveOrClosed
        /* renamed from: n */
        public void mo811n(E e) {
            this.f21279i.mo1365D(CancellableContinuationImplKt.f21113a);
        }

        @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
        @NotNull
        public String toString() {
            return "ReceiveElement@" + DebugStringsKt.m1303b(this) + "[receiveMode=" + this.f21280j + ']';
        }

        @Override // kotlinx.coroutines.channels.ReceiveOrClosed
        @Nullable
        /* renamed from: z */
        public Symbol mo810z(E e, @Nullable LockFreeLinkedListNode.PrepareOp prepareOp) {
            Object c = this.f21279i.mo1359c(m1058Y(e), prepareOp != null ? prepareOp.f23922c : null);
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
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��F\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018��*\u0004\b\u0001\u0010\u00012\u00020\u0002B#\u0012\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00010\u0017\u0012\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u001b\u0010\t\u001a\u00020\u00042\n\u0010\b\u001a\u0006\u0012\u0002\b\u00030\u0007H\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rJ#\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0003\u001a\u00028\u00012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u00138\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u001c\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00010\u00178\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019¨\u0006\u001c"}, d2 = {"Lkotlinx/coroutines/channels/AbstractChannel$ReceiveHasNext;", "E", "Lkotlinx/coroutines/channels/Receive;", FirebaseAnalytics.Param.VALUE, "", "completeResumeReceive", "(Ljava/lang/Object;)V", "Lkotlinx/coroutines/channels/Closed;", "closed", "resumeReceiveClosed", "(Lkotlinx/coroutines/channels/Closed;)V", "", "toString", "()Ljava/lang/String;", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;", "otherOp", "Lkotlinx/coroutines/internal/Symbol;", "tryResumeReceive", "(Ljava/lang/Object;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)Lkotlinx/coroutines/internal/Symbol;", "Lkotlinx/coroutines/CancellableContinuation;", "", "cont", "Lkotlinx/coroutines/CancellableContinuation;", "Lkotlinx/coroutines/channels/AbstractChannel$Itr;", "iterator", "Lkotlinx/coroutines/channels/AbstractChannel$Itr;", "<init>", "(Lkotlinx/coroutines/channels/AbstractChannel$Itr;Lkotlinx/coroutines/CancellableContinuation;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/AbstractChannel$ReceiveHasNext.class */
    public static final class ReceiveHasNext<E> extends Receive<E> {
        @JvmField
        @NotNull

        /* renamed from: i */
        public final Itr<E> f21281i;
        @JvmField
        @NotNull

        /* renamed from: j */
        public final CancellableContinuation<Boolean> f21282j;

        /* JADX WARN: Multi-variable type inference failed */
        public ReceiveHasNext(@NotNull Itr<E> itr, @NotNull CancellableContinuation<? super Boolean> cancellableContinuation) {
            this.f21281i = itr;
            this.f21282j = cancellableContinuation;
        }

        @Override // kotlinx.coroutines.channels.Receive
        /* renamed from: X */
        public void mo819X(@NotNull Closed<?> closed) {
            Object obj;
            if (closed.f22187i == null) {
                obj = CancellableContinuation.DefaultImpls.m1368a(this.f21282j, Boolean.FALSE, null, 2, null);
            } else {
                CancellableContinuation<Boolean> cancellableContinuation = this.f21282j;
                Throwable d0 = closed.m851d0();
                CancellableContinuation<Boolean> cancellableContinuation2 = this.f21282j;
                Throwable th = d0;
                if (DebugKt.m1305d()) {
                    th = !(cancellableContinuation2 instanceof CoroutineStackFrame) ? d0 : StackTraceRecoveryKt.m447j(d0, (CoroutineStackFrame) cancellableContinuation2);
                }
                obj = cancellableContinuation.mo1350q(th);
            }
            if (obj != null) {
                this.f21281i.m1059e(closed);
                this.f21282j.mo1365D(obj);
            }
        }

        @Override // kotlinx.coroutines.channels.ReceiveOrClosed
        /* renamed from: n */
        public void mo811n(E e) {
            this.f21281i.m1059e(e);
            this.f21282j.mo1365D(CancellableContinuationImplKt.f21113a);
        }

        @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
        @NotNull
        public String toString() {
            return "ReceiveHasNext@" + DebugStringsKt.m1303b(this);
        }

        @Override // kotlinx.coroutines.channels.ReceiveOrClosed
        @Nullable
        /* renamed from: z */
        public Symbol mo810z(E e, @Nullable LockFreeLinkedListNode.PrepareOp prepareOp) {
            Object c = this.f21282j.mo1359c(Boolean.TRUE, prepareOp != null ? prepareOp.f23922c : null);
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
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��`\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018��*\u0004\b\u0001\u0010\u0001*\u0004\b\u0002\u0010\u00022\u00020\u00032\u00020\u0004BT\u0012\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00028\u00020\u001c\u0012\f\u0010#\u001a\b\u0012\u0004\u0012\u00028\u00010\"\u0012$\u0010\u001a\u001a \b\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u0018\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0019\u0012\u0006\u0012\u0004\u0018\u00010\u00180\u0017\u0012\u0006\u0010 \u001a\u00020\u001fø\u0001��¢\u0006\u0004\b%\u0010&J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00028\u0002H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u001b\u0010\r\u001a\u00020\u00062\n\u0010\f\u001a\u0006\u0012\u0002\b\u00030\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J#\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0005\u001a\u00028\u00022\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016¢\u0006\u0004\b\u0015\u0010\u0016R7\u0010\u001a\u001a \b\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u0018\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0019\u0012\u0006\u0012\u0004\u0018\u00010\u00180\u00178\u0006@\u0007X\u0087\u0004ø\u0001��¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u001c\u0010\u001d\u001a\b\u0012\u0004\u0012\u00028\u00020\u001c8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0016\u0010 \u001a\u00020\u001f8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u001c\u0010#\u001a\b\u0012\u0004\u0012\u00028\u00010\"8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b#\u0010$\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006'"}, d2 = {"Lkotlinx/coroutines/channels/AbstractChannel$ReceiveSelect;", "R", "E", "Lkotlinx/coroutines/DisposableHandle;", "Lkotlinx/coroutines/channels/Receive;", FirebaseAnalytics.Param.VALUE, "", "completeResumeReceive", "(Ljava/lang/Object;)V", "dispose", "()V", "Lkotlinx/coroutines/channels/Closed;", "closed", "resumeReceiveClosed", "(Lkotlinx/coroutines/channels/Closed;)V", "", "toString", "()Ljava/lang/String;", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;", "otherOp", "Lkotlinx/coroutines/internal/Symbol;", "tryResumeReceive", "(Ljava/lang/Object;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)Lkotlinx/coroutines/internal/Symbol;", "Lkotlin/Function2;", "", "Lkotlin/coroutines/Continuation;", "block", "Lkotlin/jvm/functions/Function2;", "Lkotlinx/coroutines/channels/AbstractChannel;", "channel", "Lkotlinx/coroutines/channels/AbstractChannel;", "", "receiveMode", "I", "Lkotlinx/coroutines/selects/SelectInstance;", "select", "Lkotlinx/coroutines/selects/SelectInstance;", "<init>", "(Lkotlinx/coroutines/channels/AbstractChannel;Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;I)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/AbstractChannel$ReceiveSelect.class */
    public static final class ReceiveSelect<R, E> extends Receive<E> implements DisposableHandle {
        @JvmField
        @NotNull

        /* renamed from: i */
        public final AbstractChannel<E> f21283i;
        @JvmField
        @NotNull

        /* renamed from: j */
        public final SelectInstance<R> f21284j;
        @JvmField
        @NotNull

        /* renamed from: k */
        public final Function2<Object, Continuation<? super R>, Object> f21285k;
        @JvmField

        /* renamed from: l */
        public final int f21286l;

        /* JADX WARN: Multi-variable type inference failed */
        public ReceiveSelect(@NotNull AbstractChannel<E> abstractChannel, @NotNull SelectInstance<? super R> selectInstance, @NotNull Function2<Object, ? super Continuation<? super R>, ? extends Object> function2, int i) {
            this.f21283i = abstractChannel;
            this.f21284j = selectInstance;
            this.f21285k = function2;
            this.f21286l = i;
        }

        @Override // kotlinx.coroutines.channels.Receive
        /* renamed from: X */
        public void mo819X(@NotNull Closed<?> closed) {
            if (this.f21284j.mo314e()) {
                int i = this.f21286l;
                if (i == 0) {
                    this.f21284j.mo311u(closed.m851d0());
                } else if (i != 1) {
                    if (i == 2) {
                        Function2<Object, Continuation<? super R>, Object> function2 = this.f21285k;
                        ValueOrClosed.Companion companion = ValueOrClosed.f22234b;
                        ValueOrClosed.Closed closed2 = new ValueOrClosed.Closed(closed.f22187i);
                        ValueOrClosed.m792b(closed2);
                        ContinuationKt.m1934b(function2, ValueOrClosed.m793a(closed2), this.f21284j.mo312k());
                    }
                } else if (closed.f22187i == null) {
                    ContinuationKt.m1934b(this.f21285k, null, this.f21284j.mo312k());
                } else {
                    this.f21284j.mo311u(closed.m851d0());
                }
            }
        }

        @Override // kotlinx.coroutines.DisposableHandle
        public void dispose() {
            if (mo521S()) {
                this.f21283i.m1069a0();
            }
        }

        @Override // kotlinx.coroutines.channels.ReceiveOrClosed
        /* renamed from: n */
        public void mo811n(E e) {
            Function2<Object, Continuation<? super R>, Object> function2 = this.f21285k;
            Object obj = e;
            if (this.f21286l == 2) {
                ValueOrClosed.Companion companion = ValueOrClosed.f22234b;
                ValueOrClosed.m792b(e);
                obj = ValueOrClosed.m793a(e);
            }
            ContinuationKt.m1934b(function2, obj, this.f21284j.mo312k());
        }

        @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
        @NotNull
        public String toString() {
            return "ReceiveSelect@" + DebugStringsKt.m1303b(this) + '[' + this.f21284j + ",receiveMode=" + this.f21286l + ']';
        }

        @Override // kotlinx.coroutines.channels.ReceiveOrClosed
        @Nullable
        /* renamed from: z */
        public Symbol mo810z(E e, @Nullable LockFreeLinkedListNode.PrepareOp prepareOp) {
            return (Symbol) this.f21284j.mo315b(prepareOp);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0082\u0004\u0018��2\u00020\u0001B\u0013\u0012\n\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\n¢\u0006\u0004\b\r\u0010\u000eJ\u001a\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0096\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tR\u001a\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\n8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u000f"}, d2 = {"Lkotlinx/coroutines/channels/AbstractChannel$RemoveReceiveOnCancel;", "Lkotlinx/coroutines/CancelHandler;", "", "cause", "", "invoke", "(Ljava/lang/Throwable;)V", "", "toString", "()Ljava/lang/String;", "Lkotlinx/coroutines/channels/Receive;", "receive", "Lkotlinx/coroutines/channels/Receive;", "<init>", "(Lkotlinx/coroutines/channels/AbstractChannel;Lkotlinx/coroutines/channels/Receive;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/AbstractChannel$RemoveReceiveOnCancel.class */
    public final class RemoveReceiveOnCancel extends CancelHandler {

        /* renamed from: f */
        private final Receive<?> f21287f;

        public RemoveReceiveOnCancel(@NotNull Receive<?> receive) {
            this.f21287f = receive;
        }

        @Override // kotlinx.coroutines.CancelHandlerBase
        /* renamed from: b */
        public void mo295b(@Nullable Throwable th) {
            if (this.f21287f.mo521S()) {
                AbstractChannel.this.m1069a0();
            }
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
            mo295b(th);
            return Unit.f20447a;
        }

        @NotNull
        public String toString() {
            return "RemoveReceiveOnCancel[" + this.f21287f + ']';
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Metadata(bv = {1, 0, 3}, d1 = {"��*\n\u0002\u0018\u0002\n��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0004\u0018��*\u0004\b\u0001\u0010\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010J\u0019\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0014¢\u0006\u0004\b\u0006\u0010\u0007J\u001d\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\u0010\n\u001a\u00060\bj\u0002`\tH\u0016¢\u0006\u0004\b\u000b\u0010\f¨\u0006\u0011"}, d2 = {"Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc;", "E", "kotlinx/coroutines/internal/LockFreeLinkedListNode$RemoveFirstDesc", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "affected", "", "failure", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Ljava/lang/Object;", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;", "Lkotlinx/coroutines/internal/PrepareOp;", "prepareOp", "onPrepare", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)Ljava/lang/Object;", "Lkotlinx/coroutines/internal/LockFreeLinkedListHead;", "queue", "<init>", "(Lkotlinx/coroutines/internal/LockFreeLinkedListHead;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/AbstractChannel$TryPollDesc.class */
    public static final class TryPollDesc<E> extends LockFreeLinkedListNode.RemoveFirstDesc<Send> {
        public TryPollDesc(@NotNull LockFreeLinkedListHead lockFreeLinkedListHead) {
            super(lockFreeLinkedListHead);
        }

        @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode.RemoveFirstDesc, kotlinx.coroutines.internal.LockFreeLinkedListNode.AbstractAtomicDesc
        @Nullable
        /* renamed from: e */
        protected Object mo512e(@NotNull LockFreeLinkedListNode lockFreeLinkedListNode) {
            boolean z = lockFreeLinkedListNode instanceof Closed;
            Object obj = lockFreeLinkedListNode;
            if (!z) {
                obj = !(lockFreeLinkedListNode instanceof Send) ? AbstractChannelKt.f21300c : null;
            }
            return obj;
        }

        @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode.AbstractAtomicDesc
        @Nullable
        /* renamed from: j */
        public Object mo515j(@NotNull LockFreeLinkedListNode.PrepareOp prepareOp) {
            LockFreeLinkedListNode lockFreeLinkedListNode = prepareOp.f23920a;
            if (lockFreeLinkedListNode != null) {
                Symbol a0 = ((Send) lockFreeLinkedListNode).mo796a0(prepareOp);
                if (a0 == null) {
                    return LockFreeLinkedList_commonKt.f23927a;
                }
                Object obj = AtomicKt.f23891b;
                if (a0 == obj) {
                    return obj;
                }
                if (!DebugKt.m1308a()) {
                    return null;
                }
                if (a0 == CancellableContinuationImplKt.f21113a) {
                    return null;
                }
                throw new AssertionError();
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlinx.coroutines.channels.Send");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: S */
    public final boolean m1073S(Receive<? super E> receive) {
        boolean T = mo839T(receive);
        if (T) {
            m1068b0();
        }
        return T;
    }

    /* renamed from: U */
    private final <R> boolean m1072U(SelectInstance<? super R> selectInstance, Function2<Object, ? super Continuation<? super R>, ? extends Object> function2, int i) {
        ReceiveSelect receiveSelect = new ReceiveSelect(this, selectInstance, function2, i);
        boolean S = m1073S(receiveSelect);
        if (S) {
            selectInstance.mo316A(receiveSelect);
        }
        return S;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f0 */
    public final <R> void m1066f0(SelectInstance<? super R> selectInstance, int i, Function2<Object, ? super Continuation<? super R>, ? extends Object> function2) {
        while (!selectInstance.mo313j()) {
            if (!m1070Y()) {
                Object d0 = mo836d0(selectInstance);
                if (d0 != SelectKt.m306d()) {
                    if (!(d0 == AbstractChannelKt.f21300c || d0 == AtomicKt.f23891b)) {
                        m1064h0(function2, selectInstance, i, d0);
                    }
                } else {
                    return;
                }
            } else if (m1072U(selectInstance, function2, i)) {
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g0 */
    public final void m1065g0(CancellableContinuation<?> cancellableContinuation, Receive<?> receive) {
        cancellableContinuation.mo1351p(new RemoveReceiveOnCancel(receive));
    }

    /* renamed from: h0 */
    private final <R> void m1064h0(Function2<Object, ? super Continuation<? super R>, ? extends Object> function2, SelectInstance<? super R> selectInstance, int i, Object obj) {
        boolean z = obj instanceof Closed;
        if (z) {
            if (i == 0) {
                throw StackTraceRecoveryKt.m446k(((Closed) obj).m851d0());
            } else if (i == 1) {
                Closed closed = (Closed) obj;
                if (closed.f22187i != null) {
                    throw StackTraceRecoveryKt.m446k(closed.m851d0());
                } else if (selectInstance.mo314e()) {
                    UndispatchedKt.m395d(function2, null, selectInstance.mo312k());
                }
            } else if (i == 2 && selectInstance.mo314e()) {
                ValueOrClosed.Companion companion = ValueOrClosed.f22234b;
                ValueOrClosed.Closed closed2 = new ValueOrClosed.Closed(((Closed) obj).f22187i);
                ValueOrClosed.m792b(closed2);
                UndispatchedKt.m395d(function2, ValueOrClosed.m793a(closed2), selectInstance.mo312k());
            }
        } else if (i == 2) {
            ValueOrClosed.Companion companion2 = ValueOrClosed.f22234b;
            if (z) {
                obj = new ValueOrClosed.Closed(((Closed) obj).f22187i);
                ValueOrClosed.m792b(obj);
            } else {
                ValueOrClosed.m792b(obj);
            }
            UndispatchedKt.m395d(function2, ValueOrClosed.m793a(obj), selectInstance.mo312k());
        } else {
            UndispatchedKt.m395d(function2, obj, selectInstance.mo312k());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.channels.AbstractSendChannel
    @Nullable
    /* renamed from: L */
    public ReceiveOrClosed<E> mo1051L() {
        ReceiveOrClosed<E> L = super.mo1051L();
        if (L != null && !(L instanceof Closed)) {
            m1069a0();
        }
        return L;
    }

    /* renamed from: Q */
    public final boolean m1075Q(@Nullable Throwable th) {
        boolean t = mo802t(th);
        mo838Z(t);
        return t;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    /* renamed from: R */
    public final TryPollDesc<E> m1074R() {
        return new TryPollDesc<>(m1042o());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: T */
    public boolean mo839T(@NotNull final Receive<? super E> receive) {
        boolean z;
        LockFreeLinkedListNode O;
        if (mo808W()) {
            LockFreeLinkedListNode o = m1042o();
            do {
                O = o.m525O();
                if (!(!(O instanceof Send))) {
                    z = false;
                    break;
                }
            } while (!O.m532H(receive, o));
            z = true;
        } else {
            LockFreeLinkedListNode o2 = m1042o();
            LockFreeLinkedListNode.CondAddOp abstractChannel$enqueueReceiveInternal$$inlined$addLastIfPrevAndIf$1 = new LockFreeLinkedListNode.CondAddOp(receive, receive, this) { // from class: kotlinx.coroutines.channels.AbstractChannel$enqueueReceiveInternal$$inlined$addLastIfPrevAndIf$1

                /* renamed from: d */
                final /* synthetic */ AbstractChannel f21289d;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(receive);
                    this.f21289d = this;
                }

                @Nullable
                /* renamed from: j */
                public Object mo280h(@NotNull LockFreeLinkedListNode lockFreeLinkedListNode) {
                    return this.f21289d.mo807X() ? null : LockFreeLinkedListKt.m539a();
                }
            };
            while (true) {
                LockFreeLinkedListNode O2 = o2.m525O();
                if (!(O2 instanceof Send)) {
                    int W = O2.m517W(receive, o2, abstractChannel$enqueueReceiveInternal$$inlined$addLastIfPrevAndIf$1);
                    if (W == 1) {
                        break;
                    }
                    z = false;
                    if (W == 2) {
                        break;
                    }
                } else {
                    z = false;
                    break;
                }
            }
            z = true;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: V */
    public final boolean m1071V() {
        return m1042o().m526N() instanceof ReceiveOrClosed;
    }

    /* renamed from: W */
    protected abstract boolean mo808W();

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: X */
    public abstract boolean mo807X();

    /* renamed from: Y */
    protected final boolean m1070Y() {
        return !(m1042o().m526N() instanceof Send) && mo807X();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: Z */
    public void mo838Z(boolean z) {
        Closed<?> m = m1043m();
        if (m != null) {
            Object b = InlineList.m546b(null, 1, null);
            while (true) {
                LockFreeLinkedListNode O = m.m525O();
                if (O instanceof LockFreeLinkedListHead) {
                    if (b == null) {
                        return;
                    }
                    if (!(b instanceof ArrayList)) {
                        ((Send) b).mo797Z(m);
                        return;
                    } else if (b != null) {
                        ArrayList arrayList = (ArrayList) b;
                        for (int size = arrayList.size() - 1; size >= 0; size--) {
                            ((Send) arrayList.get(size)).mo797Z(m);
                        }
                        return;
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.collections.ArrayList<E> /* = java.util.ArrayList<E> */");
                    }
                } else if (DebugKt.m1308a() && !(O instanceof Send)) {
                    throw new AssertionError();
                } else if (!O.mo521S()) {
                    O.m524P();
                } else if (O != null) {
                    b = InlineList.m543e(b, (Send) O);
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type kotlinx.coroutines.channels.Send");
                }
            }
        } else {
            throw new IllegalStateException("Cannot happen".toString());
        }
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    /* renamed from: a */
    public final void mo818a(@Nullable CancellationException cancellationException) {
        if (cancellationException == null) {
            cancellationException = new CancellationException(DebugStringsKt.m1304a(this) + " was cancelled");
        }
        m1075Q(cancellationException);
    }

    /* renamed from: a0 */
    protected void m1069a0() {
    }

    /* renamed from: b0 */
    protected void m1068b0() {
    }

    @Nullable
    /* renamed from: c0 */
    protected Object mo837c0() {
        Send M;
        Symbol a0;
        do {
            M = m1050M();
            if (M == null) {
                return AbstractChannelKt.f21300c;
            }
            a0 = M.mo796a0(null);
        } while (a0 == null);
        if (DebugKt.m1308a()) {
            if (!(a0 == CancellableContinuationImplKt.f21113a)) {
                throw new AssertionError();
            }
        }
        M.mo799X();
        return M.mo798Y();
    }

    @Nullable
    /* renamed from: d0 */
    protected Object mo836d0(@NotNull SelectInstance<?> selectInstance) {
        TryPollDesc<E> R = m1074R();
        Object v = selectInstance.mo310v(R);
        if (v != null) {
            return v;
        }
        R.m504n().mo799X();
        return R.m504n().mo798Y();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    /* renamed from: e0 */
    final /* synthetic */ <R> Object m1067e0(int i, @NotNull Continuation<? super R> continuation) {
        Continuation c;
        Object d;
        c = IntrinsicsKt__IntrinsicsJvmKt.m1921c(continuation);
        CancellableContinuationImpl b = CancellableContinuationKt.m1339b(c);
        if (b != null) {
            ReceiveElement receiveElement = new ReceiveElement(b, i);
            while (true) {
                if (!m1073S(receiveElement)) {
                    Object c0 = mo837c0();
                    if (!(c0 instanceof Closed)) {
                        if (c0 != AbstractChannelKt.f21300c) {
                            Object Y = receiveElement.m1058Y(c0);
                            Result.Companion companion = Result.f20418g;
                            Result.m2481b(Y);
                            b.resumeWith(Y);
                            break;
                        }
                    } else {
                        receiveElement.mo819X((Closed) c0);
                        break;
                    }
                } else {
                    m1065g0(b, receiveElement);
                    break;
                }
            }
            Object t = b.m1347t();
            d = IntrinsicsKt__IntrinsicsKt.m1920d();
            if (t == d) {
                DebugProbesKt.m1904c(continuation);
            }
            return t;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Any?>");
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    /* renamed from: g */
    public boolean mo817g() {
        return m1044l() != null && mo807X();
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @NotNull
    /* renamed from: h */
    public final SelectClause1<E> mo816h() {
        return new SelectClause1<E>() { // from class: kotlinx.coroutines.channels.AbstractChannel$onReceive$1
            @Override // kotlinx.coroutines.selects.SelectClause1
            /* renamed from: f */
            public <R> void mo317f(@NotNull SelectInstance<? super R> selectInstance, @NotNull Function2<? super E, ? super Continuation<? super R>, ? extends Object> function2) {
                AbstractChannel abstractChannel = AbstractChannel.this;
                if (function2 != 0) {
                    abstractChannel.m1066f0(selectInstance, 0, function2);
                    return;
                }
                throw new NullPointerException("null cannot be cast to non-null type suspend (kotlin.Any?) -> R");
            }
        };
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @NotNull
    public final ChannelIterator<E> iterator() {
        return new Itr(this);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @NotNull
    /* renamed from: j */
    public final SelectClause1<E> mo815j() {
        return new SelectClause1<E>() { // from class: kotlinx.coroutines.channels.AbstractChannel$onReceiveOrNull$1
            @Override // kotlinx.coroutines.selects.SelectClause1
            /* renamed from: f */
            public <R> void mo317f(@NotNull SelectInstance<? super R> selectInstance, @NotNull Function2<? super E, ? super Continuation<? super R>, ? extends Object> function2) {
                AbstractChannel abstractChannel = AbstractChannel.this;
                if (function2 != 0) {
                    abstractChannel.m1066f0(selectInstance, 1, function2);
                    return;
                }
                throw new NullPointerException("null cannot be cast to non-null type suspend (kotlin.Any?) -> R");
            }
        };
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006b  */
    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @org.jetbrains.annotations.Nullable
    /* renamed from: x */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object mo814x(@org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super kotlinx.coroutines.channels.ValueOrClosed<? extends E>> r6) {
        /*
            Method dump skipped, instructions count: 211
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.AbstractChannel.mo814x(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
