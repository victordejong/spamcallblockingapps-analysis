package kotlinx.coroutines.channels;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import kotlinx.coroutines.CancellableContinuationImplKt;
import kotlinx.coroutines.DebugKt;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.selects.SelectInstance;
import kotlinx.coroutines.selects.SelectKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0084\u0001\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0010\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\b\b��\u0018��*\u0004\b��\u0010\u00012\u00020\u00022\u00020\u0003:\u0001KB\u000f\u0012\u0006\u00103\u001a\u000202¢\u0006\u0004\bJ\u0010AJ\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0017¢\u0006\u0004\b\u0007\u0010\bJ\u001f\u0010\u0007\u001a\u00020\u000b2\u000e\u0010\u0005\u001a\n\u0018\u00010\tj\u0004\u0018\u0001`\nH\u0016¢\u0006\u0004\b\u0007\u0010\fJ\u0019\u0010\r\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\r\u0010\bJ\u000f\u0010\u000e\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0019\u0010\u0010\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0010\u0010\bJ\u000f\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0015\u001a\u00028��2\u0006\u0010\u0014\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00028��H\u0014¢\u0006\u0004\b\u0019\u0010\u001aJ#\u0010\u001d\u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00028��2\n\u0010\u001c\u001a\u0006\u0012\u0002\b\u00030\u001bH\u0014¢\u0006\u0004\b\u001d\u0010\u001eJ\u0015\u0010 \u001a\b\u0012\u0004\u0012\u00028��0\u001fH\u0016¢\u0006\u0004\b \u0010!J4\u0010%\u001a\u00020\u000b2\u0010\b\u0002\u0010#\u001a\n\u0012\u0004\u0012\u00028��\u0018\u00010\"2\u0010\b\u0002\u0010$\u001a\n\u0012\u0004\u0012\u00028��\u0018\u00010\"H\u0082\u0010¢\u0006\u0004\b%\u0010&R\u001e\u0010(\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00180'8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010)R\u0016\u0010-\u001a\u00020*8T@\u0014X\u0094\u0004¢\u0006\u0006\u001a\u0004\b+\u0010,R\u001a\u00100\u001a\u00060.j\u0002`/8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b0\u00101R\u0019\u00103\u001a\u0002028\u0006@\u0006¢\u0006\f\n\u0004\b3\u00104\u001a\u0004\b5\u00106R$\u0010;\u001a\u00020\u00112\u0006\u00107\u001a\u00020\u00118B@BX\u0082\u000e¢\u0006\f\u001a\u0004\b8\u0010\u0013\"\u0004\b9\u0010:R\u0016\u0010<\u001a\u00020\u00068T@\u0014X\u0094\u0004¢\u0006\u0006\u001a\u0004\b<\u0010=R\u0016\u0010>\u001a\u00020\u00068T@\u0014X\u0094\u0004¢\u0006\u0006\u001a\u0004\b>\u0010=R$\u0010B\u001a\u0002022\u0006\u00107\u001a\u0002028B@BX\u0082\u000e¢\u0006\f\u001a\u0004\b?\u00106\"\u0004\b@\u0010AR2\u0010E\u001a\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\"0Cj\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\"`D8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bE\u0010FR$\u0010I\u001a\u00020\u00112\u0006\u00107\u001a\u00020\u00118B@BX\u0082\u000e¢\u0006\f\u001a\u0004\bG\u0010\u0013\"\u0004\bH\u0010:¨\u0006L"}, d2 = {"Lkotlinx/coroutines/channels/ArrayBroadcastChannel;", "E", "Lkotlinx/coroutines/channels/BroadcastChannel;", "Lkotlinx/coroutines/channels/AbstractSendChannel;", "", "cause", "", "cancel", "(Ljava/lang/Throwable;)Z", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "", "(Ljava/util/concurrent/CancellationException;)V", "cancelInternal", "checkSubOffers", "()V", "close", "", "computeMinHead", "()J", FirebaseAnalytics.Param.INDEX, "elementAt", "(J)Ljava/lang/Object;", "element", "", "offerInternal", "(Ljava/lang/Object;)Ljava/lang/Object;", "Lkotlinx/coroutines/selects/SelectInstance;", "select", "offerSelectInternal", "(Ljava/lang/Object;Lkotlinx/coroutines/selects/SelectInstance;)Ljava/lang/Object;", "Lkotlinx/coroutines/channels/ReceiveChannel;", "openSubscription", "()Lkotlinx/coroutines/channels/ReceiveChannel;", "Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;", "addSub", "removeSub", "updateHead", "(Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;)V", "", "buffer", "[Ljava/lang/Object;", "", "getBufferDebugString", "()Ljava/lang/String;", "bufferDebugString", "Ljava/util/concurrent/locks/ReentrantLock;", "Lkotlinx/coroutines/internal/ReentrantLock;", "bufferLock", "Ljava/util/concurrent/locks/ReentrantLock;", "", "capacity", "I", "getCapacity", "()I", FirebaseAnalytics.Param.VALUE, "getHead", "setHead", "(J)V", "head", "isBufferAlwaysFull", "()Z", "isBufferFull", "getSize", "setSize", "(I)V", "size", "", "Lkotlinx/coroutines/internal/SubscribersList;", "subscribers", "Ljava/util/List;", "getTail", "setTail", "tail", "<init>", "Subscriber", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ArrayBroadcastChannel.class */
public final class ArrayBroadcastChannel<E> extends AbstractSendChannel<E> implements BroadcastChannel<E> {
    private volatile long _head;
    private volatile int _size;
    private volatile long _tail;

    /* renamed from: h */
    private final ReentrantLock f21313h;

    /* renamed from: i */
    private final Object[] f21314i;

    /* renamed from: j */
    private final List<Subscriber<E>> f21315j;

    /* renamed from: k */
    private final int f21316k;

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��J\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018��*\u0004\b\u0001\u0010\u00012\u00020\u00022\u00020\u0003B\u0015\u0012\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00010\u0014¢\u0006\u0004\b&\u0010'J\r\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\t\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u000b\u0010\u0006J\u0011\u0010\r\u001a\u0004\u0018\u00010\fH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0011\u0010\u000f\u001a\u0004\u0018\u00010\fH\u0014¢\u0006\u0004\b\u000f\u0010\u000eJ\u001d\u0010\u0012\u001a\u0004\u0018\u00010\f2\n\u0010\u0011\u001a\u0006\u0012\u0002\b\u00030\u0010H\u0014¢\u0006\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00010\u00148\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0017\u001a\u00020\u00048T@\u0014X\u0094\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0006R\u0016\u0010\u0018\u001a\u00020\u00048T@\u0014X\u0094\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0006R\u0016\u0010\u0019\u001a\u00020\u00048T@\u0014X\u0094\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u0006R\u0016\u0010\u001a\u001a\u00020\u00048T@\u0014X\u0094\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u0006R$\u0010!\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001b8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u001a\u0010$\u001a\u00060\"j\u0002`#8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%¨\u0006("}, d2 = {"Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;", "E", "Lkotlinx/coroutines/channels/ReceiveChannel;", "Lkotlinx/coroutines/channels/AbstractChannel;", "", "checkOffer", "()Z", "", "cause", "close", "(Ljava/lang/Throwable;)Z", "needsToCheckOfferWithoutLock", "", "peekUnderLock", "()Ljava/lang/Object;", "pollInternal", "Lkotlinx/coroutines/selects/SelectInstance;", "select", "pollSelectInternal", "(Lkotlinx/coroutines/selects/SelectInstance;)Ljava/lang/Object;", "Lkotlinx/coroutines/channels/ArrayBroadcastChannel;", "broadcastChannel", "Lkotlinx/coroutines/channels/ArrayBroadcastChannel;", "isBufferAlwaysEmpty", "isBufferAlwaysFull", "isBufferEmpty", "isBufferFull", "", FirebaseAnalytics.Param.VALUE, "getSubHead", "()J", "setSubHead", "(J)V", "subHead", "Ljava/util/concurrent/locks/ReentrantLock;", "Lkotlinx/coroutines/internal/ReentrantLock;", "subLock", "Ljava/util/concurrent/locks/ReentrantLock;", "<init>", "(Lkotlinx/coroutines/channels/ArrayBroadcastChannel;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber.class */
    public static final class Subscriber<E> extends AbstractChannel<E> implements ReceiveChannel<E> {

        /* renamed from: i */
        private final ArrayBroadcastChannel<E> f21318i;

        /* renamed from: h */
        private final ReentrantLock f21317h = new ReentrantLock();
        private volatile long _subHead = 0;

        public Subscriber(@NotNull ArrayBroadcastChannel<E> arrayBroadcastChannel) {
            this.f21318i = arrayBroadcastChannel;
        }

        /* renamed from: k0 */
        private final boolean m1017k0() {
            if (m1044l() != null) {
                return false;
            }
            return !mo807X() || this.f21318i.m1044l() != null;
        }

        /* renamed from: l0 */
        private final Object m1016l0() {
            long j0 = m1018j0();
            Object l = this.f21318i.m1044l();
            if (j0 >= this.f21318i.m1025V()) {
                if (l == null) {
                    l = m1044l();
                }
                if (l == null) {
                    l = AbstractChannelKt.f21300c;
                }
                return l;
            }
            Object S = this.f21318i.m1028S(j0);
            Closed<?> l2 = m1044l();
            return l2 != null ? l2 : S;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // kotlinx.coroutines.channels.AbstractSendChannel
        /* renamed from: B */
        public boolean mo809B() {
            throw new IllegalStateException("Should not be used".toString());
        }

        @Override // kotlinx.coroutines.channels.AbstractChannel
        /* renamed from: W */
        protected boolean mo808W() {
            return false;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // kotlinx.coroutines.channels.AbstractChannel
        /* renamed from: X */
        public boolean mo807X() {
            return m1018j0() >= this.f21318i.m1025V();
        }

        /* JADX WARN: Finally extract failed */
        @Override // kotlinx.coroutines.channels.AbstractChannel
        @Nullable
        /* renamed from: c0 */
        protected Object mo837c0() {
            ReentrantLock reentrantLock = this.f21317h;
            reentrantLock.lock();
            try {
                Object l0 = m1016l0();
                boolean z = true;
                if (!(l0 instanceof Closed) && l0 != AbstractChannelKt.f21300c) {
                    m1015m0(m1018j0() + 1);
                    z = true;
                } else {
                    z = false;
                }
                reentrantLock.unlock();
                Closed closed = (Closed) (!(l0 instanceof Closed) ? null : l0);
                if (closed != null) {
                    mo802t(closed.f22187i);
                }
                if (m1019i0()) {
                }
                if (z) {
                    ArrayBroadcastChannel.m1020a0(this.f21318i, null, null, 3, null);
                }
                return l0;
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }

        /* JADX WARN: Finally extract failed */
        @Override // kotlinx.coroutines.channels.AbstractChannel
        @Nullable
        /* renamed from: d0 */
        protected Object mo836d0(@NotNull SelectInstance<?> selectInstance) {
            Object obj;
            ReentrantLock reentrantLock = this.f21317h;
            reentrantLock.lock();
            try {
                Object l0 = m1016l0();
                boolean z = true;
                z = false;
                if (l0 instanceof Closed) {
                    obj = l0;
                } else if (l0 == AbstractChannelKt.f21300c) {
                    obj = l0;
                } else if (!selectInstance.mo314e()) {
                    obj = SelectKt.m306d();
                } else {
                    m1015m0(m1018j0() + 1);
                    z = true;
                    obj = l0;
                }
                reentrantLock.unlock();
                Closed closed = (Closed) (!(obj instanceof Closed) ? null : obj);
                if (closed != null) {
                    mo802t(closed.f22187i);
                }
                if (m1019i0()) {
                }
                if (z) {
                    ArrayBroadcastChannel.m1020a0(this.f21318i, null, null, 3, null);
                }
                return obj;
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }

        /* renamed from: i0 */
        public final boolean m1019i0() {
            Closed closed;
            boolean z = false;
            while (true) {
                closed = null;
                if (!m1017k0()) {
                    break;
                } else if (!this.f21317h.tryLock()) {
                    closed = null;
                    break;
                } else {
                    try {
                        E e = (E) m1016l0();
                        if (e != AbstractChannelKt.f21300c) {
                            if (e instanceof Closed) {
                                closed = (Closed) e;
                                break;
                            }
                            ReceiveOrClosed<E> L = mo1051L();
                            closed = null;
                            if (L == null) {
                                break;
                            } else if (L instanceof Closed) {
                                closed = null;
                                break;
                            } else {
                                Symbol z2 = L.mo810z(e, null);
                                if (z2 != null) {
                                    if (DebugKt.m1308a()) {
                                        if (!(z2 == CancellableContinuationImplKt.f21113a)) {
                                            throw new AssertionError();
                                        }
                                    }
                                    m1015m0(m1018j0() + 1);
                                    this.f21317h.unlock();
                                    Intrinsics.m1832c(L);
                                    L.mo811n(e);
                                    z = true;
                                }
                            }
                        }
                        this.f21317h.unlock();
                    } finally {
                        this.f21317h.unlock();
                    }
                }
            }
            if (closed != null) {
                mo802t(closed.f22187i);
            }
            return z;
        }

        /* renamed from: j0 */
        public final long m1018j0() {
            return this._subHead;
        }

        /* renamed from: m0 */
        public final void m1015m0(long j) {
            this._subHead = j;
        }

        @Override // kotlinx.coroutines.channels.AbstractSendChannel, kotlinx.coroutines.channels.SendChannel
        /* renamed from: t */
        public boolean mo802t(@Nullable Throwable th) {
            boolean t = super.mo802t(th);
            if (t) {
                ArrayBroadcastChannel.m1020a0(this.f21318i, null, this, 1, null);
                ReentrantLock reentrantLock = this.f21317h;
                reentrantLock.lock();
                try {
                    m1015m0(this.f21318i.m1025V());
                    Unit unit = Unit.f20447a;
                } finally {
                    reentrantLock.unlock();
                }
            }
            return t;
        }

        @Override // kotlinx.coroutines.channels.AbstractSendChannel
        /* renamed from: z */
        protected boolean mo806z() {
            throw new IllegalStateException("Should not be used".toString());
        }
    }

    /* renamed from: P */
    private final boolean m1031P(Throwable th) {
        boolean t = mo802t(th);
        for (Subscriber<E> subscriber : this.f21315j) {
            subscriber.m1075Q(th);
        }
        return t;
    }

    /* renamed from: Q */
    private final void m1030Q() {
        boolean z = false;
        boolean z2 = false;
        for (Subscriber<E> subscriber : this.f21315j) {
            if (subscriber.m1019i0()) {
                z = true;
            }
            z2 = true;
        }
        if (z || !z2) {
            m1020a0(this, null, null, 3, null);
        }
    }

    /* renamed from: R */
    private final long m1029R() {
        long j = Long.MAX_VALUE;
        for (Subscriber<E> subscriber : this.f21315j) {
            j = RangesKt___RangesKt.m1710e(j, subscriber.m1018j0());
        }
        return j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: S */
    public final E m1028S(long j) {
        return (E) this.f21314i[(int) (j % this.f21316k)];
    }

    /* renamed from: T */
    private final long m1027T() {
        return this._head;
    }

    /* renamed from: U */
    private final int m1026U() {
        return this._size;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: V */
    public final long m1025V() {
        return this._tail;
    }

    /* renamed from: W */
    private final void m1024W(long j) {
        this._head = j;
    }

    /* renamed from: X */
    private final void m1023X(int i) {
        this._size = i;
    }

    /* renamed from: Y */
    private final void m1022Y(long j) {
        this._tail = j;
    }

    /* JADX WARN: Code restructure failed: missing block: B:81:0x0097, code lost:
        continue;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: Z */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void m1021Z(kotlinx.coroutines.channels.ArrayBroadcastChannel.Subscriber<E> r7, kotlinx.coroutines.channels.ArrayBroadcastChannel.Subscriber<E> r8) {
        /*
            Method dump skipped, instructions count: 423
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ArrayBroadcastChannel.m1021Z(kotlinx.coroutines.channels.ArrayBroadcastChannel$Subscriber, kotlinx.coroutines.channels.ArrayBroadcastChannel$Subscriber):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a0 */
    static /* synthetic */ void m1020a0(ArrayBroadcastChannel arrayBroadcastChannel, Subscriber subscriber, Subscriber subscriber2, int i, Object obj) {
        if ((i & 1) != 0) {
            subscriber = null;
        }
        if ((i & 2) != 0) {
            subscriber2 = null;
        }
        arrayBroadcastChannel.m1021Z(subscriber, subscriber2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.channels.AbstractSendChannel
    /* renamed from: B */
    public boolean mo809B() {
        return m1026U() >= this.f21316k;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.channels.AbstractSendChannel
    @NotNull
    /* renamed from: E */
    public Object mo832E(E e) {
        ReentrantLock reentrantLock = this.f21313h;
        reentrantLock.lock();
        try {
            Closed<?> m = m1043m();
            if (m != null) {
                return m;
            }
            int U = m1026U();
            if (U >= this.f21316k) {
                return AbstractChannelKt.f21299b;
            }
            long V = m1025V();
            this.f21314i[(int) (V % this.f21316k)] = e;
            m1023X(U + 1);
            m1022Y(V + 1);
            Unit unit = Unit.f20447a;
            reentrantLock.unlock();
            m1030Q();
            return AbstractChannelKt.f21298a;
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.channels.AbstractSendChannel
    @NotNull
    /* renamed from: F */
    public Object mo831F(E e, @NotNull SelectInstance<?> selectInstance) {
        ReentrantLock reentrantLock = this.f21313h;
        reentrantLock.lock();
        try {
            Closed<?> m = m1043m();
            if (m != null) {
                return m;
            }
            int U = m1026U();
            if (U >= this.f21316k) {
                return AbstractChannelKt.f21299b;
            }
            if (!selectInstance.mo314e()) {
                return SelectKt.m306d();
            }
            long V = m1025V();
            this.f21314i[(int) (V % this.f21316k)] = e;
            m1023X(U + 1);
            m1022Y(V + 1);
            Unit unit = Unit.f20447a;
            reentrantLock.unlock();
            m1030Q();
            return AbstractChannelKt.f21298a;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // kotlinx.coroutines.channels.BroadcastChannel
    /* renamed from: a */
    public void mo849a(@Nullable CancellationException cancellationException) {
        m1031P(cancellationException);
    }

    @Override // kotlinx.coroutines.channels.AbstractSendChannel
    @NotNull
    /* renamed from: k */
    protected String mo835k() {
        return "(buffer:capacity=" + this.f21314i.length + ",size=" + m1026U() + ')';
    }

    @Override // kotlinx.coroutines.channels.AbstractSendChannel, kotlinx.coroutines.channels.SendChannel
    /* renamed from: t */
    public boolean mo802t(@Nullable Throwable th) {
        if (!super.mo802t(th)) {
            return false;
        }
        m1030Q();
        return true;
    }

    @Override // kotlinx.coroutines.channels.BroadcastChannel
    @NotNull
    /* renamed from: v */
    public ReceiveChannel<E> mo833v() {
        Subscriber subscriber = new Subscriber(this);
        m1020a0(this, subscriber, null, 2, null);
        return subscriber;
    }

    @Override // kotlinx.coroutines.channels.AbstractSendChannel
    /* renamed from: z */
    protected boolean mo806z() {
        return false;
    }
}
