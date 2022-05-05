package kotlinx.coroutines.channels;

import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuationImplKt;
import kotlinx.coroutines.DebugKt;
import kotlinx.coroutines.channels.AbstractSendChannel;
import kotlinx.coroutines.internal.AtomicKt;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.selects.SelectInstance;
import kotlinx.coroutines.selects.SelectKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��X\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0010\u0018��*\u0004\b��\u0010\u00012\u00020\u0002B\u000f\u0012\u0006\u0010'\u001a\u00020\r¢\u0006\u0004\b8\u0010\u0011J\u001d\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0003H\u0014¢\u0006\u0004\b\u0006\u0010\u0007J\u0019\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\t\u001a\u00020\bH\u0014¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00028��H\u0014¢\u0006\u0004\b\u0013\u0010\u0014J#\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00028��2\n\u0010\u0016\u001a\u0006\u0012\u0002\b\u00030\u0015H\u0014¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\u001a\u0010\u001bJ\u0011\u0010\u001c\u001a\u0004\u0018\u00010\nH\u0014¢\u0006\u0004\b\u001c\u0010\u001dJ\u001d\u0010\u001e\u001a\u0004\u0018\u00010\n2\n\u0010\u0016\u001a\u0006\u0012\u0002\b\u00030\u0015H\u0014¢\u0006\u0004\b\u001e\u0010\u001fR\u001e\u0010!\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0016\u0010&\u001a\u00020#8T@\u0014X\u0094\u0004¢\u0006\u0006\u001a\u0004\b$\u0010%R\u0019\u0010'\u001a\u00020\r8\u0006@\u0006¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*R\u0016\u0010+\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010(R\u0016\u0010,\u001a\u00020\u00058D@\u0004X\u0084\u0004¢\u0006\u0006\u001a\u0004\b,\u0010-R\u0016\u0010.\u001a\u00020\u00058D@\u0004X\u0084\u0004¢\u0006\u0006\u001a\u0004\b.\u0010-R\u0016\u0010/\u001a\u00020\u00058D@\u0004X\u0084\u0004¢\u0006\u0006\u001a\u0004\b/\u0010-R\u0016\u00100\u001a\u00020\u00058D@\u0004X\u0084\u0004¢\u0006\u0006\u001a\u0004\b0\u0010-R\u0016\u00101\u001a\u00020\u00058V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b1\u0010-R\u0016\u00102\u001a\u00020\u00058V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b2\u0010-R\u0016\u00103\u001a\u00020\u00058V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b3\u0010-R\u001a\u00106\u001a\u000604j\u0002`58\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b6\u00107¨\u00069"}, d2 = {"Lkotlinx/coroutines/channels/ArrayChannel;", "E", "Lkotlinx/coroutines/channels/AbstractChannel;", "Lkotlinx/coroutines/channels/Receive;", "receive", "", "enqueueReceiveInternal", "(Lkotlinx/coroutines/channels/Receive;)Z", "Lkotlinx/coroutines/channels/Send;", "send", "", "enqueueSend", "(Lkotlinx/coroutines/channels/Send;)Ljava/lang/Object;", "", "currentSize", "", "ensureCapacity", "(I)V", "element", "offerInternal", "(Ljava/lang/Object;)Ljava/lang/Object;", "Lkotlinx/coroutines/selects/SelectInstance;", "select", "offerSelectInternal", "(Ljava/lang/Object;Lkotlinx/coroutines/selects/SelectInstance;)Ljava/lang/Object;", "wasClosed", "onCancelIdempotent", "(Z)V", "pollInternal", "()Ljava/lang/Object;", "pollSelectInternal", "(Lkotlinx/coroutines/selects/SelectInstance;)Ljava/lang/Object;", "", "buffer", "[Ljava/lang/Object;", "", "getBufferDebugString", "()Ljava/lang/String;", "bufferDebugString", "capacity", "I", "getCapacity", "()I", "head", "isBufferAlwaysEmpty", "()Z", "isBufferAlwaysFull", "isBufferEmpty", "isBufferFull", "isClosedForReceive", "isEmpty", "isFull", "Ljava/util/concurrent/locks/ReentrantLock;", "Lkotlinx/coroutines/internal/ReentrantLock;", "lock", "Ljava/util/concurrent/locks/ReentrantLock;", "<init>", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ArrayChannel.class */
public class ArrayChannel<E> extends AbstractChannel<E> {

    /* renamed from: h */
    private final ReentrantLock f21319h;

    /* renamed from: i */
    private Object[] f21320i;

    /* renamed from: j */
    private int f21321j;

    /* renamed from: k */
    private final int f21322k;
    private volatile int size;

    public ArrayChannel(int i) {
        this.f21322k = i;
        boolean z = true;
        if (i < 1) {
            z = false;
        }
        if (z) {
            this.f21319h = new ReentrantLock();
            this.f21320i = new Object[Math.min(this.f21322k, 8)];
            this.size = 0;
            return;
        }
        throw new IllegalArgumentException(("ArrayChannel capacity must be at least 1, but " + this.f21322k + " was specified").toString());
    }

    /* renamed from: i0 */
    private final void m1013i0(int i) {
        Object[] objArr = this.f21320i;
        if (i >= objArr.length) {
            Object[] objArr2 = new Object[Math.min(objArr.length * 2, this.f21322k)];
            for (int i2 = 0; i2 < i; i2++) {
                Object[] objArr3 = this.f21320i;
                objArr2[i2] = objArr3[(this.f21321j + i2) % objArr3.length];
            }
            this.f21320i = objArr2;
            this.f21321j = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.channels.AbstractSendChannel
    /* renamed from: B */
    public final boolean mo809B() {
        return this.size == this.f21322k;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.channels.AbstractSendChannel
    @NotNull
    /* renamed from: E */
    public Object mo832E(E e) {
        ReceiveOrClosed<E> L;
        Symbol z;
        ReentrantLock reentrantLock = this.f21319h;
        reentrantLock.lock();
        try {
            int i = this.size;
            Closed<?> m = m1043m();
            if (m != null) {
                return m;
            }
            if (i >= this.f21322k) {
                return AbstractChannelKt.f21299b;
            }
            this.size = i + 1;
            if (i == 0) {
                do {
                    L = mo1051L();
                    if (L != null) {
                        if (L instanceof Closed) {
                            this.size = i;
                            Intrinsics.m1832c(L);
                            return L;
                        }
                        Intrinsics.m1832c(L);
                        z = L.mo810z(e, null);
                    }
                } while (z == null);
                if (DebugKt.m1308a()) {
                    if (!(z == CancellableContinuationImplKt.f21113a)) {
                        throw new AssertionError();
                    }
                }
                this.size = i;
                Unit unit = Unit.f20447a;
                reentrantLock.unlock();
                Intrinsics.m1832c(L);
                L.mo811n(e);
                Intrinsics.m1832c(L);
                return L.mo812d();
            }
            m1013i0(i);
            this.f21320i[(this.f21321j + i) % this.f21320i.length] = e;
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
        ReentrantLock reentrantLock = this.f21319h;
        reentrantLock.lock();
        try {
            int i = this.size;
            Closed<?> m = m1043m();
            if (m != null) {
                return m;
            }
            if (i >= this.f21322k) {
                return AbstractChannelKt.f21299b;
            }
            this.size = i + 1;
            if (i == 0) {
                while (true) {
                    AbstractSendChannel.TryOfferDesc<E> f = m1045f(e);
                    Object v = selectInstance.mo310v(f);
                    if (v == null) {
                        this.size = i;
                        ReceiveOrClosed<? super E> n = f.m504n();
                        Unit unit = Unit.f20447a;
                        reentrantLock.unlock();
                        Intrinsics.m1832c(n);
                        n.mo811n(e);
                        Intrinsics.m1832c(n);
                        return n.mo812d();
                    } else if (v == AbstractChannelKt.f21299b) {
                        break;
                    } else if (v != AtomicKt.f23891b) {
                        if (v != SelectKt.m306d() && !(v instanceof Closed)) {
                            throw new IllegalStateException(("performAtomicTrySelect(describeTryOffer) returned " + v).toString());
                        }
                        this.size = i;
                        return v;
                    }
                }
            }
            if (!selectInstance.mo314e()) {
                this.size = i;
                return SelectKt.m306d();
            }
            m1013i0(i);
            this.f21320i[(this.f21321j + i) % this.f21320i.length] = e;
            return AbstractChannelKt.f21298a;
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.channels.AbstractChannel
    /* renamed from: T */
    public boolean mo839T(@NotNull Receive<? super E> receive) {
        ReentrantLock reentrantLock = this.f21319h;
        reentrantLock.lock();
        try {
            return super.mo839T(receive);
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // kotlinx.coroutines.channels.AbstractChannel
    /* renamed from: W */
    protected final boolean mo808W() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.channels.AbstractChannel
    /* renamed from: X */
    public final boolean mo807X() {
        return this.size == 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.channels.AbstractChannel
    /* renamed from: Z */
    public void mo838Z(boolean z) {
        if (z) {
            ReentrantLock reentrantLock = this.f21319h;
            reentrantLock.lock();
            try {
                int i = this.size;
                for (int i2 = 0; i2 < i; i2++) {
                    this.f21320i[this.f21321j] = 0;
                    this.f21321j = (this.f21321j + 1) % this.f21320i.length;
                }
                this.size = 0;
                Unit unit = Unit.f20447a;
            } finally {
                reentrantLock.unlock();
            }
        }
        super.mo838Z(z);
    }

    @Override // kotlinx.coroutines.channels.AbstractChannel
    @Nullable
    /* renamed from: c0 */
    protected Object mo837c0() {
        ReentrantLock reentrantLock = this.f21319h;
        reentrantLock.lock();
        try {
            int i = this.size;
            if (i == 0) {
                Object m = m1043m();
                if (m == null) {
                    m = AbstractChannelKt.f21300c;
                }
                return m;
            }
            Object obj = this.f21320i[this.f21321j];
            Send send = null;
            this.f21320i[this.f21321j] = null;
            this.size = i - 1;
            Object obj2 = AbstractChannelKt.f21300c;
            boolean z = false;
            Object obj3 = obj2;
            boolean z2 = false;
            if (i == this.f21322k) {
                send = null;
                while (true) {
                    Send M = m1050M();
                    if (M == null) {
                        z2 = false;
                        obj3 = obj2;
                        break;
                    }
                    Intrinsics.m1832c(M);
                    Symbol a0 = M.mo796a0(null);
                    if (a0 != null) {
                        if (DebugKt.m1308a()) {
                            if (a0 == CancellableContinuationImplKt.f21113a) {
                                z = true;
                            }
                            if (!z) {
                                throw new AssertionError();
                            }
                        }
                        Intrinsics.m1832c(M);
                        obj3 = M.mo798Y();
                        send = M;
                        z2 = true;
                    } else {
                        send = M;
                    }
                }
            }
            if (obj3 != AbstractChannelKt.f21300c && !(obj3 instanceof Closed)) {
                this.size = i;
                this.f21320i[(this.f21321j + i) % this.f21320i.length] = obj3;
            }
            this.f21321j = (this.f21321j + 1) % this.f21320i.length;
            Unit unit = Unit.f20447a;
            if (z2) {
                Intrinsics.m1832c(send);
                send.mo799X();
            }
            return obj;
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x008b, code lost:
        r10 = true;
     */
    @Override // kotlinx.coroutines.channels.AbstractChannel
    @org.jetbrains.annotations.Nullable
    /* renamed from: d0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected java.lang.Object mo836d0(@org.jetbrains.annotations.NotNull kotlinx.coroutines.selects.SelectInstance<?> r5) {
        /*
            Method dump skipped, instructions count: 402
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ArrayChannel.mo836d0(kotlinx.coroutines.selects.SelectInstance):java.lang.Object");
    }

    @Override // kotlinx.coroutines.channels.AbstractChannel, kotlinx.coroutines.channels.ReceiveChannel
    /* renamed from: g */
    public boolean mo817g() {
        ReentrantLock reentrantLock = this.f21319h;
        reentrantLock.lock();
        try {
            return super.mo817g();
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.channels.AbstractSendChannel
    @Nullable
    /* renamed from: i */
    public Object mo1014i(@NotNull Send send) {
        ReentrantLock reentrantLock = this.f21319h;
        reentrantLock.lock();
        try {
            return super.mo1014i(send);
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // kotlinx.coroutines.channels.AbstractSendChannel
    @NotNull
    /* renamed from: k */
    protected String mo835k() {
        return "(buffer:capacity=" + this.f21322k + ",size=" + this.size + ')';
    }

    @Override // kotlinx.coroutines.channels.AbstractSendChannel
    /* renamed from: z */
    protected final boolean mo806z() {
        return false;
    }
}
