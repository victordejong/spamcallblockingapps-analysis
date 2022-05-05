package kotlinx.coroutines.internal;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.DebugKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\b\u001a\b��\u0018�� /*\b\b��\u0010\u0002*\u00020\u0001:\u0002/0B\u0017\u0012\u0006\u0010$\u001a\u00020\u0004\u0012\u0006\u0010(\u001a\u00020\r¢\u0006\u0004\b-\u0010.J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00028��¢\u0006\u0004\b\u0005\u0010\u0006J'\u0010\n\u001a\u0012\u0012\u0004\u0012\u00028��0��j\b\u0012\u0004\u0012\u00028��`\t2\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u000bJ'\u0010\f\u001a\u0012\u0012\u0004\u0012\u00028��0��j\b\u0012\u0004\u0012\u00028��`\t2\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\f\u0010\u000bJ\r\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000e\u0010\u000fJ3\u0010\u0011\u001a\u0016\u0012\u0004\u0012\u00028��\u0018\u00010��j\n\u0012\u0004\u0012\u00028��\u0018\u0001`\t2\u0006\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00028��H\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\r\u0010\u0013\u001a\u00020\r¢\u0006\u0004\b\u0013\u0010\u000fJ-\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00010\u0017\"\u0004\b\u0001\u0010\u00142\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0015¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u0013\u0010\u001c\u001a\b\u0012\u0004\u0012\u00028��0��¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u001e\u0010\u001fJ3\u0010\"\u001a\u0016\u0012\u0004\u0012\u00028��\u0018\u00010��j\n\u0012\u0004\u0012\u00028��\u0018\u0001`\t2\u0006\u0010 \u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\"\u0010#R\u0016\u0010$\u001a\u00020\u00048\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%R\u0013\u0010&\u001a\u00020\r8F@\u0006¢\u0006\u0006\u001a\u0004\b&\u0010\u000fR\u0016\u0010'\u001a\u00020\u00048\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010%R\u0016\u0010(\u001a\u00020\r8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010)R\u0013\u0010,\u001a\u00020\u00048F@\u0006¢\u0006\u0006\u001a\u0004\b*\u0010+¨\u00061"}, d2 = {"Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;", "", "E", "element", "", "addLast", "(Ljava/lang/Object;)I", "", "state", "Lkotlinx/coroutines/internal/Core;", "allocateNextCopy", "(J)Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;", "allocateOrGetNextCopy", "", "close", "()Z", FirebaseAnalytics.Param.INDEX, "fillPlaceholder", "(ILjava/lang/Object;)Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;", "isClosed", "R", "Lkotlin/Function1;", "transform", "", "map", "(Lkotlin/jvm/functions/Function1;)Ljava/util/List;", "markFrozen", "()J", "next", "()Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;", "removeFirstOrNull", "()Ljava/lang/Object;", "oldHead", "newHead", "removeSlowPath", "(II)Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;", "capacity", "I", "isEmpty", "mask", "singleConsumer", "Z", "getSize", "()I", "size", "<init>", "(IZ)V", "Companion", "Placeholder", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/internal/LockFreeTaskQueueCore.class */
public final class LockFreeTaskQueueCore<E> {
    private volatile Object _next = null;
    private volatile long _state = 0;

    /* renamed from: a */
    private final int f23933a;

    /* renamed from: b */
    private AtomicReferenceArray f23934b;

    /* renamed from: c */
    private final int f23935c;

    /* renamed from: d */
    private final boolean f23936d;

    /* renamed from: h */
    public static final Companion f23932h = new Companion(null);
    @JvmField
    @NotNull

    /* renamed from: g */
    public static final Symbol f23931g = new Symbol("REMOVE_FROZEN");

    /* renamed from: e */
    private static final AtomicReferenceFieldUpdater f23929e = AtomicReferenceFieldUpdater.newUpdater(LockFreeTaskQueueCore.class, Object.class, "_next");

    /* renamed from: f */
    private static final AtomicLongFieldUpdater f23930f = AtomicLongFieldUpdater.newUpdater(LockFreeTaskQueueCore.class, "_state");

    @Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0080\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b*\u0010+J\u0011\u0010\u0003\u001a\u00020\u0002*\u00020\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u0019\u0010\u0006\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0019\u0010\t\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\b\u001a\u00020\u0002¢\u0006\u0004\b\t\u0010\u0007JR\u0010\u0011\u001a\u00028\u0001\"\u0004\b\u0001\u0010\n*\u00020\u000126\u0010\u0010\u001a2\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00028\u00010\u000bH\u0086\b¢\u0006\u0004\b\u0011\u0010\u0012J\u001c\u0010\u0014\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u0001H\u0086\u0004¢\u0006\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0016\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0016\u0010\u0018\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0018\u0010\u0017R\u0016\u0010\u0019\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0019\u0010\u0017R\u0016\u0010\u001a\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001a\u0010\u0017R\u0016\u0010\u001b\u001a\u00020\u00018\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0016\u0010\u001d\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001d\u0010\u0017R\u0016\u0010\u001e\u001a\u00020\u00018\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001e\u0010\u001cR\u0016\u0010\u001f\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001f\u0010\u0017R\u0016\u0010 \u001a\u00020\u00018\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b \u0010\u001cR\u0016\u0010!\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b!\u0010\u0017R\u0016\u0010\"\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\"\u0010\u0017R\u0016\u0010#\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b#\u0010\u0017R\u0016\u0010$\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b$\u0010\u0017R\u0016\u0010&\u001a\u00020%8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b&\u0010'R\u0016\u0010(\u001a\u00020\u00018\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b(\u0010\u001cR\u0016\u0010)\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b)\u0010\u0017¨\u0006,"}, d2 = {"Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;", "", "", "addFailReason", "(J)I", "newHead", "updateHead", "(JI)J", "newTail", "updateTail", "T", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "head", "tail", "block", "withState", "(JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "other", "wo", "(JJ)J", "ADD_CLOSED", "I", "ADD_FROZEN", "ADD_SUCCESS", "CAPACITY_BITS", "CLOSED_MASK", "J", "CLOSED_SHIFT", "FROZEN_MASK", "FROZEN_SHIFT", "HEAD_MASK", "HEAD_SHIFT", "INITIAL_CAPACITY", "MAX_CAPACITY_MASK", "MIN_ADD_SPIN_CAPACITY", "Lkotlinx/coroutines/internal/Symbol;", "REMOVE_FROZEN", "Lkotlinx/coroutines/internal/Symbol;", "TAIL_MASK", "TAIL_SHIFT", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final int m488a(long j) {
            return (j & 2305843009213693952L) != 0 ? 2 : 1;
        }

        /* renamed from: b */
        public final long m487b(long j, int i) {
            return m485d(j, 1073741823L) | (i << 0);
        }

        /* renamed from: c */
        public final long m486c(long j, int i) {
            return m485d(j, 1152921503533105152L) | (i << 30);
        }

        /* renamed from: d */
        public final long m485d(long j, long j2) {
            return j & (j2 ^ (-1));
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b��\u0018��B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0004\u0010\u0005R\u0016\u0010\u0002\u001a\u00020\u00018\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Placeholder;", "", FirebaseAnalytics.Param.INDEX, "I", "<init>", "(I)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/internal/LockFreeTaskQueueCore$Placeholder.class */
    public static final class Placeholder {
        @JvmField

        /* renamed from: a */
        public final int f23937a;

        public Placeholder(int i) {
            this.f23937a = i;
        }
    }

    public LockFreeTaskQueueCore(int i, boolean z) {
        this.f23935c = i;
        this.f23936d = z;
        boolean z2 = true;
        this.f23933a = i - 1;
        this.f23934b = new AtomicReferenceArray(this.f23935c);
        if (this.f23933a <= 1073741823) {
            if ((this.f23935c & this.f23933a) != 0) {
                z2 = false;
            }
            if (!z2) {
                throw new IllegalStateException("Check failed.".toString());
            }
            return;
        }
        throw new IllegalStateException("Check failed.".toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    private final LockFreeTaskQueueCore<E> m498b(long j) {
        LockFreeTaskQueueCore<E> lockFreeTaskQueueCore = new LockFreeTaskQueueCore<>(this.f23935c * 2, this.f23936d);
        int i = (int) ((1073741823 & j) >> 0);
        int i2 = (int) ((1152921503533105152L & j) >> 30);
        while (true) {
            int i3 = this.f23933a;
            if ((i & i3) != (i2 & i3)) {
                Object obj = this.f23934b.get(i3 & i);
                if (obj == null) {
                    obj = new Placeholder(i);
                }
                lockFreeTaskQueueCore.f23934b.set(lockFreeTaskQueueCore.f23933a & i, obj);
                i++;
            } else {
                lockFreeTaskQueueCore._state = f23932h.m485d(j, 1152921504606846976L);
                return lockFreeTaskQueueCore;
            }
        }
    }

    /* renamed from: c */
    private final LockFreeTaskQueueCore<E> m497c(long j) {
        while (true) {
            LockFreeTaskQueueCore<E> lockFreeTaskQueueCore = (LockFreeTaskQueueCore) this._next;
            if (lockFreeTaskQueueCore != null) {
                return lockFreeTaskQueueCore;
            }
            f23929e.compareAndSet(this, null, m498b(j));
        }
    }

    /* renamed from: e */
    private final LockFreeTaskQueueCore<E> m495e(int i, E e) {
        Object obj = this.f23934b.get(this.f23933a & i);
        if (!(obj instanceof Placeholder) || ((Placeholder) obj).f23937a != i) {
            return null;
        }
        this.f23934b.set(i & this.f23933a, e);
        return this;
    }

    /* renamed from: h */
    private final long m492h() {
        long j;
        long j2;
        do {
            j = this._state;
            if ((j & 1152921504606846976L) != 0) {
                return j;
            }
            j2 = j | 1152921504606846976L;
        } while (!f23930f.compareAndSet(this, j, j2));
        return j2;
    }

    /* renamed from: k */
    private final LockFreeTaskQueueCore<E> m489k(int i, int i2) {
        long j;
        int i3;
        do {
            j = this._state;
            boolean z = false;
            i3 = (int) ((1073741823 & j) >> 0);
            if (DebugKt.m1308a()) {
                if (i3 == i) {
                    z = true;
                }
                if (!z) {
                    throw new AssertionError();
                }
            }
            if ((1152921504606846976L & j) != 0) {
                return m491i();
            }
        } while (!f23930f.compareAndSet(this, j, f23932h.m487b(j, i2)));
        this.f23934b.set(this.f23933a & i3, null);
        return null;
    }

    /* renamed from: a */
    public final int m499a(@NotNull E e) {
        while (true) {
            long j = this._state;
            if ((3458764513820540928L & j) != 0) {
                return f23932h.m488a(j);
            }
            int i = (int) ((1073741823 & j) >> 0);
            int i2 = (int) ((1152921503533105152L & j) >> 30);
            int i3 = this.f23933a;
            if (((i2 + 2) & i3) == (i & i3)) {
                return 1;
            }
            if (!this.f23936d && this.f23934b.get(i2 & i3) != null) {
                int i4 = this.f23935c;
                if (i4 < 1024 || ((i2 - i) & 1073741823) > (i4 >> 1)) {
                    return 1;
                }
            } else if (f23930f.compareAndSet(this, j, f23932h.m486c(j, (i2 + 1) & 1073741823))) {
                this.f23934b.set(i2 & i3, e);
                LockFreeTaskQueueCore<E> lockFreeTaskQueueCore = this;
                while ((lockFreeTaskQueueCore._state & 1152921504606846976L) != 0) {
                    lockFreeTaskQueueCore = lockFreeTaskQueueCore.m491i().m495e(i2, e);
                    if (lockFreeTaskQueueCore == null) {
                        return 0;
                    }
                }
                return 0;
            }
        }
    }

    /* renamed from: d */
    public final boolean m496d() {
        long j;
        do {
            j = this._state;
            if ((j & 2305843009213693952L) != 0) {
                return true;
            }
            if ((1152921504606846976L & j) != 0) {
                return false;
            }
        } while (!f23930f.compareAndSet(this, j, j | 2305843009213693952L));
        return true;
    }

    /* renamed from: f */
    public final int m494f() {
        long j = this._state;
        return 1073741823 & (((int) ((j & 1152921503533105152L) >> 30)) - ((int) ((1073741823 & j) >> 0)));
    }

    /* renamed from: g */
    public final boolean m493g() {
        long j = this._state;
        boolean z = false;
        if (((int) ((1073741823 & j) >> 0)) == ((int) ((j & 1152921503533105152L) >> 30))) {
            z = true;
        }
        return z;
    }

    @NotNull
    /* renamed from: i */
    public final LockFreeTaskQueueCore<E> m491i() {
        return m497c(m492h());
    }

    @Nullable
    /* renamed from: j */
    public final Object m490j() {
        while (true) {
            long j = this._state;
            if ((1152921504606846976L & j) != 0) {
                return f23931g;
            }
            int i = (int) ((1073741823 & j) >> 0);
            int i2 = (int) ((1152921503533105152L & j) >> 30);
            int i3 = this.f23933a;
            if ((i2 & i3) == (i & i3)) {
                return null;
            }
            Object obj = this.f23934b.get(i3 & i);
            if (obj == null) {
                if (this.f23936d) {
                    return null;
                }
            } else if (obj instanceof Placeholder) {
                return null;
            } else {
                int i4 = (i + 1) & 1073741823;
                if (f23930f.compareAndSet(this, j, f23932h.m487b(j, i4))) {
                    this.f23934b.set(this.f23933a & i, null);
                    return obj;
                } else if (this.f23936d) {
                    LockFreeTaskQueueCore<E> lockFreeTaskQueueCore = this;
                    do {
                        lockFreeTaskQueueCore = lockFreeTaskQueueCore.m489k(i, i4);
                    } while (lockFreeTaskQueueCore != null);
                    return obj;
                }
            }
        }
    }
}
