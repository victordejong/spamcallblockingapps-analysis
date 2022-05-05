package kotlinx.coroutines.internal;

import androidx.exifinterface.media.ExifInterface;
import androidx.media2.exoplayer.external.text.ttml.TtmlNode;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlinx.coroutines.internal.Segment;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\f\n\u0002\u0010��\b \u0018��*\u000e\b��\u0010\u0002*\b\u0012\u0004\u0012\u00028��0\u00012\u00020\u0019B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J!\u0010\b\u001a\u0004\u0018\u00018��2\u0006\u0010\u0005\u001a\u00028��2\u0006\u0010\u0007\u001a\u00020\u0006H\u0004¢\u0006\u0004\b\b\u0010\tJ!\u0010\n\u001a\u0004\u0018\u00018��2\u0006\u0010\u0005\u001a\u00028��2\u0006\u0010\u0007\u001a\u00020\u0006H\u0004¢\u0006\u0004\b\n\u0010\tJ\u0017\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00028��H\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u000f\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00028��H\u0002¢\u0006\u0004\b\u000f\u0010\u000eJ#\u0010\u0011\u001a\u00028��2\u0006\u0010\u0007\u001a\u00020\u00062\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00018��H&¢\u0006\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0015\u001a\u00028��8D@\u0004X\u0084\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0017\u001a\u00028��8D@\u0004X\u0084\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0014¨\u0006\u0018"}, m815d2 = {"Lkotlinx/coroutines/internal/SegmentQueue;", "Lkotlinx/coroutines/internal/Segment;", ExifInterface.LATITUDE_SOUTH, "<init>", "()V", "startFrom", "", "id", "getSegment", "(Lkotlinx/coroutines/internal/Segment;J)Lkotlinx/coroutines/internal/Segment;", "getSegmentAndMoveHead", "new", "", "moveHeadForward", "(Lkotlinx/coroutines/internal/Segment;)V", "moveTailForward", "prev", "newSegment", "(JLkotlinx/coroutines/internal/Segment;)Lkotlinx/coroutines/internal/Segment;", "getHead", "()Lkotlinx/coroutines/internal/Segment;", TtmlNode.TAG_HEAD, "getTail", "tail", "kotlinx-coroutines-core", ""}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/internal/SegmentQueue.class */
public abstract class SegmentQueue<S extends Segment<S>> {
    public static final AtomicReferenceFieldUpdater _head$FU = AtomicReferenceFieldUpdater.newUpdater(SegmentQueue.class, Object.class, "_head");
    public static final AtomicReferenceFieldUpdater _tail$FU = AtomicReferenceFieldUpdater.newUpdater(SegmentQueue.class, Object.class, "_tail");
    public volatile Object _head;
    public volatile Object _tail;

    public SegmentQueue() {
        Segment newSegment$default = newSegment$default(this, 0L, null, 2, null);
        this._head = newSegment$default;
        this._tail = newSegment$default;
    }

    private final void moveHeadForward(S s) {
        Segment segment;
        do {
            segment = (Segment) this._head;
            if (segment.getId() > s.getId()) {
                return;
            }
        } while (!_head$FU.compareAndSet(this, segment, s));
        s.prev = null;
    }

    private final void moveTailForward(S s) {
        Segment segment;
        do {
            segment = (Segment) this._tail;
            if (segment.getId() > s.getId()) {
                return;
            }
        } while (!_tail$FU.compareAndSet(this, segment, s));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Segment newSegment$default(SegmentQueue segmentQueue, long j, Segment segment, int i, Object obj) {
        if (obj == null) {
            if ((i & 2) != 0) {
                segment = null;
            }
            return segmentQueue.newSegment(j, segment);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: newSegment");
    }

    public final S getHead() {
        return (S) ((Segment) this._head);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [kotlinx.coroutines.internal.Segment] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final S getSegment(S r7, long r8) {
        /*
            r6 = this;
            r0 = r7
            r10 = r0
        L_0x0003:
            r0 = r10
            long r0 = r0.getId()
            r1 = r8
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0061
            r0 = r10
            kotlinx.coroutines.internal.Segment r0 = r0.getNext()
            r11 = r0
            r0 = r11
            r7 = r0
            r0 = r11
            if (r0 != 0) goto L_0x005b
            r0 = r6
            r1 = r10
            long r1 = r1.getId()
            r2 = 1
            long r1 = r1 + r2
            r2 = r10
            kotlinx.coroutines.internal.Segment r0 = r0.newSegment(r1, r2)
            r7 = r0
            r0 = r10
            r1 = 0
            r2 = r7
            boolean r0 = r0.casNext(r1, r2)
            if (r0 == 0) goto L_0x0049
            r0 = r10
            boolean r0 = r0.getRemoved()
            if (r0 == 0) goto L_0x0041
            r0 = r10
            r0.remove()
        L_0x0041:
            r0 = r6
            r1 = r7
            r0.moveTailForward(r1)
            goto L_0x0053
        L_0x0049:
            r0 = r10
            kotlinx.coroutines.internal.Segment r0 = r0.getNext()
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0056
        L_0x0053:
            goto L_0x005b
        L_0x0056:
            p626l.p641z.p643d.C15149k.m378b()
            r0 = 0
            throw r0
        L_0x005b:
            r0 = r7
            r10 = r0
            goto L_0x0003
        L_0x0061:
            r0 = r10
            long r0 = r0.getId()
            r1 = r8
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x006d
            r0 = 0
            return r0
        L_0x006d:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.SegmentQueue.getSegment(kotlinx.coroutines.internal.Segment, long):kotlinx.coroutines.internal.Segment");
    }

    public final S getSegmentAndMoveHead(S s, long j) {
        if (s.getId() == j) {
            return s;
        }
        S segment = getSegment(s, j);
        if (segment == null) {
            return null;
        }
        moveHeadForward(segment);
        return segment;
    }

    public final S getTail() {
        return (S) ((Segment) this._tail);
    }

    public abstract S newSegment(long j, S s);
}
