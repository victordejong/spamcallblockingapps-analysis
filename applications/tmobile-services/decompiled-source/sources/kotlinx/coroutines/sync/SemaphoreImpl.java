package kotlinx.coroutines.sync;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CancellableContinuationKt;
import kotlinx.coroutines.DebugKt;
import kotlinx.coroutines.internal.ConcurrentLinkedListKt;
import kotlinx.coroutines.internal.ConcurrentLinkedListNode;
import kotlinx.coroutines.internal.Segment;
import kotlinx.coroutines.internal.SegmentOrClosed;
import kotlinx.coroutines.internal.Symbol;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\t\b\u0002\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010\u0014\u001a\u00020\u0010\u0012\u0006\u0010\u0016\u001a\u00020\u0010¢\u0006\u0004\b\u0017\u0010\u0018J\u0013\u0010\u0003\u001a\u00020\u0002H\u0096@ø\u0001��¢\u0006\u0004\b\u0003\u0010\u0004J\u0013\u0010\u0005\u001a\u00020\u0002H\u0082@ø\u0001��¢\u0006\u0004\b\u0005\u0010\u0004J\u001d\u0010\t\u001a\u00020\b2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\bH\u0002¢\u0006\u0004\b\u000f\u0010\u000eR\u0016\u0010\u0013\u001a\u00020\u00108V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0014\u001a\u00020\u00108\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0019"}, d2 = {"Lkotlinx/coroutines/sync/SemaphoreImpl;", "Lkotlinx/coroutines/sync/Semaphore;", "", "acquire", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "acquireSlowPath", "Lkotlinx/coroutines/CancellableContinuation;", "cont", "", "addAcquireToQueue", "(Lkotlinx/coroutines/CancellableContinuation;)Z", "release", "()V", "tryAcquire", "()Z", "tryResumeNextFromQueue", "", "getAvailablePermits", "()I", "availablePermits", "permits", "I", "acquiredPermits", "<init>", "(II)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/sync/SemaphoreImpl.class */
public final class SemaphoreImpl implements Semaphore {

    /* renamed from: b */
    private static final AtomicReferenceFieldUpdater f24084b = AtomicReferenceFieldUpdater.newUpdater(SemaphoreImpl.class, Object.class, "head");

    /* renamed from: c */
    private static final AtomicLongFieldUpdater f24085c = AtomicLongFieldUpdater.newUpdater(SemaphoreImpl.class, "deqIdx");

    /* renamed from: d */
    private static final AtomicReferenceFieldUpdater f24086d = AtomicReferenceFieldUpdater.newUpdater(SemaphoreImpl.class, Object.class, "tail");

    /* renamed from: e */
    private static final AtomicLongFieldUpdater f24087e = AtomicLongFieldUpdater.newUpdater(SemaphoreImpl.class, "enqIdx");

    /* renamed from: f */
    static final AtomicIntegerFieldUpdater f24088f = AtomicIntegerFieldUpdater.newUpdater(SemaphoreImpl.class, "_availablePermits");
    volatile int _availablePermits;

    /* renamed from: a */
    private final int f24089a;
    private volatile long deqIdx = 0;
    private volatile long enqIdx = 0;
    private volatile Object head;
    private volatile Object tail;

    public SemaphoreImpl(int i, int i2) {
        this.f24089a = i;
        boolean z = true;
        if (this.f24089a > 0) {
            int i3 = this.f24089a;
            if (i2 < 0 || i3 < i2) {
                z = false;
            }
            if (z) {
                SemaphoreSegment semaphoreSegment = new SemaphoreSegment(0L, null, 2);
                this.head = semaphoreSegment;
                this.tail = semaphoreSegment;
                this._availablePermits = this.f24089a - i2;
                return;
            }
            throw new IllegalArgumentException(("The number of acquired permits should be in 0.." + this.f24089a).toString());
        }
        throw new IllegalArgumentException(("Semaphore should have at least 1 permit, but had " + this.f24089a).toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public final boolean m266d(CancellableContinuation<? super Unit> cancellableContinuation) {
        int i;
        Object obj;
        int i2;
        Symbol symbol;
        Symbol symbol2;
        Symbol symbol3;
        boolean z;
        boolean z2;
        Symbol symbol4;
        Object obj2;
        SemaphoreSegment k;
        SemaphoreSegment semaphoreSegment = (SemaphoreSegment) this.tail;
        long andIncrement = f24087e.getAndIncrement(this);
        i = SemaphoreKt.f24095f;
        long j = andIncrement / i;
        do {
            while (true) {
                if (semaphoreSegment.m466m() >= j && !semaphoreSegment.mo468g()) {
                    SegmentOrClosed.m463a(semaphoreSegment);
                    obj = semaphoreSegment;
                    break;
                }
                Object e = semaphoreSegment.m573e();
                symbol4 = ConcurrentLinkedListKt.f23893a;
                if (e == symbol4) {
                    obj2 = ConcurrentLinkedListKt.f23893a;
                    SegmentOrClosed.m463a(obj2);
                    obj = obj2;
                    break;
                }
                semaphoreSegment = (Segment) ((ConcurrentLinkedListNode) e);
                if (semaphoreSegment == null) {
                    k = SemaphoreKt.m254k(semaphoreSegment.m466m() + 1, semaphoreSegment);
                    if (semaphoreSegment.m568k(k)) {
                        semaphoreSegment = k;
                        if (semaphoreSegment.mo468g()) {
                            semaphoreSegment.m569j();
                            semaphoreSegment = k;
                        }
                    }
                }
            }
            z = true;
            if (SegmentOrClosed.m459e(obj)) {
                break;
            }
            Segment c = SegmentOrClosed.m461c(obj);
            while (true) {
                Segment segment = (Segment) this.tail;
                if (segment.m466m() >= c.m466m()) {
                    break;
                } else if (!c.m464p()) {
                    z2 = false;
                    break;
                } else if (f24086d.compareAndSet(this, segment, c)) {
                    if (segment.m467l()) {
                        segment.m569j();
                    }
                } else if (c.m467l()) {
                    c.m569j();
                }
            }
            z2 = true;
        } while (!z2);
        SemaphoreSegment semaphoreSegment2 = (SemaphoreSegment) SegmentOrClosed.m461c(obj);
        i2 = SemaphoreKt.f24095f;
        int i3 = (int) (andIncrement % i2);
        if (semaphoreSegment2.f24100e.compareAndSet(i3, null, cancellableContinuation)) {
            cancellableContinuation.mo1351p(new CancelSemaphoreAcquisitionHandler(semaphoreSegment2, i3));
            return true;
        }
        symbol = SemaphoreKt.f24091b;
        symbol2 = SemaphoreKt.f24092c;
        if (semaphoreSegment2.f24100e.compareAndSet(i3, symbol, symbol2)) {
            Unit unit = Unit.f20447a;
            Result.Companion companion = Result.f20418g;
            Result.m2481b(unit);
            cancellableContinuation.resumeWith(unit);
            return true;
        } else if (!DebugKt.m1308a()) {
            return false;
        } else {
            Object obj3 = semaphoreSegment2.f24100e.get(i3);
            symbol3 = SemaphoreKt.f24093d;
            if (obj3 != symbol3) {
                z = false;
            }
            if (z) {
                return false;
            }
            throw new AssertionError();
        }
    }

    /* renamed from: e */
    private final boolean m265e() {
        int i;
        Object obj;
        int i2;
        Symbol symbol;
        Symbol symbol2;
        boolean l;
        int i3;
        int i4;
        Symbol symbol3;
        Symbol symbol4;
        Symbol symbol5;
        boolean z;
        Symbol symbol6;
        Object obj2;
        SemaphoreSegment k;
        SemaphoreSegment semaphoreSegment = (SemaphoreSegment) this.head;
        long andIncrement = f24085c.getAndIncrement(this);
        i = SemaphoreKt.f24095f;
        long j = andIncrement / i;
        do {
            while (true) {
                if (semaphoreSegment.m466m() >= j && !semaphoreSegment.mo468g()) {
                    SegmentOrClosed.m463a(semaphoreSegment);
                    obj = semaphoreSegment;
                    break;
                }
                Object e = semaphoreSegment.m573e();
                symbol6 = ConcurrentLinkedListKt.f23893a;
                if (e == symbol6) {
                    obj2 = ConcurrentLinkedListKt.f23893a;
                    SegmentOrClosed.m463a(obj2);
                    obj = obj2;
                    break;
                }
                semaphoreSegment = (Segment) ((ConcurrentLinkedListNode) e);
                if (semaphoreSegment == null) {
                    k = SemaphoreKt.m254k(semaphoreSegment.m466m() + 1, semaphoreSegment);
                    if (semaphoreSegment.m568k(k)) {
                        semaphoreSegment = k;
                        if (semaphoreSegment.mo468g()) {
                            semaphoreSegment.m569j();
                            semaphoreSegment = k;
                        }
                    }
                }
            }
            if (SegmentOrClosed.m459e(obj)) {
                break;
            }
            Segment c = SegmentOrClosed.m461c(obj);
            while (true) {
                Segment segment = (Segment) this.head;
                if (segment.m466m() >= c.m466m()) {
                    break;
                } else if (!c.m464p()) {
                    z = false;
                    break;
                } else if (f24084b.compareAndSet(this, segment, c)) {
                    if (segment.m467l()) {
                        segment.m569j();
                    }
                } else if (c.m467l()) {
                    c.m569j();
                }
            }
            z = true;
        } while (!z);
        SemaphoreSegment semaphoreSegment2 = (SemaphoreSegment) SegmentOrClosed.m461c(obj);
        semaphoreSegment2.m576b();
        if (semaphoreSegment2.m466m() > j) {
            return false;
        }
        i2 = SemaphoreKt.f24095f;
        int i5 = (int) (andIncrement % i2);
        symbol = SemaphoreKt.f24091b;
        Object andSet = semaphoreSegment2.f24100e.getAndSet(i5, symbol);
        if (andSet == null) {
            i3 = SemaphoreKt.f24090a;
            for (i4 = 0; i4 < i3; i4++) {
                Object obj3 = semaphoreSegment2.f24100e.get(i5);
                symbol5 = SemaphoreKt.f24092c;
                if (obj3 == symbol5) {
                    return true;
                }
            }
            symbol3 = SemaphoreKt.f24091b;
            symbol4 = SemaphoreKt.f24093d;
            return !semaphoreSegment2.f24100e.compareAndSet(i5, symbol3, symbol4);
        }
        symbol2 = SemaphoreKt.f24094e;
        if (andSet == symbol2) {
            return false;
        }
        l = SemaphoreKt.m253l((CancellableContinuation) andSet);
        return l;
    }

    @Override // kotlinx.coroutines.sync.Semaphore
    @Nullable
    /* renamed from: a */
    public Object mo269a(@NotNull Continuation<? super Unit> continuation) {
        Object d;
        if (f24088f.getAndDecrement(this) > 0) {
            return Unit.f20447a;
        }
        Object c = m267c(continuation);
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        return c == d ? c : Unit.f20447a;
    }

    @Nullable
    /* renamed from: c */
    final /* synthetic */ Object m267c(@NotNull Continuation<? super Unit> continuation) {
        Continuation c;
        Object d;
        c = IntrinsicsKt__IntrinsicsJvmKt.m1921c(continuation);
        CancellableContinuationImpl b = CancellableContinuationKt.m1339b(c);
        while (true) {
            if (!m266d(b)) {
                if (f24088f.getAndDecrement(this) > 0) {
                    Unit unit = Unit.f20447a;
                    Result.Companion companion = Result.f20418g;
                    Result.m2481b(unit);
                    b.resumeWith(unit);
                    break;
                }
            } else {
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

    @Override // kotlinx.coroutines.sync.Semaphore
    public void release() {
        while (true) {
            int i = this._availablePermits;
            if (!(i < this.f24089a)) {
                throw new IllegalStateException(("The number of released permits cannot be greater than " + this.f24089a).toString());
            } else if (f24088f.compareAndSet(this, i, i + 1) && (i >= 0 || m265e())) {
                return;
            }
        }
    }
}
