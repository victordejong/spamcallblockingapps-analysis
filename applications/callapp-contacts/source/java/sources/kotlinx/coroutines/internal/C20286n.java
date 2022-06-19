package kotlinx.coroutines.internal;

import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.C20159ao;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\b\u0016\b��\u0018�� /*\b\b��\u0010\u0002*\u00020\u00012\u00020\u0001:\u0002/0B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\n\u001a\u00020\u00032\u0006\u0010\t\u001a\u00028��¢\u0006\u0004\b\n\u0010\u000bJ'\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00028��0��j\b\u0012\u0004\u0012\u00028��`\u000e2\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J'\u0010\u0011\u001a\u0012\u0012\u0004\u0012\u00028��0��j\b\u0012\u0004\u0012\u00028��`\u000e2\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0011\u0010\u0010J\r\u0010\u0012\u001a\u00020\u0005¢\u0006\u0004\b\u0012\u0010\u0013J3\u0010\u0015\u001a\u0016\u0012\u0004\u0012\u00028��\u0018\u00010��j\n\u0012\u0004\u0012\u00028��\u0018\u0001`\u000e2\u0006\u0010\u0014\u001a\u00020\u00032\u0006\u0010\t\u001a\u00028��H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\r\u0010\u0017\u001a\u00020\u0005¢\u0006\u0004\b\u0017\u0010\u0013J-\u0010\u001c\u001a\b\u0012\u0004\u0012\u00028\u00010\u001b\"\u0004\b\u0001\u0010\u00182\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0019¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\fH\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u0013\u0010 \u001a\b\u0012\u0004\u0012\u00028��0��¢\u0006\u0004\b \u0010!J\u000f\u0010\"\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\"\u0010#J3\u0010&\u001a\u0016\u0012\u0004\u0012\u00028��\u0018\u00010��j\n\u0012\u0004\u0012\u00028��\u0018\u0001`\u000e2\u0006\u0010$\u001a\u00020\u00032\u0006\u0010%\u001a\u00020\u0003H\u0002¢\u0006\u0004\b&\u0010'R\u0016\u0010\u0004\u001a\u00020\u00038\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010(R\u0013\u0010)\u001a\u00020\u00058F@\u0006¢\u0006\u0006\u001a\u0004\b)\u0010\u0013R\u0016\u0010*\u001a\u00020\u00038\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010(R\u0016\u0010\u0006\u001a\u00020\u00058\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010+R\u0013\u0010.\u001a\u00020\u00038F@\u0006¢\u0006\u0006\u001a\u0004\b,\u0010-¨\u00061"}, m4298d2 = {"Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;", "", "E", "", "capacity", "", "singleConsumer", "<init>", "(IZ)V", "element", "addLast", "(Ljava/lang/Object;)I", "", VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, "Lkotlinx/coroutines/internal/Core;", "allocateNextCopy", "(J)Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;", "allocateOrGetNextCopy", EventConstants.CLOSE, "()Z", "index", "fillPlaceholder", "(ILjava/lang/Object;)Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;", "isClosed", "R", "Lkotlin/Function1;", "transform", "", "map", "(Lkotlin/jvm/functions/Function1;)Ljava/util/List;", "markFrozen", "()J", "next", "()Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;", "removeFirstOrNull", "()Ljava/lang/Object;", "oldHead", "newHead", "removeSlowPath", "(II)Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;", "I", "isEmpty", "mask", "Z", "getSize", "()I", "size", "Companion", "Placeholder", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.internal.n */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/internal/n.class */
public final class C20286n<E> {
    private volatile /* synthetic */ Object _next = null;
    volatile /* synthetic */ long _state = 0;

    /* renamed from: c */
    private final int f66758c;

    /* renamed from: f */
    private /* synthetic */ AtomicReferenceArray f66759f;

    /* renamed from: g */
    private final int f66760g;

    /* renamed from: h */
    private final boolean f66761h;

    /* renamed from: b */
    public static final C20287a f66755b = new C20287a(null);

    /* renamed from: a */
    public static final C20296v f66754a = new C20296v("REMOVE_FROZEN");

    /* renamed from: d */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f66756d = AtomicReferenceFieldUpdater.newUpdater(C20286n.class, Object.class, "_next");

    /* renamed from: e */
    private static final /* synthetic */ AtomicLongFieldUpdater f66757e = AtomicLongFieldUpdater.newUpdater(C20286n.class, "_state");

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0080\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\n\u0010\u0016\u001a\u00020\u0004*\u00020\tJ\u0012\u0010\u0017\u001a\u00020\t*\u00020\t2\u0006\u0010\u0018\u001a\u00020\u0004J\u0012\u0010\u0019\u001a\u00020\t*\u00020\t2\u0006\u0010\u001a\u001a\u00020\u0004JP\u0010\u001b\u001a\u0002H\u001c\"\u0004\b\u0001\u0010\u001c*\u00020\t26\u0010\u001d\u001a2\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u001f\u0012\b\b \u0012\u0004\b\b(!\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u001f\u0012\b\b \u0012\u0004\b\b(\"\u0012\u0004\u0012\u0002H\u001c0\u001eH\u0086\b¢\u0006\u0002\u0010#J\u0015\u0010$\u001a\u00020\t*\u00020\t2\u0006\u0010%\u001a\u00020\tH\u0086\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\tX\u0086T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\tX\u0086T¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\tX\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u0010\u0010\u0012\u001a\u00020\u00138\u0006X\u0087\u0004¢\u0006\u0002\n��R\u000e\u0010\u0014\u001a\u00020\tX\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006&"}, m4298d2 = {"Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;", "", "()V", "ADD_CLOSED", "", "ADD_FROZEN", "ADD_SUCCESS", "CAPACITY_BITS", "CLOSED_MASK", "", "CLOSED_SHIFT", "FROZEN_MASK", "FROZEN_SHIFT", "HEAD_MASK", "HEAD_SHIFT", "INITIAL_CAPACITY", "MAX_CAPACITY_MASK", "MIN_ADD_SPIN_CAPACITY", "REMOVE_FROZEN", "Lkotlinx/coroutines/internal/Symbol;", "TAIL_MASK", "TAIL_SHIFT", "addFailReason", "updateHead", "newHead", "updateTail", "newTail", "withState", "T", "block", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "head", "tail", "(JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "wo", "other", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: kotlinx.coroutines.internal.n$a */
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/internal/n$a.class */
    public static final class C20287a {
        private C20287a() {
        }

        public /* synthetic */ C20287a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public static int m835a(long j) {
            return (j & 2305843009213693952L) != 0 ? 2 : 1;
        }

        /* renamed from: a */
        public static long m834a(long j, int i) {
            return (j & (-1073741824)) | (i << 0);
        }

        /* renamed from: b */
        public static long m833b(long j, int i) {
            return (j & (-1152921503533105153L)) | (i << 30);
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n\u0002\b\u0002\b��\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n��¨\u0006\u0005"}, m4298d2 = {"Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Placeholder;", "", "index", "", "(I)V", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: kotlinx.coroutines.internal.n$b */
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/internal/n$b.class */
    public static final class C20288b {

        /* renamed from: a */
        public final int f66762a;

        public C20288b(int i) {
            this.f66762a = i;
        }
    }

    public C20286n(int i, boolean z) {
        this.f66760g = i;
        this.f66761h = z;
        int i2 = i - 1;
        this.f66758c = i2;
        this.f66759f = new AtomicReferenceArray(i);
        if (i2 <= 1073741823) {
            if (!((i & i2) == 0)) {
                throw new IllegalStateException("Check failed.".toString());
            }
            return;
        }
        throw new IllegalStateException("Check failed.".toString());
    }

    /* renamed from: a */
    private final C20286n<E> m844a(int i, int i2) {
        long j;
        int i3;
        do {
            j = this._state;
            boolean z = false;
            i3 = (int) ((1073741823 & j) >> 0);
            if (C20159ao.m1083a()) {
                if (i3 == i) {
                    z = true;
                }
                if (!z) {
                    throw new AssertionError();
                }
            }
            if ((1152921504606846976L & j) != 0) {
                return m837d();
            }
        } while (!f66757e.compareAndSet(this, j, C20287a.m834a(j, i2)));
        this.f66759f.set(this.f66758c & i3, null);
        return null;
    }

    /* renamed from: a */
    private final C20286n<E> m843a(int i, E e) {
        Object obj = this.f66759f.get(this.f66758c & i);
        if (!(obj instanceof C20288b) || ((C20288b) obj).f66762a != i) {
            return null;
        }
        this.f66759f.set(i & this.f66758c, e);
        return this;
    }

    /* renamed from: a */
    private final C20286n<E> m842a(long j) {
        while (true) {
            C20286n<E> c20286n = (C20286n) this._next;
            if (c20286n != null) {
                return c20286n;
            }
            f66756d.compareAndSet(this, null, m839b(j));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    private final C20286n<E> m839b(long j) {
        C20286n<E> c20286n = new C20286n<>(this.f66760g * 2, this.f66761h);
        int i = (int) ((1073741823 & j) >> 0);
        int i2 = (int) ((1152921503533105152L & j) >> 30);
        while (true) {
            int i3 = this.f66758c;
            if ((i & i3) == (i2 & i3)) {
                c20286n._state = j & (-1152921504606846977L);
                return c20286n;
            }
            Object obj = this.f66759f.get(i3 & i);
            C20288b c20288b = obj;
            if (obj == null) {
                c20288b = new C20288b(i);
            }
            c20286n.f66759f.set(c20286n.f66758c & i, c20288b);
            i++;
        }
    }

    /* renamed from: e */
    private final long m836e() {
        long j;
        long j2;
        do {
            j = this._state;
            if ((j & 1152921504606846976L) != 0) {
                return j;
            }
            j2 = j | 1152921504606846976L;
        } while (!f66757e.compareAndSet(this, j, j2));
        return j2;
    }

    /* renamed from: a */
    public final int m841a(E e) {
        while (true) {
            long j = this._state;
            if ((3458764513820540928L & j) != 0) {
                return C20287a.m835a(j);
            }
            int i = (int) ((1073741823 & j) >> 0);
            int i2 = (int) ((1152921503533105152L & j) >> 30);
            int i3 = this.f66758c;
            if (((i2 + 2) & i3) == (i & i3)) {
                return 1;
            }
            if (!this.f66761h && this.f66759f.get(i2 & i3) != null) {
                int i4 = this.f66760g;
                if (i4 < 1024 || ((i2 - i) & 1073741823) > (i4 >> 1)) {
                    return 1;
                }
            } else if (f66757e.compareAndSet(this, j, C20287a.m833b(j, (i2 + 1) & 1073741823))) {
                this.f66759f.set(i2 & i3, e);
                C20286n<E> c20286n = this;
                while ((c20286n._state & 1152921504606846976L) != 0) {
                    C20286n<E> m843a = c20286n.m837d().m843a(i2, (int) e);
                    c20286n = m843a;
                    if (m843a == null) {
                        return 0;
                    }
                }
                return 0;
            }
        }
    }

    /* renamed from: a */
    public final boolean m845a() {
        long j = this._state;
        return ((int) ((1073741823 & j) >> 0)) == ((int) ((j & 1152921503533105152L) >> 30));
    }

    /* renamed from: b */
    public final boolean m840b() {
        long j;
        do {
            j = this._state;
            if ((j & 2305843009213693952L) != 0) {
                return true;
            }
            if ((1152921504606846976L & j) != 0) {
                return false;
            }
        } while (!f66757e.compareAndSet(this, j, j | 2305843009213693952L));
        return true;
    }

    /* renamed from: c */
    public final Object m838c() {
        C20286n<E> m844a;
        while (true) {
            long j = this._state;
            if ((1152921504606846976L & j) != 0) {
                return f66754a;
            }
            int i = (int) ((1073741823 & j) >> 0);
            int i2 = (int) ((1152921503533105152L & j) >> 30);
            int i3 = this.f66758c;
            if ((i2 & i3) == (i & i3)) {
                return null;
            }
            Object obj = this.f66759f.get(i3 & i);
            if (obj == null) {
                if (this.f66761h) {
                    return null;
                }
            } else if (obj instanceof C20288b) {
                return null;
            } else {
                int i4 = (i + 1) & 1073741823;
                if (f66757e.compareAndSet(this, j, C20287a.m834a(j, i4))) {
                    this.f66759f.set(this.f66758c & i, null);
                    return obj;
                } else if (this.f66761h) {
                    C20286n<E> c20286n = this;
                    do {
                        m844a = c20286n.m844a(i, i4);
                        c20286n = m844a;
                    } while (m844a != null);
                    return obj;
                }
            }
        }
    }

    /* renamed from: d */
    public final C20286n<E> m837d() {
        return m842a(m836e());
    }
}
