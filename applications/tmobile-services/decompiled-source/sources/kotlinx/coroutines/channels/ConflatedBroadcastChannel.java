package kotlinx.coroutines.channels;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.DebugKt;
import kotlinx.coroutines.ExperimentalCoroutinesApi;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.intrinsics.UndispatchedKt;
import kotlinx.coroutines.selects.SelectClause2;
import kotlinx.coroutines.selects.SelectInstance;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��r\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0003\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0011\b\u0007\u0018�� B*\u0004\b��\u0010\u00012\u00020\u0002:\u0004CBDEB\u0011\b\u0016\u0012\u0006\u0010=\u001a\u00028��¢\u0006\u0004\b@\u0010AB\u0007¢\u0006\u0004\b@\u0010<J?\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u00040\u00032\u0014\u0010\u0005\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0004\u0018\u00010\u00032\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028��0\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\f\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0017¢\u0006\u0004\b\f\u0010\rJ\u001f\u0010\f\u001a\u00020\u00102\u000e\u0010\n\u001a\n\u0018\u00010\u000ej\u0004\u0018\u0001`\u000fH\u0016¢\u0006\u0004\b\f\u0010\u0011J\u0019\u0010\u0012\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u0012\u0010\rJ\u001d\u0010\u0013\u001a\u00020\u00102\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028��0\u0004H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J)\u0010\u0018\u001a\u00020\u00102\u0018\u0010\u0017\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\t\u0012\u0004\u0012\u00020\u00100\u0015j\u0002`\u0016H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0019\u0010\u001a\u001a\u00020\u00102\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00028��H\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u0019\u0010 \u001a\u0004\u0018\u00010\u001f2\u0006\u0010\u001c\u001a\u00028��H\u0002¢\u0006\u0004\b \u0010!J\u0015\u0010#\u001a\b\u0012\u0004\u0012\u00028��0\"H\u0016¢\u0006\u0004\b#\u0010$JX\u0010-\u001a\u00020\u0010\"\u0004\b\u0001\u0010%2\f\u0010'\u001a\b\u0012\u0004\u0012\u00028\u00010&2\u0006\u0010\u001c\u001a\u00028��2(\u0010,\u001a$\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0)\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010*\u0012\u0006\u0012\u0004\u0018\u00010+0(H\u0002ø\u0001��¢\u0006\u0004\b-\u0010.J?\u0010/\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0004\u0018\u00010\u00032\u0012\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u00040\u00032\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028��0\u0004H\u0002¢\u0006\u0004\b/\u0010\bJ\u001b\u00100\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00028��H\u0096@ø\u0001��¢\u0006\u0004\b0\u00101R\u0016\u00102\u001a\u00020\u000b8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b2\u00103R\u0016\u00104\u001a\u00020\u000b8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b4\u00103R(\u00108\u001a\u0014\u0012\u0004\u0012\u00028��\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0)058V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b6\u00107R\u0019\u0010=\u001a\u00028��8F@\u0006¢\u0006\f\u0012\u0004\b;\u0010<\u001a\u0004\b9\u0010:R\u0015\u0010?\u001a\u0004\u0018\u00018��8F@\u0006¢\u0006\u0006\u001a\u0004\b>\u0010:\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006F"}, d2 = {"Lkotlinx/coroutines/channels/ConflatedBroadcastChannel;", "E", "Lkotlinx/coroutines/channels/BroadcastChannel;", "", "Lkotlinx/coroutines/channels/ConflatedBroadcastChannel$Subscriber;", "list", "subscriber", "addSubscriber", "([Lkotlinx/coroutines/channels/ConflatedBroadcastChannel$Subscriber;Lkotlinx/coroutines/channels/ConflatedBroadcastChannel$Subscriber;)[Lkotlinx/coroutines/channels/ConflatedBroadcastChannel$Subscriber;", "", "cause", "", "cancel", "(Ljava/lang/Throwable;)Z", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "", "(Ljava/util/concurrent/CancellationException;)V", "close", "closeSubscriber", "(Lkotlinx/coroutines/channels/ConflatedBroadcastChannel$Subscriber;)V", "Lkotlin/Function1;", "Lkotlinx/coroutines/channels/Handler;", "handler", "invokeOnClose", "(Lkotlin/jvm/functions/Function1;)V", "invokeOnCloseHandler", "(Ljava/lang/Throwable;)V", "element", "offer", "(Ljava/lang/Object;)Z", "Lkotlinx/coroutines/channels/ConflatedBroadcastChannel$Closed;", "offerInternal", "(Ljava/lang/Object;)Lkotlinx/coroutines/channels/ConflatedBroadcastChannel$Closed;", "Lkotlinx/coroutines/channels/ReceiveChannel;", "openSubscription", "()Lkotlinx/coroutines/channels/ReceiveChannel;", "R", "Lkotlinx/coroutines/selects/SelectInstance;", "select", "Lkotlin/Function2;", "Lkotlinx/coroutines/channels/SendChannel;", "Lkotlin/coroutines/Continuation;", "", "block", "registerSelectSend", "(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V", "removeSubscriber", "send", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "isClosedForSend", "()Z", "isFull", "Lkotlinx/coroutines/selects/SelectClause2;", "getOnSend", "()Lkotlinx/coroutines/selects/SelectClause2;", "onSend", "getValue", "()Ljava/lang/Object;", "getValue$annotations", "()V", FirebaseAnalytics.Param.VALUE, "getValueOrNull", "valueOrNull", "<init>", "(Ljava/lang/Object;)V", "Companion", "Closed", "State", "Subscriber", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
@ExperimentalCoroutinesApi
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ConflatedBroadcastChannel.class */
public final class ConflatedBroadcastChannel<E> implements BroadcastChannel<E> {

    /* renamed from: j */
    private static final Symbol f22192j;

    /* renamed from: k */
    private static final State<Object> f22193k;
    private volatile Object _state = f22193k;
    private volatile int _updating = 0;
    private volatile Object onCloseHandler = null;

    /* renamed from: i */
    private static final Closed f22191i = new Closed(null);

    /* renamed from: f */
    private static final AtomicReferenceFieldUpdater f22188f = AtomicReferenceFieldUpdater.newUpdater(ConflatedBroadcastChannel.class, Object.class, "_state");

    /* renamed from: g */
    private static final AtomicIntegerFieldUpdater f22189g = AtomicIntegerFieldUpdater.newUpdater(ConflatedBroadcastChannel.class, "_updating");

    /* renamed from: h */
    private static final AtomicReferenceFieldUpdater f22190h = AtomicReferenceFieldUpdater.newUpdater(ConflatedBroadcastChannel.class, Object.class, "onCloseHandler");

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\n\b\u0002\u0018��B\u0011\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\t\u0010\nR\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00018\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0002\u0010\u0003R\u0013\u0010\u0006\u001a\u00020\u00018F@\u0006¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0013\u0010\b\u001a\u00020\u00018F@\u0006¢\u0006\u0006\u001a\u0004\b\u0007\u0010\u0005¨\u0006\u000b"}, d2 = {"Lkotlinx/coroutines/channels/ConflatedBroadcastChannel$Closed;", "", "closeCause", "Ljava/lang/Throwable;", "getSendException", "()Ljava/lang/Throwable;", "sendException", "getValueException", "valueException", "<init>", "(Ljava/lang/Throwable;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ConflatedBroadcastChannel$Closed.class */
    public static final class Closed {
        @JvmField
        @Nullable

        /* renamed from: a */
        public final Throwable f22194a;

        public Closed(@Nullable Throwable th) {
            this.f22194a = th;
        }

        @NotNull
        /* renamed from: a */
        public final Throwable m840a() {
            Throwable th = this.f22194a;
            if (th == null) {
                th = new ClosedSendChannelException("Channel was closed");
            }
            return th;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0082\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\u000b\u0010\fR\u0016\u0010\u0002\u001a\u00020\u00018\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0002\u0010\u0003R\u001e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00048\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0016\u0010\t\u001a\u00020\b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Lkotlinx/coroutines/channels/ConflatedBroadcastChannel$Companion;", "Lkotlinx/coroutines/channels/ConflatedBroadcastChannel$Closed;", "CLOSED", "Lkotlinx/coroutines/channels/ConflatedBroadcastChannel$Closed;", "Lkotlinx/coroutines/channels/ConflatedBroadcastChannel$State;", "", "INITIAL_STATE", "Lkotlinx/coroutines/channels/ConflatedBroadcastChannel$State;", "Lkotlinx/coroutines/internal/Symbol;", "UNDEFINED", "Lkotlinx/coroutines/internal/Symbol;", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ConflatedBroadcastChannel$Companion.class */
    private static final class Companion {
        private Companion() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0005\b\u0002\u0018��*\u0004\b\u0001\u0010\u0001B'\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0014\u0010\u0004\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0003\u0018\u00010\u0002¢\u0006\u0004\b\t\u0010\nR$\u0010\u0004\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0003\u0018\u00010\u00028\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lkotlinx/coroutines/channels/ConflatedBroadcastChannel$State;", "E", "", "Lkotlinx/coroutines/channels/ConflatedBroadcastChannel$Subscriber;", "subscribers", "[Lkotlinx/coroutines/channels/ConflatedBroadcastChannel$Subscriber;", "", FirebaseAnalytics.Param.VALUE, "Ljava/lang/Object;", "<init>", "(Ljava/lang/Object;[Lkotlinx/coroutines/channels/ConflatedBroadcastChannel$Subscriber;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ConflatedBroadcastChannel$State.class */
    public static final class State<E> {
        @JvmField
        @Nullable

        /* renamed from: a */
        public final Object f22195a;
        @JvmField
        @Nullable

        /* renamed from: b */
        public final Subscriber<E>[] f22196b;

        public State(@Nullable Object obj, @Nullable Subscriber<E>[] subscriberArr) {
            this.f22195a = obj;
            this.f22196b = subscriberArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018��*\u0004\b\u0001\u0010\u00012\u00020\u00022\u00020\u0003B\u0015\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00010\r¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0014¢\u0006\u0004\b\u000b\u0010\fR\u001c\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00010\r8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, d2 = {"Lkotlinx/coroutines/channels/ConflatedBroadcastChannel$Subscriber;", "E", "Lkotlinx/coroutines/channels/ReceiveChannel;", "Lkotlinx/coroutines/channels/ConflatedChannel;", "element", "", "offerInternal", "(Ljava/lang/Object;)Ljava/lang/Object;", "", "wasClosed", "", "onCancelIdempotent", "(Z)V", "Lkotlinx/coroutines/channels/ConflatedBroadcastChannel;", "broadcastChannel", "Lkotlinx/coroutines/channels/ConflatedBroadcastChannel;", "<init>", "(Lkotlinx/coroutines/channels/ConflatedBroadcastChannel;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ConflatedBroadcastChannel$Subscriber.class */
    public static final class Subscriber<E> extends ConflatedChannel<E> implements ReceiveChannel<E> {

        /* renamed from: k */
        private final ConflatedBroadcastChannel<E> f22197k;

        public Subscriber(@NotNull ConflatedBroadcastChannel<E> conflatedBroadcastChannel) {
            this.f22197k = conflatedBroadcastChannel;
        }

        @Override // kotlinx.coroutines.channels.ConflatedChannel, kotlinx.coroutines.channels.AbstractSendChannel
        @NotNull
        /* renamed from: E */
        public Object mo832E(E e) {
            return super.mo832E(e);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // kotlinx.coroutines.channels.ConflatedChannel, kotlinx.coroutines.channels.AbstractChannel
        /* renamed from: Z */
        public void mo838Z(boolean z) {
            if (z) {
                this.f22197k.m845e(this);
            }
        }
    }

    static {
        Symbol symbol = new Symbol("UNDEFINED");
        f22192j = symbol;
        f22193k = new State<>(symbol, null);
    }

    /* renamed from: d */
    private final Subscriber<E>[] m846d(Subscriber<E>[] subscriberArr, Subscriber<E> subscriber) {
        if (subscriberArr != null) {
            return (Subscriber[]) ArraysKt.m2313l(subscriberArr, subscriber);
        }
        Subscriber<E>[] subscriberArr2 = new Subscriber[1];
        for (int i = 0; i < 1; i++) {
            subscriberArr2[i] = subscriber;
        }
        return subscriberArr2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public final void m845e(Subscriber<E> subscriber) {
        Object obj;
        Object obj2;
        Subscriber<E>[] subscriberArr;
        do {
            obj = this._state;
            if (!(obj instanceof Closed)) {
                if (obj instanceof State) {
                    State state = (State) obj;
                    obj2 = state.f22195a;
                    if (obj != null) {
                        subscriberArr = state.f22196b;
                        Intrinsics.m1832c(subscriberArr);
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type kotlinx.coroutines.channels.ConflatedBroadcastChannel.State<E>");
                    }
                } else {
                    throw new IllegalStateException(("Invalid state " + obj).toString());
                }
            } else {
                return;
            }
        } while (!f22188f.compareAndSet(this, obj, new State(obj2, m841i(subscriberArr, subscriber))));
    }

    /* renamed from: f */
    private final void m844f(Throwable th) {
        Object obj;
        Object obj2 = this.onCloseHandler;
        if (obj2 != null && obj2 != (obj = AbstractChannelKt.f21302e) && f22190h.compareAndSet(this, obj2, obj)) {
            TypeIntrinsics.m1785b(obj2, 1);
            ((Function1) obj2).invoke(th);
        }
    }

    /* renamed from: g */
    private final Closed m843g(E e) {
        Object obj;
        if (!f22189g.compareAndSet(this, 0, 1)) {
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
                    throw new NullPointerException("null cannot be cast to non-null type kotlinx.coroutines.channels.ConflatedBroadcastChannel.State<E>");
                }
            } finally {
                this._updating = 0;
            }
        } while (!f22188f.compareAndSet(this, obj, new State(e, ((State) obj).f22196b)));
        Subscriber<E>[] subscriberArr = ((State) obj).f22196b;
        if (subscriberArr != null) {
            for (Subscriber<E> subscriber : subscriberArr) {
                subscriber.mo832E(e);
            }
        }
        this._updating = 0;
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public final <R> void m842h(SelectInstance<? super R> selectInstance, E e, Function2<? super SendChannel<? super E>, ? super Continuation<? super R>, ? extends Object> function2) {
        if (selectInstance.mo314e()) {
            Closed g = m843g(e);
            if (g != null) {
                selectInstance.mo311u(g.m840a());
            } else {
                UndispatchedKt.m395d(function2, this, selectInstance.mo312k());
            }
        }
    }

    /* renamed from: i */
    private final Subscriber<E>[] m841i(Subscriber<E>[] subscriberArr, Subscriber<E> subscriber) {
        int C;
        int length = subscriberArr.length;
        C = ArraysKt___ArraysKt.m2258C(subscriberArr, subscriber);
        if (DebugKt.m1308a()) {
            if (!(C >= 0)) {
                throw new AssertionError();
            }
        }
        if (length == 1) {
            return null;
        }
        Subscriber<E>[] subscriberArr2 = new Subscriber[length - 1];
        ArraysKt___ArraysJvmKt.m2300f(subscriberArr, subscriberArr2, 0, 0, C, 6, null);
        ArraysKt___ArraysJvmKt.m2300f(subscriberArr, subscriberArr2, C, C + 1, 0, 8, null);
        return subscriberArr2;
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    @Nullable
    /* renamed from: A */
    public Object mo805A(E e, @NotNull Continuation<? super Unit> continuation) {
        Object d;
        Closed g = m843g(e);
        if (g == null) {
            d = IntrinsicsKt__IntrinsicsKt.m1920d();
            return g == d ? g : Unit.f20447a;
        }
        throw g.m840a();
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    /* renamed from: C */
    public boolean mo804C() {
        return this._state instanceof Closed;
    }

    @Override // kotlinx.coroutines.channels.BroadcastChannel
    /* renamed from: a */
    public void mo849a(@Nullable CancellationException cancellationException) {
        mo802t(cancellationException);
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    @NotNull
    /* renamed from: r */
    public SelectClause2<E, SendChannel<E>> mo803r() {
        return (SelectClause2<E, SendChannel<? super E>>) new SelectClause2<E, SendChannel<? super E>>() { // from class: kotlinx.coroutines.channels.ConflatedBroadcastChannel$onSend$1
            @Override // kotlinx.coroutines.selects.SelectClause2
            /* renamed from: z */
            public <R> void mo290z(@NotNull SelectInstance<? super R> selectInstance, E e, @NotNull Function2<? super SendChannel<? super E>, ? super Continuation<? super R>, ? extends Object> function2) {
                ConflatedBroadcastChannel.this.m842h(selectInstance, e, function2);
            }
        };
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    /* renamed from: t */
    public boolean mo802t(@Nullable Throwable th) {
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
        } while (!f22188f.compareAndSet(this, obj, th == null ? f22191i : new Closed(th)));
        if (obj != null) {
            Subscriber<E>[] subscriberArr = ((State) obj).f22196b;
            if (subscriberArr != null) {
                for (Subscriber<E> subscriber : subscriberArr) {
                    subscriber.mo802t(th);
                }
            }
            m844f(th);
            return true;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlinx.coroutines.channels.ConflatedBroadcastChannel.State<E>");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.channels.BroadcastChannel
    @NotNull
    /* renamed from: v */
    public ReceiveChannel<E> mo833v() {
        Object obj;
        State state;
        Object obj2;
        Subscriber subscriber = new Subscriber(this);
        do {
            obj = this._state;
            if (obj instanceof Closed) {
                subscriber.mo802t(((Closed) obj).f22194a);
                return subscriber;
            } else if (obj instanceof State) {
                state = (State) obj;
                Object obj3 = state.f22195a;
                if (obj3 != f22192j) {
                    subscriber.mo832E(obj3);
                }
                obj2 = state.f22195a;
                if (obj != null) {
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type kotlinx.coroutines.channels.ConflatedBroadcastChannel.State<E>");
                }
            } else {
                throw new IllegalStateException(("Invalid state " + obj).toString());
            }
        } while (!f22188f.compareAndSet(this, obj, new State(obj2, m846d(state.f22196b, subscriber))));
        return subscriber;
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    /* renamed from: w */
    public void mo801w(@NotNull Function1<? super Throwable, Unit> function1) {
        if (!f22190h.compareAndSet(this, null, function1)) {
            Object obj = this.onCloseHandler;
            if (obj == AbstractChannelKt.f21302e) {
                throw new IllegalStateException("Another handler was already registered and successfully invoked");
            }
            throw new IllegalStateException("Another handler was already registered: " + obj);
        }
        Object obj2 = this._state;
        if ((obj2 instanceof Closed) && f22190h.compareAndSet(this, function1, AbstractChannelKt.f21302e)) {
            function1.invoke(((Closed) obj2).f22194a);
        }
    }
}
