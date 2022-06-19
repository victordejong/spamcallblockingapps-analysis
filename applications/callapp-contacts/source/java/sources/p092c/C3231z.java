package p092c;

import io.objectbox.model.PropertyFlags;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\bÀ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u000eH\u0002J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0006H\u0007J\b\u0010\u0014\u001a\u00020\u0006H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0007\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\b\u0010\tR\u0011\u0010\n\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u000b\u0010\tR\u001e\u0010\f\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u000e0\rX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000f¨\u0006\u0015"}, m4298d2 = {"Lokio/SegmentPool;", "", "()V", "HASH_BUCKET_COUNT", "", "LOCK", "Lokio/Segment;", "MAX_SIZE", "getMAX_SIZE", "()I", "byteCount", "getByteCount", "hashBuckets", "", "Ljava/util/concurrent/atomic/AtomicReference;", "[Ljava/util/concurrent/atomic/AtomicReference;", "firstRef", "recycle", "", "segment", "take", "okio"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: c.z */
/* loaded from: classes-dex2jar.jar:c/z.class */
public final class C3231z {

    /* renamed from: a */
    public static final C3231z f11641a = new C3231z();

    /* renamed from: b */
    private static final int f11642b = 65536;

    /* renamed from: c */
    private static final C3229y f11643c = new C3229y(new byte[0], 0, 0, false, false);

    /* renamed from: d */
    private static final int f11644d;

    /* renamed from: e */
    private static final AtomicReference<C3229y>[] f11645e;

    static {
        int highestOneBit = Integer.highestOneBit((Runtime.getRuntime().availableProcessors() * 2) - 1);
        f11644d = highestOneBit;
        AtomicReference<C3229y>[] atomicReferenceArr = new AtomicReference[highestOneBit];
        for (int i = 0; i < highestOneBit; i++) {
            atomicReferenceArr[i] = new AtomicReference<>();
        }
        f11645e = atomicReferenceArr;
    }

    private C3231z() {
    }

    /* renamed from: a */
    public static final C3229y m39099a() {
        AtomicReference<C3229y> m39097b = m39097b();
        C3229y c3229y = f11643c;
        C3229y andSet = m39097b.getAndSet(c3229y);
        if (andSet == c3229y) {
            return new C3229y();
        }
        if (andSet == null) {
            m39097b.set(null);
            return new C3229y();
        }
        m39097b.set(andSet.f11639f);
        andSet.f11639f = null;
        andSet.f11636c = 0;
        return andSet;
    }

    /* renamed from: a */
    public static final void m39098a(C3229y segment) {
        AtomicReference<C3229y> m39097b;
        C3229y c3229y;
        C18524p.m3840d(segment, "segment");
        if (segment.f11639f == null && segment.f11640g == null) {
            if (segment.f11637d || (c3229y = (m39097b = m39097b()).get()) == f11643c) {
                return;
            }
            int i = c3229y != null ? c3229y.f11636c : 0;
            if (i >= f11642b) {
                return;
            }
            segment.f11639f = c3229y;
            segment.f11635b = 0;
            segment.f11636c = i + PropertyFlags.UNSIGNED;
            if (m39097b.compareAndSet(c3229y, segment)) {
                return;
            }
            segment.f11639f = null;
            return;
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }

    /* renamed from: b */
    private static AtomicReference<C3229y> m39097b() {
        Thread currentThread = Thread.currentThread();
        C18524p.m3843b(currentThread, "Thread.currentThread()");
        return f11645e[(int) (currentThread.getId() & (f11644d - 1))];
    }
}
