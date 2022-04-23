package c;

import io.objectbox.model.PropertyFlags;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\bÀ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u000eH\u0002J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0006H\u0007J\b\u0010\u0014\u001a\u00020\u0006H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0007\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\b\u0010\tR\u0011\u0010\n\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u000b\u0010\tR\u001e\u0010\f\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u000e0\rX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000f¨\u0006\u0015"}, d2 = {"Lokio/SegmentPool;", "", "()V", "HASH_BUCKET_COUNT", "", "LOCK", "Lokio/Segment;", "MAX_SIZE", "getMAX_SIZE", "()I", "byteCount", "getByteCount", "hashBuckets", "", "Ljava/util/concurrent/atomic/AtomicReference;", "[Ljava/util/concurrent/atomic/AtomicReference;", "firstRef", "recycle", "", "segment", "take", "okio"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:c/z.class */
public final class z {

    /* renamed from: a  reason: collision with root package name */
    public static final z f6343a = new z();

    /* renamed from: b  reason: collision with root package name */
    private static final int f6344b = 65536;

    /* renamed from: c  reason: collision with root package name */
    private static final y f6345c = new y(new byte[0], 0, 0, false, false);

    /* renamed from: d  reason: collision with root package name */
    private static final int f6346d;
    private static final AtomicReference<y>[] e;

    static {
        int highestOneBit = Integer.highestOneBit((Runtime.getRuntime().availableProcessors() * 2) - 1);
        f6346d = highestOneBit;
        AtomicReference<y>[] atomicReferenceArr = new AtomicReference[highestOneBit];
        for (int i = 0; i < highestOneBit; i++) {
            atomicReferenceArr[i] = new AtomicReference<>();
        }
        e = atomicReferenceArr;
    }

    private z() {
    }

    public static final y a() {
        AtomicReference<y> b2 = b();
        y yVar = f6345c;
        y andSet = b2.getAndSet(yVar);
        if (andSet == yVar) {
            return new y();
        }
        if (andSet == null) {
            b2.set(null);
            return new y();
        }
        b2.set(andSet.f);
        andSet.f = null;
        andSet.f6341c = 0;
        return andSet;
    }

    public static final void a(y segment) {
        AtomicReference<y> b2;
        y yVar;
        p.d(segment, "segment");
        if (!(segment.f == null && segment.g == null)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        } else if (!segment.f6342d && (yVar = (b2 = b()).get()) != f6345c) {
            int i = yVar != null ? yVar.f6341c : 0;
            if (i < f6344b) {
                segment.f = yVar;
                segment.f6340b = 0;
                segment.f6341c = i + PropertyFlags.UNSIGNED;
                if (!b2.compareAndSet(yVar, segment)) {
                    segment.f = null;
                }
            }
        }
    }

    private static AtomicReference<y> b() {
        Thread currentThread = Thread.currentThread();
        p.b(currentThread, "Thread.currentThread()");
        return e[(int) (currentThread.getId() & (f6346d - 1))];
    }
}
