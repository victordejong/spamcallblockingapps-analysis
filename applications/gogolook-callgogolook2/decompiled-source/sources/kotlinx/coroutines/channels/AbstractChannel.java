package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import com.appsflyer.AppsFlyerProperties;
import java.util.ArrayList;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlinx.coroutines.CancelHandler;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CancellableContinuationImplKt;
import kotlinx.coroutines.CancellableContinuationKt;
import kotlinx.coroutines.DebugKt;
import kotlinx.coroutines.DebugStringsKt;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.channels.ChannelIterator;
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
import p459j.p460a.p541n0.C13032a;
import p626l.C14979k;
import p626l.C14982l;
import p626l.C14986p;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.C15048f;
import p626l.p634w.p635j.C15059b;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15069e;
import p626l.p634w.p636k.p637a.C15066b;
import p626l.p634w.p636k.p637a.C15072h;
import p626l.p641z.p642c.AbstractC15122p;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0080\u0001\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\n\b \u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003:\u0006LMNOPQB\u0005¢\u0006\u0002\u0010\u0004J\u0012\u0010\u0017\u001a\u00020\u00062\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0007J\u0016\u0010\u0017\u001a\u00020\u001a2\u000e\u0010\u0018\u001a\n\u0018\u00010\u001bj\u0004\u0018\u0001`\u001cJ\u0017\u0010\u001d\u001a\u00020\u00062\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H��¢\u0006\u0002\b\u001eJ\u000e\u0010\u001f\u001a\b\u0012\u0004\u0012\u00028��0 H\u0004J\u0016\u0010!\u001a\u00020\u00062\f\u0010\"\u001a\b\u0012\u0004\u0012\u00028��0#H\u0002J\u0016\u0010$\u001a\u00020\u00062\f\u0010\"\u001a\b\u0012\u0004\u0012\u00028��0#H\u0014JR\u0010%\u001a\u00020\u0006\"\u0004\b\u0001\u0010&2\f\u0010'\u001a\b\u0012\u0004\u0012\u0002H&0(2$\u0010)\u001a \b\u0001\u0012\u0006\u0012\u0004\u0018\u00010+\u0012\n\u0012\b\u0012\u0004\u0012\u0002H&0,\u0012\u0006\u0012\u0004\u0018\u00010+0*2\u0006\u0010-\u001a\u00020.H\u0002ø\u0001��¢\u0006\u0002\u0010/J\u000f\u00100\u001a\b\u0012\u0004\u0012\u00028��01H\u0086\u0002J\u0010\u00102\u001a\u00020\u001a2\u0006\u00103\u001a\u00020\u0006H\u0014J\b\u00104\u001a\u00020\u001aH\u0014J\b\u00105\u001a\u00020\u001aH\u0014J\r\u00106\u001a\u0004\u0018\u00018��¢\u0006\u0002\u00107J\n\u00108\u001a\u0004\u0018\u00010+H\u0014J\u0016\u00109\u001a\u0004\u0018\u00010+2\n\u0010'\u001a\u0006\u0012\u0002\b\u00030(H\u0014J\u0011\u0010\"\u001a\u00028��H\u0086@ø\u0001��¢\u0006\u0002\u0010:J\u001a\u0010;\u001a\b\u0012\u0004\u0012\u00028��0\u0013H\u0086@ø\u0001��ø\u0001��¢\u0006\u0002\u0010:J\u0013\u0010<\u001a\u0004\u0018\u00018��H\u0086@ø\u0001��¢\u0006\u0002\u0010:J\u0019\u0010=\u001a\u0004\u0018\u00018��2\b\u0010>\u001a\u0004\u0018\u00010+H\u0002¢\u0006\u0002\u0010?J\u001f\u0010@\u001a\u0002H&\"\u0004\b\u0001\u0010&2\u0006\u0010-\u001a\u00020.H\u0082@ø\u0001��¢\u0006\u0002\u0010AJR\u0010B\u001a\u00020\u001a\"\u0004\b\u0001\u0010&2\f\u0010'\u001a\b\u0012\u0004\u0012\u0002H&0(2\u0006\u0010-\u001a\u00020.2$\u0010)\u001a \b\u0001\u0012\u0006\u0012\u0004\u0018\u00010+\u0012\n\u0012\b\u0012\u0004\u0012\u0002H&0,\u0012\u0006\u0012\u0004\u0018\u00010+0*H\u0002ø\u0001��¢\u0006\u0002\u0010CJ \u0010D\u001a\u00020\u001a2\n\u0010E\u001a\u0006\u0012\u0002\b\u00030F2\n\u0010\"\u001a\u0006\u0012\u0002\b\u00030#H\u0002J\u0010\u0010G\u001a\n\u0012\u0004\u0012\u00028��\u0018\u00010HH\u0014JX\u0010I\u001a\u00020\u001a\"\u0004\b\u0001\u0010&* \b\u0001\u0012\u0006\u0012\u0004\u0018\u00010+\u0012\n\u0012\b\u0012\u0004\u0012\u0002H&0,\u0012\u0006\u0012\u0004\u0018\u00010+0*2\f\u0010'\u001a\b\u0012\u0004\u0012\u0002H&0(2\u0006\u0010-\u001a\u00020.2\b\u0010J\u001a\u0004\u0018\u00010+H\u0002ø\u0001��¢\u0006\u0002\u0010KR\u0014\u0010\u0005\u001a\u00020\u00068DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0012\u0010\t\u001a\u00020\u0006X¤\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\bR\u0012\u0010\n\u001a\u00020\u0006X¤\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\bR\u0014\u0010\u000b\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\bR\u0014\u0010\f\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\bR\u0014\u0010\r\u001a\u00020\u00068DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\bR\u0017\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028��0\u000f8F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R \u0010\u0012\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u00130\u000f8Fø\u0001��¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0011R\u0019\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018��0\u000f8F¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0011\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006R"}, m815d2 = {"Lkotlinx/coroutines/channels/AbstractChannel;", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/AbstractSendChannel;", "Lkotlinx/coroutines/channels/Channel;", "()V", "hasReceiveOrClosed", "", "getHasReceiveOrClosed", "()Z", "isBufferAlwaysEmpty", "isBufferEmpty", "isClosedForReceive", "isEmpty", "isEmptyImpl", "onReceive", "Lkotlinx/coroutines/selects/SelectClause1;", "getOnReceive", "()Lkotlinx/coroutines/selects/SelectClause1;", "onReceiveOrClosed", "Lkotlinx/coroutines/channels/ValueOrClosed;", "getOnReceiveOrClosed", "onReceiveOrNull", "getOnReceiveOrNull", "cancel", "cause", "", "", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "cancelInternal", "cancelInternal$kotlinx_coroutines_core", "describeTryPoll", "Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc;", "enqueueReceive", "receive", "Lkotlinx/coroutines/channels/Receive;", "enqueueReceiveInternal", "enqueueReceiveSelect", "R", "select", "Lkotlinx/coroutines/selects/SelectInstance;", "block", "Lkotlin/Function2;", "", "Lkotlin/coroutines/Continuation;", "receiveMode", "", "(Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;I)Z", "iterator", "Lkotlinx/coroutines/channels/ChannelIterator;", "onCancelIdempotent", "wasClosed", "onReceiveDequeued", "onReceiveEnqueued", "poll", "()Ljava/lang/Object;", "pollInternal", "pollSelectInternal", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "receiveOrClosed", "receiveOrNull", "receiveOrNullResult", "result", "(Ljava/lang/Object;)Ljava/lang/Object;", "receiveSuspend", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "registerSelectReceiveMode", "(Lkotlinx/coroutines/selects/SelectInstance;ILkotlin/jvm/functions/Function2;)V", "removeReceiveOnCancel", "cont", "Lkotlinx/coroutines/CancellableContinuation;", "takeFirstReceiveOrPeekClosed", "Lkotlinx/coroutines/channels/ReceiveOrClosed;", "tryStartBlockUnintercepted", C13032a.f29462d, "(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/selects/SelectInstance;ILjava/lang/Object;)V", "Itr", "ReceiveElement", "ReceiveHasNext", "ReceiveSelect", "RemoveReceiveOnCancel", "TryPollDesc", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/channels/AbstractChannel.class */
public abstract class AbstractChannel<E> extends AbstractSendChannel<E> implements Channel<E> {

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��$\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010��\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0002\u0018��*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u0013\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004¢\u0006\u0002\u0010\u0005J\u0011\u0010\u000e\u001a\u00020\u000fH\u0096Bø\u0001��¢\u0006\u0002\u0010\u0010J\u0012\u0010\u0011\u001a\u00020\u000f2\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0002J\u0011\u0010\u0012\u001a\u00020\u000fH\u0082@ø\u0001��¢\u0006\u0002\u0010\u0010J\u000e\u0010\u0013\u001a\u00028\u0001H\u0096\u0002¢\u0006\u0002\u0010\u000bR\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007R\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0014"}, m815d2 = {"Lkotlinx/coroutines/channels/AbstractChannel$Itr;", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/ChannelIterator;", AppsFlyerProperties.CHANNEL, "Lkotlinx/coroutines/channels/AbstractChannel;", "(Lkotlinx/coroutines/channels/AbstractChannel;)V", "getChannel", "()Lkotlinx/coroutines/channels/AbstractChannel;", "result", "", "getResult", "()Ljava/lang/Object;", "setResult", "(Ljava/lang/Object;)V", "hasNext", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "hasNextResult", "hasNextSuspend", "next", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
    /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/channels/AbstractChannel$Itr.class */
    public static final class Itr<E> implements ChannelIterator<E> {
        public final AbstractChannel<E> channel;
        public Object result = AbstractChannelKt.POLL_FAILED;

        public Itr(AbstractChannel<E> abstractChannel) {
            this.channel = abstractChannel;
        }

        private final boolean hasNextResult(Object obj) {
            if (!(obj instanceof Closed)) {
                return true;
            }
            Closed closed = (Closed) obj;
            if (closed.closeCause == null) {
                return false;
            }
            throw StackTraceRecoveryKt.recoverStackTrace(closed.getReceiveException());
        }

        public final AbstractChannel<E> getChannel() {
            return this.channel;
        }

        public final Object getResult() {
            return this.result;
        }

        @Override // kotlinx.coroutines.channels.ChannelIterator
        public Object hasNext(AbstractC15044d<? super Boolean> dVar) {
            Object obj = this.result;
            if (obj != AbstractChannelKt.POLL_FAILED) {
                return C15066b.m474a(hasNextResult(obj));
            }
            this.result = this.channel.pollInternal();
            Object obj2 = this.result;
            return obj2 != AbstractChannelKt.POLL_FAILED ? C15066b.m474a(hasNextResult(obj2)) : hasNextSuspend(dVar);
        }

        public final /* synthetic */ Object hasNextSuspend(AbstractC15044d<? super Boolean> dVar) {
            CancellableContinuationImpl orCreateCancellableContinuation = CancellableContinuationKt.getOrCreateCancellableContinuation(C15059b.m481a(dVar));
            ReceiveHasNext receiveHasNext = new ReceiveHasNext(this, orCreateCancellableContinuation);
            while (true) {
                if (!getChannel().enqueueReceive(receiveHasNext)) {
                    Object pollInternal = getChannel().pollInternal();
                    setResult(pollInternal);
                    if (!(pollInternal instanceof Closed)) {
                        if (pollInternal != AbstractChannelKt.POLL_FAILED) {
                            Boolean a = C15066b.m474a(true);
                            C14979k.C14980a aVar = C14979k.f33013a;
                            C14979k.m657a(a);
                            orCreateCancellableContinuation.resumeWith(a);
                            break;
                        }
                    } else {
                        Closed closed = (Closed) pollInternal;
                        if (closed.closeCause == null) {
                            Boolean a2 = C15066b.m474a(false);
                            C14979k.C14980a aVar2 = C14979k.f33013a;
                            C14979k.m657a(a2);
                            orCreateCancellableContinuation.resumeWith(a2);
                        } else {
                            Throwable receiveException = closed.getReceiveException();
                            C14979k.C14980a aVar3 = C14979k.f33013a;
                            Object a3 = C14982l.m652a(receiveException);
                            C14979k.m657a(a3);
                            orCreateCancellableContinuation.resumeWith(a3);
                        }
                    }
                } else {
                    getChannel().removeReceiveOnCancel(orCreateCancellableContinuation, receiveHasNext);
                    break;
                }
            }
            Object result = orCreateCancellableContinuation.getResult();
            if (result == C15064c.m478a()) {
                C15072h.m462c(dVar);
            }
            return result;
        }

        @Override // kotlinx.coroutines.channels.ChannelIterator
        public E next() {
            E e = (E) this.result;
            if (!(e instanceof Closed)) {
                Object obj = AbstractChannelKt.POLL_FAILED;
                if (e != obj) {
                    this.result = obj;
                    return e;
                }
                throw new IllegalStateException("'hasNext' should be called prior to 'next' invocation");
            }
            throw StackTraceRecoveryKt.recoverStackTrace(((Closed) e).getReceiveException());
        }

        @Override // kotlinx.coroutines.channels.ChannelIterator
        public /* synthetic */ Object next(AbstractC15044d<? super E> dVar) {
            return ChannelIterator.DefaultImpls.next(this, dVar);
        }

        public final void setResult(Object obj) {
            this.result = obj;
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��B\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0002\u0018��*\u0006\b\u0001\u0010\u0001 ��2\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u001d\u0012\u000e\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0015\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010\fJ\u0014\u0010\r\u001a\u00020\n2\n\u0010\u000e\u001a\u0006\u0012\u0002\b\u00030\u000fH\u0016J\u0015\u0010\u0010\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000b\u001a\u00028\u0001¢\u0006\u0002\u0010\u0011J\b\u0010\u0012\u001a\u00020\u0013H\u0016J!\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u000b\u001a\u00028\u00012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016¢\u0006\u0002\u0010\u0018R\u0018\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0019"}, m815d2 = {"Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElement;", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/Receive;", "cont", "Lkotlinx/coroutines/CancellableContinuation;", "", "receiveMode", "", "(Lkotlinx/coroutines/CancellableContinuation;I)V", "completeResumeReceive", "", C13032a.f29462d, "(Ljava/lang/Object;)V", "resumeReceiveClosed", "closed", "Lkotlinx/coroutines/channels/Closed;", "resumeValue", "(Ljava/lang/Object;)Ljava/lang/Object;", "toString", "", "tryResumeReceive", "Lkotlinx/coroutines/internal/Symbol;", "otherOp", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;", "(Ljava/lang/Object;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)Lkotlinx/coroutines/internal/Symbol;", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
    /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/channels/AbstractChannel$ReceiveElement.class */
    public static final class ReceiveElement<E> extends Receive<E> {
        public final CancellableContinuation<Object> cont;
        public final int receiveMode;

        public ReceiveElement(CancellableContinuation<Object> cancellableContinuation, int i) {
            this.cont = cancellableContinuation;
            this.receiveMode = i;
        }

        @Override // kotlinx.coroutines.channels.ReceiveOrClosed
        public void completeResumeReceive(E e) {
            this.cont.completeResume(CancellableContinuationImplKt.RESUME_TOKEN);
        }

        @Override // kotlinx.coroutines.channels.Receive
        public void resumeReceiveClosed(Closed<?> closed) {
            if (this.receiveMode == 1 && closed.closeCause == null) {
                CancellableContinuation<Object> cancellableContinuation = this.cont;
                C14979k.C14980a aVar = C14979k.f33013a;
                C14979k.m657a(null);
                cancellableContinuation.resumeWith(null);
            } else if (this.receiveMode == 2) {
                CancellableContinuation<Object> cancellableContinuation2 = this.cont;
                ValueOrClosed.Companion companion = ValueOrClosed.Companion;
                ValueOrClosed valueOrClosed = ValueOrClosed.m41839boximpl(ValueOrClosed.m41840constructorimpl(new ValueOrClosed.Closed(closed.closeCause)));
                C14979k.C14980a aVar2 = C14979k.f33013a;
                C14979k.m657a(valueOrClosed);
                cancellableContinuation2.resumeWith(valueOrClosed);
            } else {
                CancellableContinuation<Object> cancellableContinuation3 = this.cont;
                Throwable receiveException = closed.getReceiveException();
                C14979k.C14980a aVar3 = C14979k.f33013a;
                Object a = C14982l.m652a(receiveException);
                C14979k.m657a(a);
                cancellableContinuation3.resumeWith(a);
            }
        }

        public final Object resumeValue(E e) {
            if (this.receiveMode == 2) {
                ValueOrClosed.Companion companion = ValueOrClosed.Companion;
                e = (E) ValueOrClosed.m41839boximpl(ValueOrClosed.m41840constructorimpl(e));
            }
            return e;
        }

        @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
        public String toString() {
            return "ReceiveElement@" + DebugStringsKt.getHexAddress(this) + "[receiveMode=" + this.receiveMode + ']';
        }

        @Override // kotlinx.coroutines.channels.ReceiveOrClosed
        public Symbol tryResumeReceive(E e, LockFreeLinkedListNode.PrepareOp prepareOp) {
            Object tryResume = this.cont.tryResume(resumeValue(e), prepareOp != null ? prepareOp.desc : null);
            if (tryResume == null) {
                return null;
            }
            if (DebugKt.getASSERTIONS_ENABLED()) {
                if (!(tryResume == CancellableContinuationImplKt.RESUME_TOKEN)) {
                    throw new AssertionError();
                }
            }
            if (prepareOp != null) {
                prepareOp.finishPrepare();
            }
            return CancellableContinuationImplKt.RESUME_TOKEN;
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��@\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0002\u0018��*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B!\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0002\u0010\bJ\u0015\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010\fJ\u0014\u0010\r\u001a\u00020\n2\n\u0010\u000e\u001a\u0006\u0012\u0002\b\u00030\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016J!\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u000b\u001a\u00028\u00012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016¢\u0006\u0002\u0010\u0016R\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0017"}, m815d2 = {"Lkotlinx/coroutines/channels/AbstractChannel$ReceiveHasNext;", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/Receive;", "iterator", "Lkotlinx/coroutines/channels/AbstractChannel$Itr;", "cont", "Lkotlinx/coroutines/CancellableContinuation;", "", "(Lkotlinx/coroutines/channels/AbstractChannel$Itr;Lkotlinx/coroutines/CancellableContinuation;)V", "completeResumeReceive", "", C13032a.f29462d, "(Ljava/lang/Object;)V", "resumeReceiveClosed", "closed", "Lkotlinx/coroutines/channels/Closed;", "toString", "", "tryResumeReceive", "Lkotlinx/coroutines/internal/Symbol;", "otherOp", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;", "(Ljava/lang/Object;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)Lkotlinx/coroutines/internal/Symbol;", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
    /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/channels/AbstractChannel$ReceiveHasNext.class */
    public static final class ReceiveHasNext<E> extends Receive<E> {
        public final CancellableContinuation<Boolean> cont;
        public final Itr<E> iterator;

        /* JADX WARN: Multi-variable type inference failed */
        public ReceiveHasNext(Itr<E> itr, CancellableContinuation<? super Boolean> cancellableContinuation) {
            this.iterator = itr;
            this.cont = cancellableContinuation;
        }

        @Override // kotlinx.coroutines.channels.ReceiveOrClosed
        public void completeResumeReceive(E e) {
            this.iterator.setResult(e);
            this.cont.completeResume(CancellableContinuationImplKt.RESUME_TOKEN);
        }

        @Override // kotlinx.coroutines.channels.Receive
        public void resumeReceiveClosed(Closed<?> closed) {
            Object obj;
            if (closed.closeCause == null) {
                obj = CancellableContinuation.DefaultImpls.tryResume$default(this.cont, false, null, 2, null);
            } else {
                CancellableContinuation<Boolean> cancellableContinuation = this.cont;
                Throwable receiveException = closed.getReceiveException();
                CancellableContinuation<Boolean> cancellableContinuation2 = this.cont;
                Throwable th = receiveException;
                if (DebugKt.getRECOVER_STACK_TRACES()) {
                    th = !(cancellableContinuation2 instanceof AbstractC15069e) ? receiveException : StackTraceRecoveryKt.recoverFromStackFrame(receiveException, (AbstractC15069e) cancellableContinuation2);
                }
                obj = cancellableContinuation.tryResumeWithException(th);
            }
            if (obj != null) {
                this.iterator.setResult(closed);
                this.cont.completeResume(obj);
            }
        }

        @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
        public String toString() {
            return "ReceiveHasNext@" + DebugStringsKt.getHexAddress(this);
        }

        @Override // kotlinx.coroutines.channels.ReceiveOrClosed
        public Symbol tryResumeReceive(E e, LockFreeLinkedListNode.PrepareOp prepareOp) {
            boolean z = true;
            Object tryResume = this.cont.tryResume(true, prepareOp != null ? prepareOp.desc : null);
            if (tryResume == null) {
                return null;
            }
            if (DebugKt.getASSERTIONS_ENABLED()) {
                if (tryResume != CancellableContinuationImplKt.RESUME_TOKEN) {
                    z = false;
                }
                if (!z) {
                    throw new AssertionError();
                }
            }
            if (prepareOp != null) {
                prepareOp.finishPrepare();
            }
            return CancellableContinuationImplKt.RESUME_TOKEN;
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��V\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0002\u0018��*\u0004\b\u0001\u0010\u0001*\u0004\b\u0002\u0010\u00022\b\u0012\u0004\u0012\u0002H\u00020\u00032\u00020\u0004BR\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00020\u0006\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00010\b\u0012$\u0010\t\u001a \b\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\f\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\n\u0012\u0006\u0010\r\u001a\u00020\u000eø\u0001��¢\u0006\u0002\u0010\u000fJ\u0015\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00028\u0002H\u0016¢\u0006\u0002\u0010\u0014J\b\u0010\u0015\u001a\u00020\u0012H\u0016J\u0014\u0010\u0016\u001a\u00020\u00122\n\u0010\u0017\u001a\u0006\u0012\u0002\b\u00030\u0018H\u0016J\b\u0010\u0019\u001a\u00020\u001aH\u0016J!\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u0013\u001a\u00028\u00022\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016¢\u0006\u0002\u0010\u001fR3\u0010\t\u001a \b\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\f\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\n8\u0006X\u0087\u0004ø\u0001��¢\u0006\u0004\n\u0002\u0010\u0010R\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0010\u0010\r\u001a\u00020\u000e8\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006 "}, m815d2 = {"Lkotlinx/coroutines/channels/AbstractChannel$ReceiveSelect;", "R", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/Receive;", "Lkotlinx/coroutines/DisposableHandle;", AppsFlyerProperties.CHANNEL, "Lkotlinx/coroutines/channels/AbstractChannel;", "select", "Lkotlinx/coroutines/selects/SelectInstance;", "block", "Lkotlin/Function2;", "", "Lkotlin/coroutines/Continuation;", "receiveMode", "", "(Lkotlinx/coroutines/channels/AbstractChannel;Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;I)V", "Lkotlin/jvm/functions/Function2;", "completeResumeReceive", "", C13032a.f29462d, "(Ljava/lang/Object;)V", "dispose", "resumeReceiveClosed", "closed", "Lkotlinx/coroutines/channels/Closed;", "toString", "", "tryResumeReceive", "Lkotlinx/coroutines/internal/Symbol;", "otherOp", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;", "(Ljava/lang/Object;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)Lkotlinx/coroutines/internal/Symbol;", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
    /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/channels/AbstractChannel$ReceiveSelect.class */
    public static final class ReceiveSelect<R, E> extends Receive<E> implements DisposableHandle {
        public final AbstractC15122p<Object, AbstractC15044d<? super R>, Object> block;
        public final AbstractChannel<E> channel;
        public final int receiveMode;
        public final SelectInstance<R> select;

        /* JADX WARN: Multi-variable type inference failed */
        public ReceiveSelect(AbstractChannel<E> abstractChannel, SelectInstance<? super R> selectInstance, AbstractC15122p<Object, ? super AbstractC15044d<? super R>, ? extends Object> pVar, int i) {
            this.channel = abstractChannel;
            this.select = selectInstance;
            this.block = pVar;
            this.receiveMode = i;
        }

        @Override // kotlinx.coroutines.channels.ReceiveOrClosed
        public void completeResumeReceive(E e) {
            AbstractC15122p<Object, AbstractC15044d<? super R>, Object> pVar = this.block;
            Object obj = e;
            if (this.receiveMode == 2) {
                ValueOrClosed.Companion companion = ValueOrClosed.Companion;
                obj = ValueOrClosed.m41839boximpl(ValueOrClosed.m41840constructorimpl(e));
            }
            C15048f.m489a(pVar, obj, this.select.getCompletion());
        }

        @Override // kotlinx.coroutines.DisposableHandle
        public void dispose() {
            if (remove()) {
                this.channel.onReceiveDequeued();
            }
        }

        @Override // kotlinx.coroutines.channels.Receive
        public void resumeReceiveClosed(Closed<?> closed) {
            if (this.select.trySelect()) {
                int i = this.receiveMode;
                if (i == 0) {
                    this.select.resumeSelectWithException(closed.getReceiveException());
                } else if (i != 1) {
                    if (i == 2) {
                        AbstractC15122p<Object, AbstractC15044d<? super R>, Object> pVar = this.block;
                        ValueOrClosed.Companion companion = ValueOrClosed.Companion;
                        C15048f.m489a(pVar, ValueOrClosed.m41839boximpl(ValueOrClosed.m41840constructorimpl(new ValueOrClosed.Closed(closed.closeCause))), this.select.getCompletion());
                    }
                } else if (closed.closeCause == null) {
                    C15048f.m489a(this.block, null, this.select.getCompletion());
                } else {
                    this.select.resumeSelectWithException(closed.getReceiveException());
                }
            }
        }

        @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
        public String toString() {
            return "ReceiveSelect@" + DebugStringsKt.getHexAddress(this) + '[' + this.select + ",receiveMode=" + this.receiveMode + ']';
        }

        @Override // kotlinx.coroutines.channels.ReceiveOrClosed
        public Symbol tryResumeReceive(E e, LockFreeLinkedListNode.PrepareOp prepareOp) {
            return (Symbol) this.select.trySelectOther(prepareOp);
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\u0003\n��\n\u0002\u0010\u000e\n��\b\u0082\u0004\u0018��2\u00020\u0001B\u0011\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003¢\u0006\u0002\u0010\u0004J\u0013\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0096\u0002J\b\u0010\t\u001a\u00020\nH\u0016R\u0012\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000b"}, m815d2 = {"Lkotlinx/coroutines/channels/AbstractChannel$RemoveReceiveOnCancel;", "Lkotlinx/coroutines/CancelHandler;", "receive", "Lkotlinx/coroutines/channels/Receive;", "(Lkotlinx/coroutines/channels/AbstractChannel;Lkotlinx/coroutines/channels/Receive;)V", "invoke", "", "cause", "", "toString", "", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
    /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/channels/AbstractChannel$RemoveReceiveOnCancel.class */
    public final class RemoveReceiveOnCancel extends CancelHandler {
        public final Receive<?> receive;

        public RemoveReceiveOnCancel(Receive<?> receive) {
            this.receive = receive;
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ C14989s invoke(Throwable th) {
            invoke2(th);
            return C14989s.f33022a;
        }

        @Override // kotlinx.coroutines.CancelHandlerBase
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public void invoke2(Throwable th) {
            if (this.receive.remove()) {
                AbstractChannel.this.onReceiveDequeued();
            }
        }

        public String toString() {
            return "RemoveReceiveOnCancel[" + this.receive + ']';
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��4\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b\u0004\u0018��*\u0004\b\u0001\u0010\u00012\u0012\u0012\u0004\u0012\u00020\u00030\u0002j\b\u0012\u0004\u0012\u00020\u0003`\u0004B\r\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0012\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000bH\u0014J\u0016\u0010\f\u001a\u0004\u0018\u00010\t2\n\u0010\r\u001a\u00060\u000ej\u0002`\u000fH\u0016¨\u0006\u0010"}, m815d2 = {"Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc;", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$RemoveFirstDesc;", "Lkotlinx/coroutines/channels/Send;", "Lkotlinx/coroutines/internal/RemoveFirstDesc;", "queue", "Lkotlinx/coroutines/internal/LockFreeLinkedListHead;", "(Lkotlinx/coroutines/internal/LockFreeLinkedListHead;)V", "failure", "", "affected", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "onPrepare", "prepareOp", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;", "Lkotlinx/coroutines/internal/PrepareOp;", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
    /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/channels/AbstractChannel$TryPollDesc.class */
    public static final class TryPollDesc<E> extends LockFreeLinkedListNode.RemoveFirstDesc<Send> {
        public TryPollDesc(LockFreeLinkedListHead lockFreeLinkedListHead) {
            super(lockFreeLinkedListHead);
        }

        @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode.RemoveFirstDesc, kotlinx.coroutines.internal.LockFreeLinkedListNode.AbstractAtomicDesc
        public Object failure(LockFreeLinkedListNode lockFreeLinkedListNode) {
            boolean z = lockFreeLinkedListNode instanceof Closed;
            Object obj = lockFreeLinkedListNode;
            if (!z) {
                obj = !(lockFreeLinkedListNode instanceof Send) ? AbstractChannelKt.POLL_FAILED : null;
            }
            return obj;
        }

        @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode.AbstractAtomicDesc
        public Object onPrepare(LockFreeLinkedListNode.PrepareOp prepareOp) {
            LockFreeLinkedListNode lockFreeLinkedListNode = prepareOp.affected;
            if (lockFreeLinkedListNode != null) {
                Symbol tryResumeSend = ((Send) lockFreeLinkedListNode).tryResumeSend(prepareOp);
                if (tryResumeSend == null) {
                    return LockFreeLinkedList_commonKt.REMOVE_PREPARED;
                }
                Object obj = AtomicKt.RETRY_ATOMIC;
                if (tryResumeSend == obj) {
                    return obj;
                }
                if (!DebugKt.getASSERTIONS_ENABLED()) {
                    return null;
                }
                if (tryResumeSend == CancellableContinuationImplKt.RESUME_TOKEN) {
                    return null;
                }
                throw new AssertionError();
            }
            throw new C14986p("null cannot be cast to non-null type kotlinx.coroutines.channels.Send");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean enqueueReceive(Receive<? super E> receive) {
        boolean enqueueReceiveInternal = enqueueReceiveInternal(receive);
        if (enqueueReceiveInternal) {
            onReceiveEnqueued();
        }
        return enqueueReceiveInternal;
    }

    private final <R> boolean enqueueReceiveSelect(SelectInstance<? super R> selectInstance, AbstractC15122p<Object, ? super AbstractC15044d<? super R>, ? extends Object> pVar, int i) {
        ReceiveSelect receiveSelect = new ReceiveSelect(this, selectInstance, pVar, i);
        boolean enqueueReceive = enqueueReceive(receiveSelect);
        if (enqueueReceive) {
            selectInstance.disposeOnSelect(receiveSelect);
        }
        return enqueueReceive;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final E receiveOrNullResult(Object obj) {
        if (!(obj instanceof Closed)) {
            return obj;
        }
        Throwable th = ((Closed) obj).closeCause;
        if (th == null) {
            return null;
        }
        throw StackTraceRecoveryKt.recoverStackTrace(th);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final <R> void registerSelectReceiveMode(SelectInstance<? super R> selectInstance, int i, AbstractC15122p<Object, ? super AbstractC15044d<? super R>, ? extends Object> pVar) {
        while (!selectInstance.isSelected()) {
            if (!isEmptyImpl()) {
                Object pollSelectInternal = pollSelectInternal(selectInstance);
                if (pollSelectInternal != SelectKt.getALREADY_SELECTED()) {
                    if (!(pollSelectInternal == AbstractChannelKt.POLL_FAILED || pollSelectInternal == AtomicKt.RETRY_ATOMIC)) {
                        tryStartBlockUnintercepted(pVar, selectInstance, i, pollSelectInternal);
                    }
                } else {
                    return;
                }
            } else if (enqueueReceiveSelect(selectInstance, pVar, i)) {
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void removeReceiveOnCancel(CancellableContinuation<?> cancellableContinuation, Receive<?> receive) {
        cancellableContinuation.invokeOnCancellation(new RemoveReceiveOnCancel(receive));
    }

    private final <R> void tryStartBlockUnintercepted(AbstractC15122p<Object, ? super AbstractC15044d<? super R>, ? extends Object> pVar, SelectInstance<? super R> selectInstance, int i, Object obj) {
        boolean z = obj instanceof Closed;
        if (z) {
            if (i == 0) {
                throw StackTraceRecoveryKt.recoverStackTrace(((Closed) obj).getReceiveException());
            } else if (i == 1) {
                Closed closed = (Closed) obj;
                if (closed.closeCause != null) {
                    throw StackTraceRecoveryKt.recoverStackTrace(closed.getReceiveException());
                } else if (selectInstance.trySelect()) {
                    UndispatchedKt.startCoroutineUnintercepted(pVar, null, selectInstance.getCompletion());
                }
            } else if (i == 2 && selectInstance.trySelect()) {
                ValueOrClosed.Companion companion = ValueOrClosed.Companion;
                UndispatchedKt.startCoroutineUnintercepted(pVar, ValueOrClosed.m41839boximpl(ValueOrClosed.m41840constructorimpl(new ValueOrClosed.Closed(((Closed) obj).closeCause))), selectInstance.getCompletion());
            }
        } else if (i == 2) {
            ValueOrClosed.Companion companion2 = ValueOrClosed.Companion;
            UndispatchedKt.startCoroutineUnintercepted(pVar, ValueOrClosed.m41839boximpl(z ? ValueOrClosed.m41840constructorimpl(new ValueOrClosed.Closed(((Closed) obj).closeCause)) : ValueOrClosed.m41840constructorimpl(obj)), selectInstance.getCompletion());
        } else {
            UndispatchedKt.startCoroutineUnintercepted(pVar, obj, selectInstance.getCompletion());
        }
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public /* synthetic */ void cancel() {
        cancel((CancellationException) null);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final void cancel(CancellationException cancellationException) {
        if (cancellationException == null) {
            cancellationException = new CancellationException(DebugStringsKt.getClassSimpleName(this) + " was cancelled");
        }
        cancel(cancellationException);
    }

    /* renamed from: cancelInternal$kotlinx_coroutines_core */
    public final boolean cancel(Throwable th) {
        boolean close = close(th);
        onCancelIdempotent(close);
        return close;
    }

    public final TryPollDesc<E> describeTryPoll() {
        return new TryPollDesc<>(getQueue());
    }

    public boolean enqueueReceiveInternal(final Receive<? super E> receive) {
        boolean z;
        LockFreeLinkedListNode prevNode;
        if (isBufferAlwaysEmpty()) {
            LockFreeLinkedListNode queue = getQueue();
            do {
                prevNode = queue.getPrevNode();
                if (!(!(prevNode instanceof Send))) {
                    z = false;
                    break;
                }
            } while (!prevNode.addNext(receive, queue));
            z = true;
        } else {
            LockFreeLinkedListNode queue2 = getQueue();
            LockFreeLinkedListNode.CondAddOp abstractChannel$enqueueReceiveInternal$$inlined$addLastIfPrevAndIf$1 = new LockFreeLinkedListNode.CondAddOp(receive) { // from class: kotlinx.coroutines.channels.AbstractChannel$enqueueReceiveInternal$$inlined$addLastIfPrevAndIf$1
                public Object prepare(LockFreeLinkedListNode lockFreeLinkedListNode) {
                    return this.isBufferEmpty() ? null : LockFreeLinkedListKt.getCONDITION_FALSE();
                }
            };
            while (true) {
                LockFreeLinkedListNode prevNode2 = queue2.getPrevNode();
                if (!(prevNode2 instanceof Send)) {
                    int tryCondAddNext = prevNode2.tryCondAddNext(receive, queue2, abstractChannel$enqueueReceiveInternal$$inlined$addLastIfPrevAndIf$1);
                    if (tryCondAddNext == 1) {
                        break;
                    }
                    z = false;
                    if (tryCondAddNext == 2) {
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

    public final boolean getHasReceiveOrClosed() {
        return getQueue().getNextNode() instanceof ReceiveOrClosed;
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final SelectClause1<E> getOnReceive() {
        return new SelectClause1<E>() { // from class: kotlinx.coroutines.channels.AbstractChannel$onReceive$1
            @Override // kotlinx.coroutines.selects.SelectClause1
            public <R> void registerSelectClause1(SelectInstance<? super R> selectInstance, AbstractC15122p<? super E, ? super AbstractC15044d<? super R>, ? extends Object> pVar) {
                AbstractChannel abstractChannel = AbstractChannel.this;
                if (pVar != 0) {
                    abstractChannel.registerSelectReceiveMode(selectInstance, 0, pVar);
                    return;
                }
                throw new C14986p("null cannot be cast to non-null type suspend (kotlin.Any?) -> R");
            }
        };
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final SelectClause1<ValueOrClosed<E>> getOnReceiveOrClosed() {
        return (SelectClause1<ValueOrClosed<? extends E>>) new SelectClause1<ValueOrClosed<? extends E>>() { // from class: kotlinx.coroutines.channels.AbstractChannel$onReceiveOrClosed$1
            @Override // kotlinx.coroutines.selects.SelectClause1
            public <R> void registerSelectClause1(SelectInstance<? super R> selectInstance, AbstractC15122p<? super ValueOrClosed<? extends E>, ? super AbstractC15044d<? super R>, ? extends Object> pVar) {
                AbstractChannel abstractChannel = AbstractChannel.this;
                if (pVar != 0) {
                    abstractChannel.registerSelectReceiveMode(selectInstance, 2, pVar);
                    return;
                }
                throw new C14986p("null cannot be cast to non-null type suspend (kotlin.Any?) -> R");
            }
        };
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final SelectClause1<E> getOnReceiveOrNull() {
        return new SelectClause1<E>() { // from class: kotlinx.coroutines.channels.AbstractChannel$onReceiveOrNull$1
            @Override // kotlinx.coroutines.selects.SelectClause1
            public <R> void registerSelectClause1(SelectInstance<? super R> selectInstance, AbstractC15122p<? super E, ? super AbstractC15044d<? super R>, ? extends Object> pVar) {
                AbstractChannel abstractChannel = AbstractChannel.this;
                if (pVar != 0) {
                    abstractChannel.registerSelectReceiveMode(selectInstance, 1, pVar);
                    return;
                }
                throw new C14986p("null cannot be cast to non-null type suspend (kotlin.Any?) -> R");
            }
        };
    }

    public abstract boolean isBufferAlwaysEmpty();

    public abstract boolean isBufferEmpty();

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public boolean isClosedForReceive() {
        return getClosedForReceive() != null && isBufferEmpty();
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public boolean isEmpty() {
        return isEmptyImpl();
    }

    public final boolean isEmptyImpl() {
        return !(getQueue().getNextNode() instanceof Send) && isBufferEmpty();
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final ChannelIterator<E> iterator() {
        return new Itr(this);
    }

    public void onCancelIdempotent(boolean z) {
        Closed<?> closedForSend = getClosedForSend();
        if (closedForSend != null) {
            Object obj = InlineList.m41875constructorimpl$default(null, 1, null);
            while (true) {
                LockFreeLinkedListNode prevNode = closedForSend.getPrevNode();
                if (prevNode instanceof LockFreeLinkedListHead) {
                    if (obj == null) {
                        return;
                    }
                    if (!(obj instanceof ArrayList)) {
                        ((Send) obj).resumeSendClosed(closedForSend);
                        return;
                    } else if (obj != null) {
                        ArrayList arrayList = (ArrayList) obj;
                        for (int size = arrayList.size() - 1; size >= 0; size--) {
                            ((Send) arrayList.get(size)).resumeSendClosed(closedForSend);
                        }
                        return;
                    } else {
                        throw new C14986p("null cannot be cast to non-null type kotlin.collections.ArrayList<E> /* = java.util.ArrayList<E> */");
                    }
                } else if (DebugKt.getASSERTIONS_ENABLED() && !(prevNode instanceof Send)) {
                    throw new AssertionError();
                } else if (!prevNode.remove()) {
                    prevNode.helpRemove();
                } else if (prevNode != null) {
                    obj = InlineList.m41880plusimpl(obj, (Send) prevNode);
                } else {
                    throw new C14986p("null cannot be cast to non-null type kotlinx.coroutines.channels.Send");
                }
            }
        } else {
            throw new IllegalStateException("Cannot happen".toString());
        }
    }

    public void onReceiveDequeued() {
    }

    public void onReceiveEnqueued() {
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final E poll() {
        Object pollInternal = pollInternal();
        return pollInternal == AbstractChannelKt.POLL_FAILED ? null : receiveOrNullResult(pollInternal);
    }

    public Object pollInternal() {
        Send takeFirstSendOrPeekClosed;
        Symbol tryResumeSend;
        do {
            takeFirstSendOrPeekClosed = takeFirstSendOrPeekClosed();
            if (takeFirstSendOrPeekClosed == null) {
                return AbstractChannelKt.POLL_FAILED;
            }
            tryResumeSend = takeFirstSendOrPeekClosed.tryResumeSend(null);
        } while (tryResumeSend == null);
        if (DebugKt.getASSERTIONS_ENABLED()) {
            if (!(tryResumeSend == CancellableContinuationImplKt.RESUME_TOKEN)) {
                throw new AssertionError();
            }
        }
        takeFirstSendOrPeekClosed.completeResumeSend();
        return takeFirstSendOrPeekClosed.getPollResult();
    }

    public Object pollSelectInternal(SelectInstance<?> selectInstance) {
        TryPollDesc<E> describeTryPoll = describeTryPoll();
        Object performAtomicTrySelect = selectInstance.performAtomicTrySelect(describeTryPoll);
        if (performAtomicTrySelect != null) {
            return performAtomicTrySelect;
        }
        describeTryPoll.getResult().completeResumeSend();
        return describeTryPoll.getResult().getPollResult();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final Object receive(AbstractC15044d<? super E> dVar) {
        Object pollInternal = pollInternal();
        return (pollInternal == AbstractChannelKt.POLL_FAILED || (pollInternal instanceof Closed)) ? receiveSuspend(0, dVar) : pollInternal;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final Object receiveOrClosed(AbstractC15044d<? super ValueOrClosed<? extends E>> dVar) {
        Object obj;
        Object pollInternal = pollInternal();
        if (pollInternal == AbstractChannelKt.POLL_FAILED) {
            return receiveSuspend(2, dVar);
        }
        if (pollInternal instanceof Closed) {
            ValueOrClosed.Companion companion = ValueOrClosed.Companion;
            obj = ValueOrClosed.m41840constructorimpl(new ValueOrClosed.Closed(((Closed) pollInternal).closeCause));
        } else {
            ValueOrClosed.Companion companion2 = ValueOrClosed.Companion;
            obj = ValueOrClosed.m41840constructorimpl(pollInternal);
        }
        return ValueOrClosed.m41839boximpl(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final Object receiveOrNull(AbstractC15044d<? super E> dVar) {
        Object pollInternal = pollInternal();
        return (pollInternal == AbstractChannelKt.POLL_FAILED || (pollInternal instanceof Closed)) ? receiveSuspend(1, dVar) : pollInternal;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final /* synthetic */ <R> Object receiveSuspend(int i, AbstractC15044d<? super R> dVar) {
        CancellableContinuationImpl orCreateCancellableContinuation = CancellableContinuationKt.getOrCreateCancellableContinuation(C15059b.m481a(dVar));
        if (orCreateCancellableContinuation != null) {
            ReceiveElement receiveElement = new ReceiveElement(orCreateCancellableContinuation, i);
            while (true) {
                if (!enqueueReceive(receiveElement)) {
                    Object pollInternal = pollInternal();
                    if (!(pollInternal instanceof Closed)) {
                        if (pollInternal != AbstractChannelKt.POLL_FAILED) {
                            Object resumeValue = receiveElement.resumeValue(pollInternal);
                            C14979k.C14980a aVar = C14979k.f33013a;
                            C14979k.m657a(resumeValue);
                            orCreateCancellableContinuation.resumeWith(resumeValue);
                            break;
                        }
                    } else {
                        receiveElement.resumeReceiveClosed((Closed) pollInternal);
                        break;
                    }
                } else {
                    removeReceiveOnCancel(orCreateCancellableContinuation, receiveElement);
                    break;
                }
            }
            Object result = orCreateCancellableContinuation.getResult();
            if (result == C15064c.m478a()) {
                C15072h.m462c(dVar);
            }
            return result;
        }
        throw new C14986p("null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Any?>");
    }

    @Override // kotlinx.coroutines.channels.AbstractSendChannel
    public ReceiveOrClosed<E> takeFirstReceiveOrPeekClosed() {
        ReceiveOrClosed<E> takeFirstReceiveOrPeekClosed = super.takeFirstReceiveOrPeekClosed();
        if (takeFirstReceiveOrPeekClosed != null && !(takeFirstReceiveOrPeekClosed instanceof Closed)) {
            onReceiveDequeued();
        }
        return takeFirstReceiveOrPeekClosed;
    }
}
