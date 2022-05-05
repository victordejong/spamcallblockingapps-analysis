package kotlinx.coroutines.sync;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import kotlin.Metadata;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.internal.SegmentQueue;
import kotlinx.coroutines.internal.Symbol;
import p626l.C14979k;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\b\u0002\u0018��2\u00020\u001d2\b\u0012\u0004\u0012\u00020\u000e0\u001eB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0001¢\u0006\u0004\b\u0004\u0010\u0005J\u0013\u0010\u0007\u001a\u00020\u0006H\u0096@ø\u0001��¢\u0006\u0004\b\u0007\u0010\bJ\u0013\u0010\t\u001a\u00020\u0006H\u0082@ø\u0001��¢\u0006\u0004\b\t\u0010\bJ\r\u0010\n\u001a\u00020\u0001¢\u0006\u0004\b\n\u0010\u000bJ!\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\f2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0006H��¢\u0006\u0004\b\u0014\u0010\u0013J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0017\u0010\u0018R\u0016\u0010\u001a\u001a\u00020\u00018V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u000bR\u0016\u0010\u0002\u001a\u00020\u00018\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0002\u0010\u001b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001c"}, m815d2 = {"Lkotlinx/coroutines/sync/SemaphoreImpl;", "", "permits", "acquiredPermits", "<init>", "(II)V", "", "acquire", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "addToQueueAndSuspend", "incPermits", "()I", "", "id", "Lkotlinx/coroutines/sync/SemaphoreSegment;", "prev", "newSegment", "(JLkotlinx/coroutines/sync/SemaphoreSegment;)Lkotlinx/coroutines/sync/SemaphoreSegment;", "release", "()V", "resumeNextFromQueue$kotlinx_coroutines_core", "resumeNextFromQueue", "", "tryAcquire", "()Z", "getAvailablePermits", "availablePermits", "I", "kotlinx-coroutines-core", "Lkotlinx/coroutines/sync/Semaphore;", "Lkotlinx/coroutines/internal/SegmentQueue;"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/sync/SemaphoreImpl.class */
public final class SemaphoreImpl extends SegmentQueue<SemaphoreSegment> implements Semaphore {
    public volatile int _availablePermits;
    public volatile long deqIdx;
    public volatile long enqIdx;
    public final int permits;
    public static final AtomicIntegerFieldUpdater _availablePermits$FU = AtomicIntegerFieldUpdater.newUpdater(SemaphoreImpl.class, "_availablePermits");
    public static final AtomicLongFieldUpdater enqIdx$FU = AtomicLongFieldUpdater.newUpdater(SemaphoreImpl.class, "enqIdx");
    public static final AtomicLongFieldUpdater deqIdx$FU = AtomicLongFieldUpdater.newUpdater(SemaphoreImpl.class, "deqIdx");

    public SemaphoreImpl(int i, int i2) {
        this.permits = i;
        boolean z = true;
        if (this.permits > 0) {
            int i3 = this.permits;
            if (i2 < 0 || i3 < i2) {
                z = false;
            }
            if (z) {
                this._availablePermits = this.permits - i2;
                this.enqIdx = 0L;
                this.deqIdx = 0L;
                return;
            }
            throw new IllegalArgumentException(("The number of acquired permits should be in 0.." + this.permits).toString());
        }
        throw new IllegalArgumentException(("Semaphore should have at least 1 permit, but had " + this.permits).toString());
    }

    public static final /* synthetic */ SemaphoreSegment access$getSegment(SemaphoreImpl semaphoreImpl, SemaphoreSegment semaphoreSegment, long j) {
        return semaphoreImpl.getSegment(semaphoreSegment, j);
    }

    public static final /* synthetic */ SemaphoreSegment access$getTail$p(SemaphoreImpl semaphoreImpl) {
        return semaphoreImpl.getTail();
    }

    @Override // kotlinx.coroutines.sync.Semaphore
    public Object acquire(AbstractC15044d<? super C14989s> dVar) {
        Object addToQueueAndSuspend;
        if (_availablePermits$FU.getAndDecrement(this) <= 0 && (addToQueueAndSuspend = addToQueueAndSuspend(dVar)) == C15064c.m478a()) {
            return addToQueueAndSuspend;
        }
        return C14989s.f33022a;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0086  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object addToQueueAndSuspend(p626l.p634w.AbstractC15044d<? super p626l.C14989s> r8) {
        /*
            r7 = this;
            r0 = r8
            l.w.d r0 = p626l.p634w.p635j.C15059b.m481a(r0)
            kotlinx.coroutines.CancellableContinuationImpl r0 = kotlinx.coroutines.CancellableContinuationKt.getOrCreateCancellableContinuation(r0)
            r9 = r0
            r0 = r7
            kotlinx.coroutines.sync.SemaphoreSegment r0 = access$getTail$p(r0)
            r10 = r0
            java.util.concurrent.atomic.AtomicLongFieldUpdater r0 = kotlinx.coroutines.sync.SemaphoreImpl.enqIdx$FU
            r1 = r7
            long r0 = r0.getAndIncrement(r1)
            r11 = r0
            r0 = r7
            r1 = r10
            r2 = r11
            int r3 = kotlinx.coroutines.sync.SemaphoreKt.access$getSEGMENT_SIZE$p()
            long r3 = (long) r3
            long r2 = r2 / r3
            kotlinx.coroutines.sync.SemaphoreSegment r0 = access$getSegment(r0, r1, r2)
            r10 = r0
            r0 = r11
            int r1 = kotlinx.coroutines.sync.SemaphoreKt.access$getSEGMENT_SIZE$p()
            long r1 = (long) r1
            long r0 = r0 % r1
            int r0 = (int) r0
            r13 = r0
            r0 = r10
            if (r0 == 0) goto L_0x0065
            r0 = r10
            java.util.concurrent.atomic.AtomicReferenceArray r0 = r0.acquirers
            r1 = r13
            java.lang.Object r0 = r0.get(r1)
            kotlinx.coroutines.internal.Symbol r1 = kotlinx.coroutines.sync.SemaphoreKt.access$getRESUMED$p()
            if (r0 == r1) goto L_0x0065
            r0 = r10
            java.util.concurrent.atomic.AtomicReferenceArray r0 = r0.acquirers
            r1 = r13
            r2 = 0
            r3 = r9
            boolean r0 = r0.compareAndSet(r1, r2, r3)
            if (r0 != 0) goto L_0x0051
            goto L_0x0065
        L_0x0051:
            r0 = r9
            kotlinx.coroutines.sync.CancelSemaphoreAcquisitionHandler r1 = new kotlinx.coroutines.sync.CancelSemaphoreAcquisitionHandler
            r2 = r1
            r3 = r7
            r4 = r10
            r5 = r13
            r2.<init>(r3, r4, r5)
            r0.invokeOnCancellation(r1)
            goto L_0x007a
        L_0x0065:
            l.s r0 = p626l.C14989s.f33022a
            r10 = r0
            l.k$a r0 = p626l.C14979k.f33013a
            r14 = r0
            r0 = r10
            java.lang.Object r0 = p626l.C14979k.m657a(r0)
            r0 = r9
            r1 = r10
            r0.resumeWith(r1)
        L_0x007a:
            r0 = r9
            java.lang.Object r0 = r0.getResult()
            r9 = r0
            r0 = r9
            java.lang.Object r1 = p626l.p634w.p635j.C15064c.m478a()
            if (r0 != r1) goto L_0x008a
            r0 = r8
            p626l.p634w.p636k.p637a.C15072h.m462c(r0)
        L_0x008a:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.sync.SemaphoreImpl.addToQueueAndSuspend(l.w.d):java.lang.Object");
    }

    @Override // kotlinx.coroutines.sync.Semaphore
    public int getAvailablePermits() {
        return Math.max(this._availablePermits, 0);
    }

    public final int incPermits() {
        int i;
        do {
            i = this._availablePermits;
            if (!(i < this.permits)) {
                throw new IllegalStateException(("The number of released permits cannot be greater than " + this.permits).toString());
            }
        } while (!_availablePermits$FU.compareAndSet(this, i, i + 1));
        return i;
    }

    public SemaphoreSegment newSegment(long j, SemaphoreSegment semaphoreSegment) {
        return new SemaphoreSegment(j, semaphoreSegment);
    }

    @Override // kotlinx.coroutines.sync.Semaphore
    public void release() {
        if (incPermits() < 0) {
            resumeNextFromQueue$kotlinx_coroutines_core();
        }
    }

    public final void resumeNextFromQueue$kotlinx_coroutines_core() {
        int i;
        int i2;
        Symbol symbol;
        Symbol symbol2;
        while (true) {
            SemaphoreSegment head = getHead();
            long andIncrement = deqIdx$FU.getAndIncrement(this);
            i = SemaphoreKt.SEGMENT_SIZE;
            SemaphoreSegment segmentAndMoveHead = getSegmentAndMoveHead(head, andIncrement / i);
            if (segmentAndMoveHead != null) {
                i2 = SemaphoreKt.SEGMENT_SIZE;
                int i3 = (int) (andIncrement % i2);
                symbol = SemaphoreKt.RESUMED;
                Object andSet = segmentAndMoveHead.acquirers.getAndSet(i3, symbol);
                if (andSet != null) {
                    symbol2 = SemaphoreKt.CANCELLED;
                    if (andSet != symbol2) {
                        CancellableContinuation cancellableContinuation = (CancellableContinuation) andSet;
                        C14989s sVar = C14989s.f33022a;
                        C14979k.C14980a aVar = C14979k.f33013a;
                        C14979k.m657a(sVar);
                        cancellableContinuation.resumeWith(sVar);
                        return;
                    }
                } else {
                    return;
                }
            }
        }
    }

    @Override // kotlinx.coroutines.sync.Semaphore
    public boolean tryAcquire() {
        int i;
        do {
            i = this._availablePermits;
            if (i <= 0) {
                return false;
            }
        } while (!_availablePermits$FU.compareAndSet(this, i, i - 1));
        return true;
    }
}
