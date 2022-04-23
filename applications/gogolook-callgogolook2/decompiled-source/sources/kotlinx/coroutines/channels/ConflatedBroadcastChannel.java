package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import com.taiwanmobile.p055pt.adp.view.webview.mraid.MraidParser;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlinx.coroutines.DebugKt;
import kotlinx.coroutines.ExperimentalCoroutinesApi;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.intrinsics.UndispatchedKt;
import kotlinx.coroutines.selects.SelectClause2;
import kotlinx.coroutines.selects.SelectInstance;
import p459j.p460a.p541n0.C13032a;
import p626l.C14986p;
import p626l.C14989s;
import p626l.p632u.C15011h;
import p626l.p632u.C15013i;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15138d0;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0003\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\b\u0007\u0018�� A*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u00028��0F:\u0004BACDB\u0011\b\u0016\u0012\u0006\u0010\u0002\u001a\u00028��¢\u0006\u0004\b\u0003\u0010\u0004B\u0007¢\u0006\u0004\b\u0003\u0010\u0005J?\u0010\n\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u00070\u00062\u0014\u0010\b\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0007\u0018\u00010\u00062\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028��0\u0007H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0019\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0017¢\u0006\u0004\b\u000f\u0010\u0010J\u001f\u0010\u000f\u001a\u00020\u00132\u000e\u0010\r\u001a\n\u0018\u00010\u0011j\u0004\u0018\u0001`\u0012H\u0016¢\u0006\u0004\b\u000f\u0010\u0014J\u0019\u0010\u0015\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\u0015\u0010\u0010J\u001d\u0010\u0016\u001a\u00020\u00132\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028��0\u0007H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J)\u0010\u001b\u001a\u00020\u00132\u0018\u0010\u001a\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\f\u0012\u0004\u0012\u00020\u00130\u0018j\u0002`\u0019H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u0019\u0010\u001d\u001a\u00020\u00132\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010 \u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00028��H\u0016¢\u0006\u0004\b \u0010!J\u0019\u0010#\u001a\u0004\u0018\u00010\"2\u0006\u0010\u001f\u001a\u00028��H\u0002¢\u0006\u0004\b#\u0010$J\u0015\u0010&\u001a\b\u0012\u0004\u0012\u00028��0%H\u0016¢\u0006\u0004\b&\u0010'JX\u00100\u001a\u00020\u0013\"\u0004\b\u0001\u0010(2\f\u0010*\u001a\b\u0012\u0004\u0012\u00028\u00010)2\u0006\u0010\u001f\u001a\u00028��2(\u0010/\u001a$\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0,\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010-\u0012\u0006\u0012\u0004\u0018\u00010.0+H\u0002ø\u0001��¢\u0006\u0004\b0\u00101J?\u00102\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0007\u0018\u00010\u00062\u0012\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u00070\u00062\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028��0\u0007H\u0002¢\u0006\u0004\b2\u0010\u000bJ\u001b\u00103\u001a\u00020\u00132\u0006\u0010\u001f\u001a\u00028��H\u0096@ø\u0001��¢\u0006\u0004\b3\u00104R\u0016\u00105\u001a\u00020\u000e8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b5\u00106R\u0016\u00107\u001a\u00020\u000e8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b7\u00106R(\u0010;\u001a\u0014\u0012\u0004\u0012\u00028��\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0,088V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b9\u0010:R\u0019\u0010\u0002\u001a\u00028��8F@\u0006¢\u0006\f\u0012\u0004\b>\u0010\u0005\u001a\u0004\b<\u0010=R\u0015\u0010@\u001a\u0004\u0018\u00018��8F@\u0006¢\u0006\u0006\u001a\u0004\b?\u0010=\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006E"}, m815d2 = {"Lkotlinx/coroutines/channels/ConflatedBroadcastChannel;", ExifInterface.LONGITUDE_EAST, C13032a.f29462d, "<init>", "(Ljava/lang/Object;)V", "()V", "", "Lkotlinx/coroutines/channels/ConflatedBroadcastChannel$Subscriber;", "list", "subscriber", "addSubscriber", "([Lkotlinx/coroutines/channels/ConflatedBroadcastChannel$Subscriber;Lkotlinx/coroutines/channels/ConflatedBroadcastChannel$Subscriber;)[Lkotlinx/coroutines/channels/ConflatedBroadcastChannel$Subscriber;", "", "cause", "", "cancel", "(Ljava/lang/Throwable;)Z", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "", "(Ljava/util/concurrent/CancellationException;)V", MraidParser.MRAID_COMMAND_CLOSE, "closeSubscriber", "(Lkotlinx/coroutines/channels/ConflatedBroadcastChannel$Subscriber;)V", "Lkotlin/Function1;", "Lkotlinx/coroutines/channels/Handler;", "handler", "invokeOnClose", "(Lkotlin/jvm/functions/Function1;)V", "invokeOnCloseHandler", "(Ljava/lang/Throwable;)V", "element", "offer", "(Ljava/lang/Object;)Z", "Lkotlinx/coroutines/channels/ConflatedBroadcastChannel$Closed;", "offerInternal", "(Ljava/lang/Object;)Lkotlinx/coroutines/channels/ConflatedBroadcastChannel$Closed;", "Lkotlinx/coroutines/channels/ReceiveChannel;", "openSubscription", "()Lkotlinx/coroutines/channels/ReceiveChannel;", "R", "Lkotlinx/coroutines/selects/SelectInstance;", "select", "Lkotlin/Function2;", "Lkotlinx/coroutines/channels/SendChannel;", "Lkotlin/coroutines/Continuation;", "", "block", "registerSelectSend", "(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V", "removeSubscriber", "send", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "isClosedForSend", "()Z", "isFull", "Lkotlinx/coroutines/selects/SelectClause2;", "getOnSend", "()Lkotlinx/coroutines/selects/SelectClause2;", "onSend", "getValue", "()Ljava/lang/Object;", "value$annotations", "getValueOrNull", "valueOrNull", "Companion", "Closed", "State", "Subscriber", "kotlinx-coroutines-core", "Lkotlinx/coroutines/channels/BroadcastChannel;"}, m814k = 1, m813mv = {1, 1, 16})
@ExperimentalCoroutinesApi
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/channels/ConflatedBroadcastChannel.class */
public final class ConflatedBroadcastChannel<E> implements BroadcastChannel<E> {
    public volatile Object _state;
    public volatile int _updating;
    public volatile Object onCloseHandler;
    public static final Companion Companion = new Companion(null);
    public static final Closed CLOSED = new Closed(null);
    public static final Symbol UNDEFINED = new Symbol("UNDEFINED");
    public static final State<Object> INITIAL_STATE = new State<>(UNDEFINED, null);
    public static final AtomicReferenceFieldUpdater _state$FU = AtomicReferenceFieldUpdater.newUpdater(ConflatedBroadcastChannel.class, Object.class, "_state");
    public static final AtomicIntegerFieldUpdater _updating$FU = AtomicIntegerFieldUpdater.newUpdater(ConflatedBroadcastChannel.class, "_updating");
    public static final AtomicReferenceFieldUpdater onCloseHandler$FU = AtomicReferenceFieldUpdater.newUpdater(ConflatedBroadcastChannel.class, Object.class, "onCloseHandler");

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0003\n\u0002\b\u0007\b\u0002\u0018��2\u00020\u0001B\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004R\u0012\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0011\u0010\u0005\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\b\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\t\u0010\u0007¨\u0006\n"}, m815d2 = {"Lkotlinx/coroutines/channels/ConflatedBroadcastChannel$Closed;", "", "closeCause", "", "(Ljava/lang/Throwable;)V", "sendException", "getSendException", "()Ljava/lang/Throwable;", "valueException", "getValueException", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
    /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/channels/ConflatedBroadcastChannel$Closed.class */
    public static final class Closed {
        public final Throwable closeCause;

        public Closed(Throwable th) {
            this.closeCause = th;
        }

        public final Throwable getSendException() {
            Throwable th = this.closeCause;
            if (th == null) {
                th = new ClosedSendChannelException(ChannelsKt.DEFAULT_CLOSE_MESSAGE);
            }
            return th;
        }

        public final Throwable getValueException() {
            Throwable th = this.closeCause;
            if (th == null) {
                th = new IllegalStateException(ChannelsKt.DEFAULT_CLOSE_MESSAGE);
            }
            return th;
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0082\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0016\u0010\u0003\u001a\u00020\u00048\u0002X\u0083\u0004¢\u0006\b\n��\u0012\u0004\b\u0005\u0010\u0002R\u0016\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0007X\u0082\u0004¢\u0006\u0002\n��R\u0016\u0010\b\u001a\u00020\t8\u0002X\u0083\u0004¢\u0006\b\n��\u0012\u0004\b\n\u0010\u0002¨\u0006\u000b"}, m815d2 = {"Lkotlinx/coroutines/channels/ConflatedBroadcastChannel$Companion;", "", "()V", "CLOSED", "Lkotlinx/coroutines/channels/ConflatedBroadcastChannel$Closed;", "CLOSED$annotations", "INITIAL_STATE", "Lkotlinx/coroutines/channels/ConflatedBroadcastChannel$State;", "UNDEFINED", "Lkotlinx/coroutines/internal/Symbol;", "UNDEFINED$annotations", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
    /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/channels/ConflatedBroadcastChannel$Companion.class */
    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(C15145g gVar) {
            this();
        }

        public static /* synthetic */ void CLOSED$annotations() {
        }

        public static /* synthetic */ void UNDEFINED$annotations() {
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001a\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0002\u0018��*\u0004\b\u0001\u0010\u00012\u00020\u0002B%\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0014\u0010\u0004\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0006\u0018\u00010\u0005¢\u0006\u0002\u0010\u0007R \u0010\u0004\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0006\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\bR\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\u0002\n��¨\u0006\t"}, m815d2 = {"Lkotlinx/coroutines/channels/ConflatedBroadcastChannel$State;", ExifInterface.LONGITUDE_EAST, "", C13032a.f29462d, "subscribers", "", "Lkotlinx/coroutines/channels/ConflatedBroadcastChannel$Subscriber;", "(Ljava/lang/Object;[Lkotlinx/coroutines/channels/ConflatedBroadcastChannel$Subscriber;)V", "[Lkotlinx/coroutines/channels/ConflatedBroadcastChannel$Subscriber;", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
    /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/channels/ConflatedBroadcastChannel$State.class */
    public static final class State<E> {
        public final Subscriber<E>[] subscribers;
        public final Object value;

        public State(Object obj, Subscriber<E>[] subscriberArr) {
            this.value = obj;
            this.subscribers = subscriberArr;
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��,\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n��\b\u0002\u0018��*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u0013\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0005¢\u0006\u0002\u0010\u0006J\u0015\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010\nJ\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0014R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0005X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000f"}, m815d2 = {"Lkotlinx/coroutines/channels/ConflatedBroadcastChannel$Subscriber;", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/ConflatedChannel;", "Lkotlinx/coroutines/channels/ReceiveChannel;", "broadcastChannel", "Lkotlinx/coroutines/channels/ConflatedBroadcastChannel;", "(Lkotlinx/coroutines/channels/ConflatedBroadcastChannel;)V", "offerInternal", "", "element", "(Ljava/lang/Object;)Ljava/lang/Object;", "onCancelIdempotent", "", "wasClosed", "", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
    /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/channels/ConflatedBroadcastChannel$Subscriber.class */
    public static final class Subscriber<E> extends ConflatedChannel<E> implements ReceiveChannel<E> {
        public final ConflatedBroadcastChannel<E> broadcastChannel;

        public Subscriber(ConflatedBroadcastChannel<E> conflatedBroadcastChannel) {
            this.broadcastChannel = conflatedBroadcastChannel;
        }

        @Override // kotlinx.coroutines.channels.ConflatedChannel, kotlinx.coroutines.channels.AbstractSendChannel
        public Object offerInternal(E e) {
            return super.offerInternal(e);
        }

        @Override // kotlinx.coroutines.channels.ConflatedChannel, kotlinx.coroutines.channels.AbstractChannel
        public void onCancelIdempotent(boolean z) {
            if (z) {
                this.broadcastChannel.closeSubscriber(this);
            }
        }
    }

    public ConflatedBroadcastChannel() {
        this._state = INITIAL_STATE;
        this._updating = 0;
        this.onCloseHandler = null;
    }

    public ConflatedBroadcastChannel(E e) {
        this();
        _state$FU.lazySet(this, new State(e, null));
    }

    private final Subscriber<E>[] addSubscriber(Subscriber<E>[] subscriberArr, Subscriber<E> subscriber) {
        if (subscriberArr != null) {
            return (Subscriber[]) C15011h.m604a(subscriberArr, subscriber);
        }
        Subscriber<E>[] subscriberArr2 = new Subscriber[1];
        for (int i = 0; i < 1; i++) {
            subscriberArr2[i] = subscriber;
        }
        return subscriberArr2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void closeSubscriber(Subscriber<E> subscriber) {
        Object obj;
        Object obj2;
        Subscriber<E>[] subscriberArr;
        do {
            obj = this._state;
            if (!(obj instanceof Closed)) {
                if (obj instanceof State) {
                    State state = (State) obj;
                    obj2 = state.value;
                    if (obj != null) {
                        subscriberArr = state.subscribers;
                        if (subscriberArr != null) {
                        } else {
                            C15149k.m378b();
                            throw null;
                        }
                    } else {
                        throw new C14986p("null cannot be cast to non-null type kotlinx.coroutines.channels.ConflatedBroadcastChannel.State<E>");
                    }
                } else {
                    throw new IllegalStateException(("Invalid state " + obj).toString());
                }
            } else {
                return;
            }
        } while (!_state$FU.compareAndSet(this, obj, new State(obj2, removeSubscriber(subscriberArr, subscriber))));
    }

    private final void invokeOnCloseHandler(Throwable th) {
        Object obj;
        Object obj2 = this.onCloseHandler;
        if (obj2 != null && obj2 != (obj = AbstractChannelKt.HANDLER_INVOKED) && onCloseHandler$FU.compareAndSet(this, obj2, obj)) {
            C15138d0.m399a(obj2, 1);
            ((AbstractC15118l) obj2).invoke(th);
        }
    }

    private final Closed offerInternal(E e) {
        Object obj;
        if (!_updating$FU.compareAndSet(this, 0, 1)) {
            return null;
        }
        do {
            try {
                obj = this._state;
                if (obj instanceof Closed) {
                    return (Closed) obj;
                }
                if (!(obj instanceof State)) {
                    throw new IllegalStateException(("Invalid state " + obj).toString());
                } else if (obj == null) {
                    throw new C14986p("null cannot be cast to non-null type kotlinx.coroutines.channels.ConflatedBroadcastChannel.State<E>");
                }
            } finally {
                this._updating = 0;
            }
        } while (!_state$FU.compareAndSet(this, obj, new State(e, ((State) obj).subscribers)));
        Subscriber<E>[] subscriberArr = ((State) obj).subscribers;
        if (subscriberArr != null) {
            for (Subscriber<E> subscriber : subscriberArr) {
                subscriber.offerInternal(e);
            }
        }
        this._updating = 0;
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final <R> void registerSelectSend(SelectInstance<? super R> selectInstance, E e, AbstractC15122p<? super SendChannel<? super E>, ? super AbstractC15044d<? super R>, ? extends Object> pVar) {
        if (selectInstance.trySelect()) {
            Closed offerInternal = offerInternal(e);
            if (offerInternal != null) {
                selectInstance.resumeSelectWithException(offerInternal.getSendException());
            } else {
                UndispatchedKt.startCoroutineUnintercepted(pVar, this, selectInstance.getCompletion());
            }
        }
    }

    private final Subscriber<E>[] removeSubscriber(Subscriber<E>[] subscriberArr, Subscriber<E> subscriber) {
        int length = subscriberArr.length;
        int c = C15013i.m577c(subscriberArr, subscriber);
        if (DebugKt.getASSERTIONS_ENABLED()) {
            if (!(c >= 0)) {
                throw new AssertionError();
            }
        }
        if (length == 1) {
            return null;
        }
        Subscriber<E>[] subscriberArr2 = new Subscriber[length - 1];
        C15011h.m599a(subscriberArr, subscriberArr2, 0, 0, c, 6, null);
        C15011h.m599a(subscriberArr, subscriberArr2, c, c + 1, 0, 8, null);
        return subscriberArr2;
    }

    public static /* synthetic */ void value$annotations() {
    }

    @Override // kotlinx.coroutines.channels.BroadcastChannel
    public void cancel(CancellationException cancellationException) {
        cancel(cancellationException);
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    /* renamed from: close */
    public boolean cancel(Throwable th) {
        Object obj;
        int i;
        do {
            obj = this._state;
            if (obj instanceof Closed) {
                return false;
            }
            if (!(obj instanceof State)) {
                throw new IllegalStateException(("Invalid state " + obj).toString());
            }
        } while (!_state$FU.compareAndSet(this, obj, th == null ? CLOSED : new Closed(th)));
        if (obj != null) {
            Subscriber<E>[] subscriberArr = ((State) obj).subscribers;
            if (subscriberArr != null) {
                for (Subscriber<E> subscriber : subscriberArr) {
                    subscriber.close(th);
                }
            }
            invokeOnCloseHandler(th);
            return true;
        }
        throw new C14986p("null cannot be cast to non-null type kotlinx.coroutines.channels.ConflatedBroadcastChannel.State<E>");
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public SelectClause2<E, SendChannel<E>> getOnSend() {
        return (SelectClause2<E, SendChannel<? super E>>) new SelectClause2<E, SendChannel<? super E>>() { // from class: kotlinx.coroutines.channels.ConflatedBroadcastChannel$onSend$1
            @Override // kotlinx.coroutines.selects.SelectClause2
            public <R> void registerSelectClause2(SelectInstance<? super R> selectInstance, E e, AbstractC15122p<? super SendChannel<? super E>, ? super AbstractC15044d<? super R>, ? extends Object> pVar) {
                ConflatedBroadcastChannel.this.registerSelectSend(selectInstance, e, pVar);
            }
        };
    }

    public final E getValue() {
        Object obj = this._state;
        if (obj instanceof Closed) {
            throw ((Closed) obj).getValueException();
        } else if (obj instanceof State) {
            E e = (E) ((State) obj).value;
            if (e != UNDEFINED) {
                return e;
            }
            throw new IllegalStateException("No value");
        } else {
            throw new IllegalStateException(("Invalid state " + obj).toString());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final E getValueOrNull() {
        Object obj = this._state;
        E e = null;
        if (!(obj instanceof Closed)) {
            if (obj instanceof State) {
                Symbol symbol = UNDEFINED;
                Object obj2 = ((State) obj).value;
                if (obj2 != symbol) {
                    e = obj2;
                }
            } else {
                throw new IllegalStateException(("Invalid state " + obj).toString());
            }
        }
        return e;
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public void invokeOnClose(AbstractC15118l<? super Throwable, C14989s> lVar) {
        if (!onCloseHandler$FU.compareAndSet(this, null, lVar)) {
            Object obj = this.onCloseHandler;
            if (obj == AbstractChannelKt.HANDLER_INVOKED) {
                throw new IllegalStateException("Another handler was already registered and successfully invoked");
            }
            throw new IllegalStateException("Another handler was already registered: " + obj);
        }
        Object obj2 = this._state;
        if ((obj2 instanceof Closed) && onCloseHandler$FU.compareAndSet(this, lVar, AbstractChannelKt.HANDLER_INVOKED)) {
            lVar.invoke(((Closed) obj2).closeCause);
        }
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public boolean isClosedForSend() {
        return this._state instanceof Closed;
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public boolean isFull() {
        return false;
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public boolean offer(E e) {
        Closed offerInternal = offerInternal(e);
        if (offerInternal == null) {
            return true;
        }
        throw offerInternal.getSendException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.channels.BroadcastChannel
    public ReceiveChannel<E> openSubscription() {
        Object obj;
        State state;
        Object obj2;
        Subscriber subscriber = new Subscriber(this);
        do {
            obj = this._state;
            if (obj instanceof Closed) {
                subscriber.close(((Closed) obj).closeCause);
                return subscriber;
            } else if (obj instanceof State) {
                state = (State) obj;
                Object obj3 = state.value;
                if (obj3 != UNDEFINED) {
                    subscriber.offerInternal(obj3);
                }
                obj2 = state.value;
                if (obj != null) {
                } else {
                    throw new C14986p("null cannot be cast to non-null type kotlinx.coroutines.channels.ConflatedBroadcastChannel.State<E>");
                }
            } else {
                throw new IllegalStateException(("Invalid state " + obj).toString());
            }
        } while (!_state$FU.compareAndSet(this, obj, new State(obj2, addSubscriber(state.subscribers, subscriber))));
        return subscriber;
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public Object send(E e, AbstractC15044d<? super C14989s> dVar) {
        Closed offerInternal = offerInternal(e);
        if (offerInternal == null) {
            return offerInternal == C15064c.m478a() ? offerInternal : C14989s.f33022a;
        }
        throw offerInternal.getSendException();
    }
}
